open Base
open Tf_core

type t = Eager.Op.t

module Tape_info : sig
  type t
  val create : unit -> t
end = struct
  (* TODO *)
  type t = unit

  let create () = ()
end

module Tensor_handle = struct
  type 'a t =
    { handle : 'a Eager.Tensor_handle.t
    ; tape_info : Tape_info.t option
    }

  let create_no_tape_info handle =
    { handle; tape_info = None }

  let create_exn tensor =
    Eager.Tensor_handle.create_exn tensor
    |> create_no_tape_info

  let of_strings_exn strings ~shape =
    Eager.Tensor_handle.of_strings_exn strings ~shape
    |> create_no_tape_info

  let of_string_exn str =
    Eager.Tensor_handle.of_string_exn str
    |> create_no_tape_info

  let scalar_i32_exn i =
    Eager.Tensor_handle.scalar_i32_exn i
    |> create_no_tape_info

  let scalar_f32_exn f =
    Eager.Tensor_handle.scalar_f32_exn f
    |> create_no_tape_info

  let scalar_f64_exn f =
    Eager.Tensor_handle.scalar_f64_exn f
    |> create_no_tape_info

  let vec_i32_exn i =
    Eager.Tensor_handle.vec_i32_exn i
    |> create_no_tape_info

  let vec_f32_exn f =
    Eager.Tensor_handle.vec_f32_exn f
    |> create_no_tape_info

  let vec_f64_exn f =
    Eager.Tensor_handle.vec_f64_exn f
    |> create_no_tape_info


  let resolve_exn t = Eager.Tensor_handle.resolve_exn t.handle
  let resolve_scalar_float_exn t = Eager.Tensor_handle.resolve_scalar_float_exn t.handle
  let resolve_vec_float_exn t = Eager.Tensor_handle.resolve_vec_float_exn t.handle
  let resolve_vec_int_exn t = Eager.Tensor_handle.resolve_vec_int_exn t.handle
  let dims t = Eager.Tensor_handle.dims t.handle
  let data_type t = Eager.Tensor_handle.data_type t.handle

  let watch t =
    { t with tape_info = Some (Tape_info.create ()) }
end

type context = Eager.Context.t

let default_context () =
  Eager.Context.create ()
  |> Wrapper.Status.ok_exn

let create context name =
  Eager.Op.create context name
  |> Wrapper.Status.ok_exn

let set_attr_string = Eager.Op.set_attr_string
let set_attr_bool = Eager.Op.set_attr_bool
let set_attr_float = Eager.Op.set_attr_float
let set_attr_float_list = Eager.Op.set_attr_float_list
let set_attr_data_type = Eager.Op.set_attr_type
let set_attr_data_type_list = Eager.Op.set_attr_type_list

let set_attr_type t name value =
  Eager.Op.set_attr_type t name (Operation.Type.P value |> Operation.Type.to_data_type)

let set_attr_type_list t name values =
  let values = List.map values ~f:Operation.Type.to_data_type in
  Eager.Op.set_attr_type_list t name values

let set_attr_int t name value =
  Eager.Op.set_attr_int t name (Int64.of_int value)

let set_attr_int_list t name values =
  Eager.Op.set_attr_int_list t name (List.map values ~f:Int64.of_int)

let set_attr_shape t name value =
  Eager.Op.set_attr_shape t name value
  |> Wrapper.Status.ok_exn

let set_attr_shape_list t name values =
  Eager.Op.set_attr_shape_list t name values
  |> Wrapper.Status.ok_exn

let add_input t th =
  Eager.Op.add_input t th.Tensor_handle.handle
  |> Wrapper.Status.ok_exn;
  t

let execute t ~output_len =
  Eager.execute_exn t ~output_len
  |> List.map ~f:Tensor_handle.create_no_tape_info

let execute0 t =
  Eager.execute0_exn t

let execute1 t =
  let th1 = Eager.execute1_exn t in
  Tensor_handle.create_no_tape_info th1

let execute2 t =
  let th1, th2 = Eager.execute2_exn t in
  Tensor_handle.create_no_tape_info th1,
  Tensor_handle.create_no_tape_info th2

let execute3 t =
  let th1, th2, th3 = Eager.execute3_exn t in
  Tensor_handle.create_no_tape_info th1,
  Tensor_handle.create_no_tape_info th2,
  Tensor_handle.create_no_tape_info th3

let execute4 t =
  let th1, th2, th3, th4 = Eager.execute4_exn t in
  Tensor_handle.create_no_tape_info th1,
  Tensor_handle.create_no_tape_info th2,
  Tensor_handle.create_no_tape_info th3,
  Tensor_handle.create_no_tape_info th4

let execute5 t =
  let th1, th2, th3, th4, th5 = Eager.execute5_exn t in
  Tensor_handle.create_no_tape_info th1,
  Tensor_handle.create_no_tape_info th2,
  Tensor_handle.create_no_tape_info th3,
  Tensor_handle.create_no_tape_info th4,
  Tensor_handle.create_no_tape_info th5

let execute6 t =
  let th1, th2, th3, th4, th5, th6 = Eager.execute6_exn t in
  Tensor_handle.create_no_tape_info th1,
  Tensor_handle.create_no_tape_info th2,
  Tensor_handle.create_no_tape_info th3,
  Tensor_handle.create_no_tape_info th4,
  Tensor_handle.create_no_tape_info th5,
  Tensor_handle.create_no_tape_info th6

let execute7 t =
  let th1, th2, th3, th4, th5, th6, th7 = Eager.execute7_exn t in
  Tensor_handle.create_no_tape_info th1,
  Tensor_handle.create_no_tape_info th2,
  Tensor_handle.create_no_tape_info th3,
  Tensor_handle.create_no_tape_info th4,
  Tensor_handle.create_no_tape_info th5,
  Tensor_handle.create_no_tape_info th6,
  Tensor_handle.create_no_tape_info th7

type 'a binary = 'a Tensor_handle.t -> 'a Tensor_handle.t -> 'a Tensor_handle.t
