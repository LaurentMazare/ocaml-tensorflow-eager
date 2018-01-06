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
  type 'a t
  val create : Name.t -> 'a list -> (string * attr) list -> 'a t
end = struct
  type 'a t =
    { op_name : Name.t
    ; inputs : 'a list
    ; attrs : (string * attr) list
    }

  let create op_name inputs attrs =
    { op_name; inputs; attrs }
end

module Tensor_handle = struct
  type 'a t =
    { handle : 'a Eager.Tensor_handle.t
    ; tape_info : [ `none | `leaf | `node of p Tape_info.t ]
    }
  and p = P : _ t -> p

  let create_no_tape_info handle =
    { handle; tape_info = `none }

  let create_exn tensor =
    Eager.Tensor_handle.create_exn tensor
    |> create_no_tape_info

  let of_strings_exn strings ~shape =
    Eager.Tensor_handle.of_strings_exn strings ~shape
    |> create_no_tape_info

  let of_string_exn str =
    Eager.Tensor_handle.of_string_exn str
    |> create_no_tape_info

  let scalar_exn type_ value =
    let tensor = Tensor.create type_ [||] in
    Tensor.set tensor [||] value;
    Eager.Tensor_handle.create_exn (Tensor.P tensor)
    |> create_no_tape_info

  let vec_exn type_ list =
    let tensor = Tensor.create type_ [| List.length list |] in
    Tensor.copy_elt_list tensor list;
    Eager.Tensor_handle.create_exn (Tensor.P tensor)
    |> create_no_tape_info

  let scalar_i32_exn i = scalar_exn Int32 (Int32.of_int_exn i)

  let scalar_f32_exn f = scalar_exn Float32 f

  let scalar_f64_exn f = scalar_exn Float64 f

  let vec_i32_exn i = vec_exn Int32 (List.map ~f:Int32.of_int_exn i)

  let vec_f32_exn f = vec_exn Float32 f

  let vec_f64_exn f = vec_exn Float64 f

  let resolve_exn t = Eager.Tensor_handle.resolve_exn t.handle
  let resolve_scalar_float_exn t =
    let output_tensor = resolve_exn t in
    match Tensor.float32 output_tensor with
    | Some tensor -> Tensor.get tensor [||]
    | None ->
      match Tensor.float64 output_tensor with
      | Some tensor -> Tensor.get tensor [||]
      | None -> failwith "not a float32/float64 tensor"

  let resolve_vec_float_exn t =
    resolve_exn t |> Tensor.to_float_list

  let resolve_vec_int_exn t =
    resolve_exn t |> Tensor.to_int_list

  let dims t = Eager.Tensor_handle.dims t.handle
  let data_type t = Eager.Tensor_handle.data_type t.handle
  let data_type_p (P t) = Eager.Tensor_handle.data_type t.handle

  let watch t =
    { t with tape_info = `leaf }

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

let create_handle t handle =
  let tape_info =
    if List.exists t.inputs ~f:(fun p -> Tensor_handle.is_watched p)
    then `node (Tape_info.create t.name t.inputs t.attrs)
    else `none
  in
  { Tensor_handle.handle
  ; tape_info
  }

let execute t ~output_len =
  Eager.execute_exn t.op ~output_len
  |> List.map ~f:(create_handle t)

let execute0 t =
  Eager.execute0_exn t.op

let execute1 t =
  let th1 = Eager.execute1_exn t.op in
  create_handle t th1

let execute2 t =
  let th1, th2 = Eager.execute2_exn t.op in
  create_handle t th1,
  create_handle t th2

let execute3 t =
  let th1, th2, th3 = Eager.execute3_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3

let execute4 t =
  let th1, th2, th3, th4 = Eager.execute4_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4

let execute5 t =
  let th1, th2, th3, th4, th5 = Eager.execute5_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4,
  create_handle t th5

let execute6 t =
  let th1, th2, th3, th4, th5, th6 = Eager.execute6_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4,
  create_handle t th5,
  create_handle t th6

let execute7 t =
  let th1, th2, th3, th4, th5, th6, th7 = Eager.execute7_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4,
  create_handle t th5,
  create_handle t th6,
  create_handle t th7

type 'a binary = 'a Tensor_handle.t -> 'a Tensor_handle.t -> 'a Tensor_handle.t
