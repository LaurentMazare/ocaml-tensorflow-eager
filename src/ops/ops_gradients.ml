open Base
module T = Op.Tensor_handle
module Type = Tf_core.Operation.Type

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
          Option.value_exn (T.unpack gradient Double))
      in
      t.g ~self ~gradients
    | Type.Float ->
      let gradients =
        Map.map gradients ~f:(fun gradient ->
          Option.value_exn (T.unpack gradient Float))
      in
      t.g ~self ~gradients
    | _ ->
      Printf.failwithf "Inconsistent types %s" (Op.Name.to_string op) ()
  in
  Hashtbl.set table_multi ~key:op ~data:f

let find_multi = Hashtbl.find table_multi


module O = struct
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
    add Ops.Op_names.add { f = add_gradient };
    add Ops.Op_names.sub { f = sub_gradient };
    add Ops.Op_names.mul { f = mul_gradient }
end
