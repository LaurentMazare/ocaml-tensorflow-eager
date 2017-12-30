include module type of Generated

val (+) : [< `float | `double | `int32 | `int64 ] Op.binary
val ( * ) : [< `float | `double | `int32 | `int64 ] Op.binary
val (-) : [< `float | `double | `int32 | `int64 ] Op.binary
val (/) : [< `float | `double | `int32 | `int64 ] Op.binary

val print : ?summarize:int -> ?message:string -> _ t -> unit
