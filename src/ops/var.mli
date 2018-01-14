type 'a t = 'a Op.Tensor_handle.var

(* If the same variable name is used multiple times, the same variable is returned. *)
val create : ?name:string -> 'a Ops.t -> 'a t
val assign : 'a t -> 'a Ops.t -> unit
val read : 'a t -> 'a Ops.t
val read_and_watch : 'a t -> 'a Ops.t
val resource : 'a t -> [ `resource ] Ops.t

val f32 : ?name:string -> int list -> float -> [ `float ] t
val truncated_normal_f32 : ?name:string -> int list -> stdev:float -> [ `float ] t
