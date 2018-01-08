include module type of Generated
type p = Op.Tensor_handle.p

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

val i32 : int -> [ `int32 ] t
val zero32 : [ `int32 ] t
val one32 : [ `int32 ] t
val f32 : float -> [ `float ] t
val f64 : float -> [ `double ] t
val float : float -> ([< `float | `double ] as 'a) Tf_core.Operation.Type.t -> 'a t

val vec_i32 : int list -> [ `int32 ] t
val vec_f32 : float list -> [ `float ] t
val vec_f64 : float list -> [ `double ] t
val vec_float : float list -> ([< `float | `double ] as 'a) Tf_core.Operation.Type.t -> 'a t

val to_float : [< `float | `double ] t -> float
val to_float_list : [< `float | `double ] t -> float list
val to_int_list : [< `int32 | `int64 ] t -> int list

val packed_to_float : p -> float
val packed_to_float_list : p -> float list
val packed_to_int_list : p -> int list

val of_strings : string list -> shape:int list -> [ `string ] t
val of_string : string -> [ `string ] t

val watch : 'a t -> 'a t

(* ==== Reduction Functions ==== *)

(* Reduction functions, [dims] is the list of dimensions across which the reduction
   is performed. *)
type 'a reduce_fn
   =  ?dims:int list
  -> ([< `complex64 | `double | `float | `int32 | `int64 ] as 'a) t
  -> 'a t

val reduce_sum : 'a reduce_fn
val reduce_min : 'a reduce_fn
val reduce_max : 'a reduce_fn
val reduce_mean : 'a reduce_fn
val reduce_prod : 'a reduce_fn
val reduce_all : ?dims:int list -> [ `bool ] t -> [ `bool ] t
val reduce_any : ?dims:int list -> [ `bool ] t -> [ `bool ] t

val irange : [ `int32 ] t -> [ `int32 ] t
