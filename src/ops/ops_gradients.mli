open Base
module T = Op.Tensor_handle

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

val find : Op.Name.t -> (self:T.p -> gradient:T.p -> T.p option list) option
val find_multi
  :  Op.Name.t
  -> (self:T.p
    -> gradients:(int, T.p, Base.Int.comparator_witness) Base.Map.t
    -> T.p option list) option
