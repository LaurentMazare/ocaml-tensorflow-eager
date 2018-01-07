open Base
module T = Op.Tensor_handle
module Type = Tf_core.Operation.Type

let extract : type a . T.p -> a Type.t -> a T.t option = fun p type_ ->
  let T.P t = p in
  match T.type_ t, type_ with
  | Type.Unit, Type.Unit -> Some t
  | Type.Int32, Type.Int32 -> Some t
  | Type.Int64, Type.Int64 -> Some t
  | Type.Bool, Type.Bool -> Some t
  | Type.String, Type.String -> Some t
  | Type.Complex64, Type.Complex64 -> Some t
  | Type.Float, Type.Float -> Some t
  | Type.Double, Type.Double -> Some t
  | _, _ -> None

module Registered_gradients = struct
  let table = Hashtbl.create (module Op.Name) ()

  type t =
    { f : 'a .
            (  self:([< `float | `double] as 'a) T.t
            -> gradient:'a T.t
            -> T.p option list)
    }

  let add op t =
    let f ~self:(T.P self) ~gradient:(T.P gradient) =
      match T.type_ self, T.type_ gradient with
      | Type.Double, Type.Double -> t.f ~self ~gradient
      | Type.Float, Type.Float -> t.f ~self ~gradient
      | _, _ ->
        Printf.failwithf "Inconsistent types %s" (Op.Name.to_string op) ()
    in
    Hashtbl.set table ~key:op ~data:f

  let find = Hashtbl.find table

  let table_multi = Hashtbl.create (module Op.Name) ()

  type multi =
    { g : 'a .
            (  self:([< `float | `double] as 'a) T.t
            -> gradients:'a T.t Map.M(Int).t
            -> T.p option list)
    }

  let add_multi op t =
    let f ~self:(T.P self) ~gradients =
      match T.type_ self with
      | Type.Double ->
        let gradients =
          Map.map gradients ~f:(fun gradient ->
            Option.value_exn (extract gradient Double))
        in
        t.g ~self ~gradients
      | Type.Float ->
        let gradients =
          Map.map gradients ~f:(fun gradient ->
            Option.value_exn (extract gradient Float))
        in
        t.g ~self ~gradients
      | _ ->
        Printf.failwithf "Inconsistent types %s" (Op.Name.to_string op) ()
    in
    Hashtbl.set table_multi ~key:op ~data:f

  let find_multi = Hashtbl.find table_multi
end

module Ops_gradients = struct
  let inputs_exn th =
    match T.tape_info th with
    | `none | `leaf -> assert false
    | `node tape_info -> Op.Tape_info.inputs tape_info

  let shape32 th = Ops.shape th ~type_out_type:Int32

  let all = List.map ~f:Option.some

  let binary_extract_exn : type a . a T.t -> (a T.t * a T.t) = fun th ->
    let T.P lhs, T.P rhs =
      match inputs_exn th with
      | [ lhs; rhs ] -> lhs, rhs
      | _ -> failwith "Not a binary function"
    in
    match T.type_ lhs, T.type_ rhs, T.type_ th with
    | Type.Double, Type.Double, Type.Double -> lhs, rhs
    | Type.Float, Type.Float, Type.Float -> lhs, rhs
    | _ -> failwith "Inconsistent types"

  let add_gradient_ ~self ~gradient =
    let lhs, rhs = binary_extract_exn self in
    let shape_lhs = shape32 lhs in
    let shape_rhs = shape32 rhs in
    let rlhs, rrhs = Ops.broadcastGradientArgs shape_lhs shape_rhs in
    let lhs = Ops.reshape (Ops.sum gradient rlhs) shape_lhs in
    let rhs = Ops.reshape (Ops.sum gradient rrhs) shape_rhs in
    lhs, rhs

  let add_gradient ~self ~gradient =
    let lhs, rhs = add_gradient_ ~self ~gradient in
    all [ T.P lhs; T.P rhs ]

  let sub_gradient ~self ~gradient =
    let lhs, rhs = add_gradient_ ~self ~gradient in
    all [ T.P lhs; T.P (Ops.neg rhs) ]

  let mul_gradient ~self ~gradient =
    let lhs, rhs = binary_extract_exn self in
    let shape_lhs = shape32 lhs in
    let shape_rhs = shape32 rhs in
    let rlhs, rrhs = Ops.broadcastGradientArgs shape_lhs shape_rhs in
    let lhs_gradient = Ops.reshape (Ops.sum Ops.(gradient * rhs) rlhs) shape_lhs in
    let rhs_gradient = Ops.reshape (Ops.sum Ops.(lhs * gradient) rrhs) shape_rhs in
    all [ T.P lhs_gradient; T.P rhs_gradient ]

  let () =
    Registered_gradients.add Ops.Op_names.add { f = add_gradient };
    Registered_gradients.add Ops.Op_names.sub { f = sub_gradient };
    Registered_gradients.add Ops.Op_names.mul { f = mul_gradient }
end

exception No_derivative_for_op of Op.Name.t

(* Return a table mapping 'useful node' names to the number of times they
   appear as input of other useful nodes.
   Nodes are useful in they are on a path between [node] and a leaf
   that contains only float/double nodes.
*)
let uses_per_id th =
  let uses_per_id = Hashtbl.create (module T.Id) () in
  let rec is_useful (T.P th) =
    let id = T.id th in
    let is_real =
      match T.type_ th with
      | Type.Float -> true
      | Type.Double -> true
      | _ -> false
    in
    let current_uses = Hashtbl.find uses_per_id id |> Option.value ~default:0 in
    if not is_real
    then false
    else
      match T.tape_info th with
      | `none -> false
      | `leaf ->
        Hashtbl.set uses_per_id ~key:id ~data:(1 + current_uses);
        true
      | `node tape_info ->
        let inputs = Op.Tape_info.inputs tape_info in
        (* The [is_useful] function should be applied recursively to children only once.
           It should also apply to all children, hence the List.map ... |> List.exists below.
        *)
        let is_useful =
          (  current_uses > 0
          || List.map inputs ~f:is_useful |> List.exists ~f:Fn.id)
        in
        if is_useful
        then begin
          Hashtbl.set uses_per_id ~key:id ~data:(1 + current_uses)
        end;
        is_useful
  in
  ignore (is_useful th : bool);
  uses_per_id

let aggregate_contributions = function
  | [] -> assert false
  | [ input ] -> input
  | (T.P input :: _) as inputs ->
    let type_ = T.type_ input in
    let inputs =
      List.map inputs ~f:(fun input -> Option.value_exn (extract input type_))
    in
    match type_ with
    | Type.Double -> T.P (Ops.addN inputs)
    | Type.Float -> T.P (Ops.addN inputs)
    | _ -> failwith "Improper type."

let aggregate_contributions_multi gradients =
  List.map gradients ~f:(fun (output_idx, gradient) ->
    Option.value_exn output_idx, gradient)
  |> Map.of_alist_multi (module Int)
  |> Map.map ~f:aggregate_contributions

let ones_like (type a) (th : a T.t) =
    let shape_as v = T.P (Ops.fill (Ops.shape th ~type_out_type:Int32) v) in
    match T.type_ th with
    | Type.Float -> Ops.f32 1. |> shape_as
    | Type.Double -> Ops.f64 1. |> shape_as
    | _ -> assert false

(* Compute the gradients of [th] with respect to leafs using backpropagation.
   This only works when [th] is a scalar. *)
let compute th =
  let uses_per_id = uses_per_id (T.P th) in
  let contributions = Hashtbl.create (module T.Id) () in
  let output_gradients = Hashtbl.create (module T.Id) () in
  let rec add_contribution (T.P th) ~gradient =
    let id = T.id th in
    match Hashtbl.find uses_per_id id with
    | None -> ()
    | Some uses ->
      assert (uses > 0);
      Option.iter gradient ~f:(fun gradient ->
        let output_idx =
          match T.tape_info th with
          | `none | `leaf -> None
          | `node tape_info -> Op.Tape_info.output_idx tape_info
        in
        Hashtbl.add_multi contributions ~key:id ~data:(output_idx, gradient));
      let uses = uses - 1 in
      Hashtbl.set uses_per_id ~key:id ~data:uses;
      if uses = 0
      then begin
        let gradients = Hashtbl.find contributions id in
        match T.tape_info th with
        | `none -> ()
        | `leaf ->
          Option.iter gradients ~f:(fun gradients ->
            let gradient = List.map gradients ~f:snd |> aggregate_contributions in
            Hashtbl.add_exn output_gradients ~key:id ~data:gradient)
        | `node tape_info ->
          let op_name = Op.Tape_info.op_name tape_info in
          let inputs = Op.Tape_info.inputs tape_info in
          match gradients with
          | None ->
            List.iter inputs ~f:(add_contribution ~gradient:None)
          | Some gradients ->
            match Registered_gradients.find op_name with
            | None ->
              begin
                match Registered_gradients.find_multi op_name with
                | None -> raise (No_derivative_for_op op_name)
                | Some fn ->
                  let gradients = aggregate_contributions_multi gradients in
                  try
                    List.iter2_exn (fn ~self:(T.P th) ~gradients) inputs
                      ~f:(fun gradient input -> add_contribution input ~gradient)
                  with
                  | exn -> Exn.reraise exn (Op.Name.to_string op_name)
              end
            | Some fn ->
              try
                let gradients = List.map gradients ~f:snd in
                List.iter2_exn
                  (fn ~self:(T.P th) ~gradient:(aggregate_contributions gradients))
                  inputs
                  ~f:(fun gradient input -> add_contribution input ~gradient)
              with
              | exn -> Exn.reraise exn (Op.Name.to_string op_name)
      end
  in
  let one = ones_like th in
  add_contribution (P th) ~gradient:(Some one);
  output_gradients
