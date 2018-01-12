open Base
module T = Op.Tensor_handle

exception No_derivative_for_op of Op.Name.t

type var_and_gradient =
  | Float of [ `float ] T.var option * [ `float ] T.t
  | Double of [ `double ] T.var option * [ `double ] T.t

type t = (Op.Tensor_handle.Id.t, var_and_gradient) Hashtbl.t

val compute : [< `double | `float ] Op.Tensor_handle.t -> t

val apply_sgd_step
  :  t -> learning_rate:float -> unit
