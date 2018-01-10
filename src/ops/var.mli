type 'a t

val create : 'a Ops.t -> 'a t
val assign : 'a t -> 'a Ops.t -> unit
val read : 'a t -> 'a Ops.t
val resource : 'a t -> [ `resource ] Ops.t
