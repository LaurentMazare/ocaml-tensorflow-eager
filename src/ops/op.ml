open Base
open Tf_core

type t = Eager.Op.t
type tensor_handle = Eager.Tensor_handle.t
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
  let values = List.map values ~f:(List.map ~f:Int64.of_int) in
  Eager.Op.set_attr_shape_list t name values
  |> Wrapper.Status.ok_exn

let add_input t tensor_handle =
  Eager.Op.add_input t tensor_handle
  |> Wrapper.Status.ok_exn

let execute t ~output_len =
  Eager.execute t ~output_len
  |> Wrapper.Status.ok_exn

let execute0 t =
  match execute t ~output_len:0 with
  | [] -> ()
  | _ -> assert false

let execute1 t =
  match execute t ~output_len:1 with
  | [handle] -> handle
  | _ -> assert false

let execute2 t =
  match execute t ~output_len:2 with
  | [handle1; handle2] -> handle1, handle2
  | _ -> assert false

let execute3 t =
  match execute t ~output_len:3 with
  | [handle1; handle2; handle3] -> handle1, handle2, handle3
  | _ -> assert false

let execute4 t =
  match execute t ~output_len:4 with
  | [handle1; handle2; handle3; handle4] -> handle1, handle2, handle3, handle4
  | _ -> assert false

let execute5 t =
  match execute t ~output_len:5 with
  | [h1; h2; h3; h4; h5] -> h1, h2, h3, h4, h5
  | _ -> assert false

let execute6 t =
  match execute t ~output_len:6 with
  | [h1; h2; h3; h4; h5; h6] -> h1, h2, h3, h4, h5, h6
  | _ -> assert false

let execute7 t =
  match execute t ~output_len:7 with
  | [h1; h2; h3; h4; h5; h6; h7] -> h1, h2, h3, h4, h5, h6, h7
  | _ -> assert false

let tensor_handle_data_type = Eager.Tensor_handle.data_type
