open Base
module T = Op.Tensor_handle

module Registered_gradients : sig
  type t =
    { f : 'a .
            (  self:([< `float | `double] as 'a) T.t
            -> gradient:'a T.t
            -> T.p option list)
    }

  val add
    :  Op.Name.t
    -> t
    -> unit

  type multi =
    { g : 'a .
            (  self:([< `float | `double] as 'a) T.t
            -> gradients:'a T.t Map.M(Int).t
            -> T.p option list)
    }

  val add_multi
    :  Op.Name.t
    -> multi
    -> unit
end

exception No_derivative_for_op of Op.Name.t

val compute
  :  [< `double | `float ] Op.Tensor_handle.t
  -> (Op.Tensor_handle.Id.t, Op.Tensor_handle.p) Hashtbl.t
