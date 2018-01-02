include module type of Generated

val (+) : [< `float | `double | `int32 | `int64 ] Op.binary
val ( * ) : [< `float | `double | `int32 | `int64 ] Op.binary
val (-) : [< `float | `double | `int32 | `int64 ] Op.binary
val (/) : [< `float | `double | `int32 | `int64 ] Op.binary

val print : ?summarize:int -> ?message:string -> _ t -> unit

val mm
  :  ?transpose_a:bool
  -> ?transpose_b:bool
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t
