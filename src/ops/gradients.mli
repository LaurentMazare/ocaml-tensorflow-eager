exception No_derivative_for_op of Op.Name.t

val compute
  :  [< `double | `float ] Op.Tensor_handle.t
  -> (Op.Tensor_handle.Id.t * Op.Tensor_handle.p) list

