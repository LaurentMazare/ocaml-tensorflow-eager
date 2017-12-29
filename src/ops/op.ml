open Base
open Tf_core

let default_context () =
  Eager.Context.create ()
  |> Wrapper.Status.ok_exn

let create context name =
  Eager.Op.create context name
  |> Wrapper.Status.ok_exn

let set_attr_type = Eager.Op.set_attr_type
let set_attr_string = Eager.Op.set_attr_string
let set_attr_bool = Eager.Op.set_attr_bool
let set_attr_float = Eager.Op.set_attr_float
let set_attr_type_list = Eager.Op.set_attr_type_list
let set_attr_float_list = Eager.Op.set_attr_float_list

let set_attr_int t name value =
  Eager.Op.set_attr_int t name (Int64.of_int value)

let set_attr_int_list t name values =
  Eager.Op.set_attr_int_list t name (List.map values ~f:Int64.of_int)

let set_attr_shape t name value =
  Eager.Op.set_attr_shape t name value
  |> Wrapper.Status.ok_exn

let set_attr_shape_list t name values =
  let values = List.map values ~f:(List.map ~f:Int64.of_int) in
  Eager.Op.set_attr_shape_list t name values
  |> Wrapper.Status.ok_exn

let add_input t tensor_handle =
  Eager.Op.add_input t tensor_handle
  |> Wrapper.Status.ok_exn

let execute t =
  Eager.execute t ~output_len:1
  |> Wrapper.Status.ok_exn
