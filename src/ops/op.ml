open Base
open Tf_core

type t = Eager.Op.t

(* TODO: add some tape handling in order to handle backprop. *)
type 'a tensor_handle = 'a Eager.Tensor_handle.t
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

let add_input t tensor_handle =
  Eager.Op.add_input t tensor_handle
  |> Wrapper.Status.ok_exn

let execute t ~output_len =
  Eager.execute_exn t ~output_len

let execute0 = Eager.execute0_exn
let execute1 = Eager.execute1_exn
let execute2 = Eager.execute2_exn
let execute3 = Eager.execute3_exn
let execute4 = Eager.execute4_exn
let execute5 = Eager.execute5_exn
let execute6 = Eager.execute6_exn
let execute7 = Eager.execute7_exn

let tensor_handle_data_type = Eager.Tensor_handle.data_type

type 'a binary = 'a tensor_handle -> 'a tensor_handle -> 'a tensor_handle
