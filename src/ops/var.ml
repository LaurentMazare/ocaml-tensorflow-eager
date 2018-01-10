open Base
open Tf_core

let context = Op.default_context ()

let variable ~shape ?(container="") ?(shared_name="") () =
  let type_ = Operation.Type.Resource in
  Op.create context (Op.Name.of_string "VarHandleOp")
    []
    [ "dtype", `type_ (Operation.Type.(to_data_type (P type_)))
    ; "shape", `shape shape
    ; "container", `string container
    ; "shared_name", `string shared_name
    ]
  |> fun op -> Op.execute1 op type_

let assign var value =
  Op.create context (Op.Name.of_string "AssignVariableOp")
    [Op.Tensor_handle.P var; Op.Tensor_handle.P value]
    [ "dtype", `type_ (Op.Tensor_handle.data_type value) ]
  |> Op.execute0

let variable initial_value =
  let variable = variable ~shape:(Op.Tensor_handle.dims initial_value) () in
  assign variable initial_value;
  variable

let read var type_ =
  Op.create context (Op.Name.of_string "ReadVariableOp")
    [Op.Tensor_handle.P var]
    [ "dtype", `type_ (Operation.Type.(to_data_type (P type_)))]
  |> fun op -> Op.execute1 op type_


