include module type of Generated
type p = Op.Tensor_handle.p

val print : ?summarize:int -> ?message:string -> _ t -> unit


(** {1 Arithmetic Operations.} *)

(** Pointwise addition. *)
val (+) : [< `float | `double | `int32 | `int64 ] Op.binary

(** Pointwise multiplication. *)
val ( * ) : [< `float | `double | `int32 | `int64 ] Op.binary

(** Pointwise subtraction. *)
val (-) : [< `float | `double | `int32 | `int64 ] Op.binary

(** Pointwise division. *)
val (/) : [< `float | `double | `int32 | `int64 ] Op.binary

(** Matrix multiplication. *)
val mm
  :  ?transpose_a:bool
  -> ?transpose_b:bool
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t

(** Another alias for matrix multiplication. *)
val ( *^)
  :  ([< `float | `double | `int32 | `complex64 ] as 't) t
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t
  -> ([< `float | `double | `int32 | `complex64 ] as 't) t


(** {1 Constant operations.} *)

(** [i32 ?shape v] returns a constant int 32 handle filled with [v]. If no shape is
    given, the result is a scalar.
*)
val i32 : ?shape:int list -> int -> [ `int32 ] t

(** Zero scalar tensor handle. *)
val zero32 : [ `int32 ] t

(** One scalar tensor handle. *)
val one32 : [ `int32 ] t

(** [f32 ?shape v] returns a constant single precision float handle filled with [v]. If no shape is
    given, the result is a scalar.
*)
val f32 : ?shape:int list -> float -> [ `float ] t

(** [f64 ?shape v] returns a constant double precision handle filled with [v]. If no shape is
    given, the result is a scalar.
*)
val f64 : ?shape:int list -> float -> [ `double ] t

(** [float ?shape type_ v] returns either [f32 ?shape v] or [f64 ?shape v] depending on [type_]. *)
val float : ?shape:int list -> float -> ([< `float | `double ] as 'a) Tf_core.Operation.Type.t -> 'a t

(** Int 32 vector. *)
val vec_i32 : int list -> [ `int32 ] t

(** Single precision float vector. *)
val vec_f32 : float list -> [ `float ] t

(** Double precision float vector. *)
val vec_f64 : float list -> [ `double ] t

(** Similar to [vec_f32] and [vec_f64]. *)
val vec_float : float list -> ([< `float | `double ] as 'a) Tf_core.Operation.Type.t -> 'a t

val of_strings : string list -> shape:int list -> [ `string ] t
val of_string : string -> [ `string ] t


(** {1 Converting a tensor handle back to ocaml values.} *)

val to_float : [< `float | `double ] t -> float
val to_float_list : [< `float | `double ] t -> float list
val to_int_list : [< `int32 | `int64 ] t -> int list

val packed_to_float : p -> float
val packed_to_float_list : p -> float list
val packed_to_int_list : p -> int list


(** {1 Reduction operations.} *)

(** Reduction functions, [dims] is the list of dimensions across which the reduction
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


(** {1 Miscellaneous.} *)

val irange : [ `int32 ] t -> [ `int32 ] t

val cross_entropy
  :  ?epsilon:float
  -> ys:[ `float ] t
  -> y_hats:[ `float ] t
  -> [ `mean | `sum ]
  -> [ `float ] t

val arg_max
  :  [< `complex64 | `double | `float | `int32 | `int64 | `uInt16 | `uInt8 ] t
  -> [ `int32 ] t


(** [watch t] is identical to [t] but can be used to compute gradients with respect to this
    handle. *)
val watch : 'a t -> 'a t
