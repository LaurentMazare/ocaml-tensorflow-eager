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

val find : Op.Name.t -> (self:T.p -> gradient:T.p -> T.p option list) option
val find_multi
  :  Op.Name.t
  -> (self:T.p
    -> gradients:(int, T.p, Base.Int.comparator_witness) Base.Map.t
    -> T.p option list) option
