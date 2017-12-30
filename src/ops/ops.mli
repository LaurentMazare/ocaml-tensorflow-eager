include module type of Generated

(* TODO: use some typed tensor handles. *)
val (+) : Op.binary
val ( * ) : Op.binary
val (-) : Op.binary
val (/) : Op.binary

module Const : sig
  val float : float -> [ `float ] t
end
