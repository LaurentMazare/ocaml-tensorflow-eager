open Base

exception No_derivative_for_op of Op.Name.t

let compute tensor_handle =
  match Op.Tensor_handle.tape_info tensor_handle with
  | `none -> []
  | `leaf ->
    let id = Op.Tensor_handle.id tensor_handle in
    let one = failwith "TODO" in
    [ id, one ]
  | `node _ -> failwith "TODO"
