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

let set_attr_int op name value =
  Eager.Op.set_attr_int op name (Int64.of_int value)

let add_input t tensor_handle =
  Eager.Op.add_input t tensor_handle
  |> Wrapper.Status.ok_exn

let execute t =
  Eager.execute t ~output_len:1
  |> Wrapper.Status.ok_exn
