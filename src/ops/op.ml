open Base
open Tf_core

module Name : Identifiable.S = String

type attr =
  [ `bool of bool
  | `float of float
  | `int of int
  | `list_float of float list
  | `list_int of int list
  | `list_shape of int list list
  | `list_type of Tf_core.Wrapper.data_type list
  | `list_type_p of Operation.Type.p list
  | `shape of int list
  | `string of string
  | `type_ of Tf_core.Wrapper.data_type
  ]


module Tape_info : sig
  type _ t
  val create : Name.t -> 'a list -> (string * attr) list -> 'a t
  val op_name : _ t -> Name.t
  val inputs : 'a t -> 'a list
  val output_idx : 'a t -> int option
end = struct
  type 'a t =
    { op_name : Name.t
    ; inputs : 'a list
    ; attrs : (string * attr) list
    }

  let create op_name inputs attrs =
    { op_name; inputs; attrs }

  let op_name t = t.op_name
  let inputs t = t.inputs
  let output_idx _ = None (* TODO *)
end

module Tensor_handle = struct
  module Id : sig
    include Identifiable.S
    val create : unit -> t
  end = struct
    include Int
    let create =
      let counter = ref 0 in
      fun () ->
        incr counter;
        !counter
  end

  type 'a t =
    { id : Id.t
    ; handle : Eager.Tensor_handle.t
    ; type_ : 'a Operation.Type.t
    ; tape_info : [ `none | `leaf | `node of p Tape_info.t ]
    }
  and p = P : _ t -> p

  let of_c handle type_ =
    { id = Id.create(); handle; tape_info = `none; type_ }

  let id t = t.id
  let tape_info t = t.tape_info
  let type_ t = t.type_

  let unpack : type a . p -> a Operation.Type.t -> a t option = fun (P t) target_type ->
    match type_ t, target_type with
    (* TODO: move this pattern matching to an equality witness ? *)
    | Operation.Type.Unit, Operation.Type.Unit -> Some t
    | Operation.Type.Float, Operation.Type.Float -> Some t
    | Operation.Type.Double, Operation.Type.Double -> Some t
    | Operation.Type.UInt8, Operation.Type.UInt8 -> Some t
    | Operation.Type.UInt16, Operation.Type.UInt16 -> Some t
    | Operation.Type.Int32, Operation.Type.Int32 -> Some t
    | Operation.Type.Int64, Operation.Type.Int64 -> Some t
    | Operation.Type.Complex64, Operation.Type.Complex64 -> Some t
    | Operation.Type.Bool, Operation.Type.Bool -> Some t
    | Operation.Type.String, Operation.Type.String -> Some t
    | Operation.Type.Resource, Operation.Type.Resource -> Some t
    | Operation.Type.Variant, Operation.Type.Variant -> Some t
    | _, _ -> None

  let unpack_exn : type a . p -> a Operation.Type.t -> a t = fun p target_type ->
    match unpack p target_type with
    | Some t -> t
    | None ->
      let P t = p in
      let tensor_type = type_ t in
      Printf.failwithf "type mismatch in unpack_exn, tensor: %s target: %s"
        Operation.Type.(to_string (P tensor_type))
        Operation.Type.(to_string (P target_type))
        ()

  let create tensor =
    Eager.Tensor_handle.create_exn tensor
    |> of_c

  let resolve t = Eager.Tensor_handle.resolve_exn t.handle
  let dims t = Eager.Tensor_handle.dims t.handle
  let data_type t = Eager.Tensor_handle.data_type t.handle
  let data_type_p (P t) = Eager.Tensor_handle.data_type t.handle

  let watch t =
    { handle = t.handle
    ; id = Id.create ()
    ; tape_info = `leaf
    ; type_ = t.type_
    }

  let is_watched (P t) =
    match t.tape_info with
    | `none -> false
    | `leaf | `node _ -> true
end

type t =
  { op : Eager.Op.t
  ; name : Name.t
  ; inputs : Tensor_handle.p list
  ; attrs : (string * attr) list
  }

type context = Eager.Context.t

let default_context () =
  Eager.Context.create ()
  |> Wrapper.Status.ok_exn

let create context name inputs attrs =
  let op = Eager.Op.create context (Name.to_string name) |> Wrapper.Status.ok_exn in
  List.iter inputs ~f:(fun (Tensor_handle.P th) ->
    Eager.Op.add_input op th.Tensor_handle.handle
    |> Wrapper.Status.ok_exn;
  );
  List.iter attrs ~f:(fun (name, attr) ->
    match attr with
    | `string value -> Eager.Op.set_attr_string op name value
    | `bool value -> Eager.Op.set_attr_bool op name value
    | `float value -> Eager.Op.set_attr_float op name value
    | `list_float value -> Eager.Op.set_attr_float_list op name value
    | `int value -> Eager.Op.set_attr_int op name (Int64.of_int value)
    | `list_int value -> Eager.Op.set_attr_int_list op name (List.map value ~f:Int64.of_int)
    | `type_ value -> Eager.Op.set_attr_type op name value
    | `list_type value -> Eager.Op.set_attr_type_list op name value
    | `list_type_p value ->
        let value = List.map value ~f:Operation.Type.to_data_type in
				Eager.Op.set_attr_type_list op name value
    | `shape value -> Eager.Op.set_attr_shape op name value |> Wrapper.Status.ok_exn
    | `list_shape value -> Eager.Op.set_attr_shape_list op name value |> Wrapper.Status.ok_exn
  );
  { op; name; inputs; attrs }

let create_handle t handle type_ =
  let tape_info =
    if List.exists t.inputs ~f:(fun p -> Tensor_handle.is_watched p)
    then `node (Tape_info.create t.name t.inputs t.attrs)
    else `none
  in
  { Tensor_handle.id = Tensor_handle.Id.create ()
  ; handle
  ; tape_info
  ; type_
  }

let execute t type_ ~output_len =
  Eager.execute_exn t.op ~output_len
  |> List.map ~f:(fun handle -> create_handle t handle type_)

let execute0 t =
  match Eager.execute_exn t.op ~output_len:0 with
  | [] -> ()
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments 0 %d"
      (List.length otherwise)
      ()

let execute1 t t1 =
  match Eager.execute_exn t.op ~output_len:1 with
  | [ h1 ] ->
    create_handle t h1 t1
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments %d"
      (List.length otherwise)
      ()

let execute2 t t1 t2 =
  match Eager.execute_exn t.op ~output_len:2 with
  | [ h1; h2 ] ->
    create_handle t h1 t1,
    create_handle t h2 t2
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments %d"
      (List.length otherwise)
      ()

let execute3 t t1 t2 t3 =
  match Eager.execute_exn t.op ~output_len:3 with
  | [h1; h2; h3] ->
    create_handle t h1 t1,
    create_handle t h2 t2,
    create_handle t h3 t3
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments %d"
      (List.length otherwise)
      ()

let execute4 t t1 t2 t3 t4 =
  match Eager.execute_exn t.op ~output_len:4 with
  | [h1; h2; h3; h4] ->
    create_handle t h1 t1,
    create_handle t h2 t2,
    create_handle t h3 t3,
    create_handle t h4 t4
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments %d"
      (List.length otherwise)
      ()

let execute5 t t1 t2 t3 t4 t5 =
  match Eager.execute_exn t.op ~output_len:5 with
  | [h1; h2; h3; h4; h5] ->
    create_handle t h1 t1,
    create_handle t h2 t2,
    create_handle t h3 t3,
    create_handle t h4 t4,
    create_handle t h5 t5
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments %d"
      (List.length otherwise)
      ()

let execute6 t t1 t2 t3 t4 t5 t6 =
  match Eager.execute_exn t.op ~output_len:6 with
  | [h1; h2; h3; h4; h5; h6 ] ->
    create_handle t h1 t1,
    create_handle t h2 t2,
    create_handle t h3 t3,
    create_handle t h4 t4,
    create_handle t h5 t5,
    create_handle t h6 t6
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments %d"
      (List.length otherwise)
      ()

let execute7 t t1 t2 t3 t4 t5 t6 t7 =
  match Eager.execute_exn t.op ~output_len:7 with
  | [h1; h2; h3; h4; h5; h6; h7 ] ->
    create_handle t h1 t1,
    create_handle t h2 t2,
    create_handle t h3 t3,
    create_handle t h4 t4,
    create_handle t h5 t5,
    create_handle t h6 t6,
    create_handle t h7 t7
  | otherwise ->
    Printf.failwithf
      "inconsistent number of returned arguments %d"
      (List.length otherwise)
      ()

type 'a binary = 'a Tensor_handle.t -> 'a Tensor_handle.t -> 'a Tensor_handle.t
