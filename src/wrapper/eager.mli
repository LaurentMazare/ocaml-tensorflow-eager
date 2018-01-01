module Status = Wrapper.Status

module Context : sig
  type t

  val create
    :  ?session_options:Wrapper.Session_options.t
    -> unit
    -> t Status.result
end

module Tensor_handle : sig
  type _ t

  (* TODO: better shadow type handling when converting to/from a tensor. *)
  val create : Tensor.p -> _ t Status.result

  val create_exn : Tensor.p -> _ t

  val resolve : _ t -> Tensor.p Status.result

  val resolve_exn : _ t -> Tensor.p

  val dims : _ t -> int list

  val data_type : _ t -> Wrapper.data_type

  val of_strings : string list -> shape:int list -> [ `string ] t Status.result
  val of_strings_exn : string list -> shape:int list -> [ `string ] t

  val of_string : string -> [ `string ] t Status.result
  val of_string_exn : string -> [ `string ] t

  val scalar_i32_exn : int -> [ `int32 ] t
  val scalar_f32_exn : float -> [ `float ] t
  val scalar_f64_exn : float -> [ `double ] t

  val vec_i32_exn : int list -> [ `int32 ] t
  val vec_f32_exn : float list -> [ `float ] t
  val vec_f64_exn : float list -> [ `double ] t

  val resolve_scalar_float_exn : [< `float | `double ] t -> float
  val resolve_vec_float_exn : [< `float | `double ] t -> float list

  val resolve_vec_int_exn : [< `int32 | `int64 ] t -> int list
end

module Op : sig
  type t

  val create : Context.t -> string -> t Status.result

  val add_input : t -> _ Tensor_handle.t -> unit Status.result

  val set_attr_type : t -> string -> Wrapper.data_type -> unit
  val set_attr_type_list : t -> string -> Wrapper.data_type list -> unit
  val set_attr_string : t -> string -> string -> unit
  val set_attr_int : t -> string -> int64 -> unit
  val set_attr_int_list : t -> string -> int64 list -> unit
  val set_attr_float : t -> string -> float -> unit
  val set_attr_float_list : t -> string -> float list -> unit
  val set_attr_bool : t -> string -> bool -> unit
  val set_attr_shape : t -> string -> int list -> unit Status.result
  val set_attr_shape_list : t -> string -> int list list -> unit Status.result
end

val execute : Op.t -> output_len:int -> _ Tensor_handle.t list Status.result
val execute_exn : Op.t -> output_len:int -> _ Tensor_handle.t list

val execute0_exn : Op.t -> unit
val execute1_exn : Op.t -> _ Tensor_handle.t
val execute2_exn : Op.t -> _ Tensor_handle.t * _ Tensor_handle.t
val execute3_exn : Op.t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute4_exn : Op.t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute5_exn : Op.t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute6_exn : Op.t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute7_exn : Op.t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
