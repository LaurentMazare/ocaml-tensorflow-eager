include module type of Generated

val (+) : [< `float | `double | `int32 | `int64 ] Op.binary
val ( * ) : [< `float | `double | `int32 | `int64 ] Op.binary
val (-) : [< `float | `double | `int32 | `int64 ] Op.binary
val (/) : [< `float | `double | `int32 | `int64 ] Op.binary

module Const : sig
  val float : float -> [ `float ] t
end
