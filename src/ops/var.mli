open Tf_core

(* TODO: introduce a specific dependent type for variables rather than `dt_resource. *)
val variable : 'a Ops.t -> [ `resource ] Ops.t
val assign : [ `resource ] Ops.t -> 'a Ops.t -> unit
val read : [ `resource ] Ops.t -> 'a Operation.Type.t -> 'a Ops.t
