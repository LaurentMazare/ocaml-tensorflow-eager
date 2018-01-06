let compute tensor_handle =
  match Op.Tensor_handle.tape_info tensor_handle with
  | `none -> []
  | `leaf -> [ Op.Tensor_handle.P tensor_handle ]
  | `node _ -> failwith "TODO"
