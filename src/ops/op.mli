(* TODO: Consider functorizing generated ops over this signature ? *)
open Base
open Tf_core

type t
module Tensor_handle : sig
  type _ t
  val create_exn : Tensor.p -> _ t

  val resolve_exn : _ t -> Tensor.p

  val dims : _ t -> int list

  val data_type : _ t -> Wrapper.data_type

  val of_strings_exn : string list -> shape:int list -> [ `string ] t

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

  val watch : 'a t -> 'a t
end

type context

val default_context : unit -> context

val create : context -> string -> t

val set_attr_bool : t -> string -> bool -> unit
val set_attr_float : t -> string -> float -> unit
val set_attr_float_list : t -> string -> float list -> unit
val set_attr_int : t -> string -> int -> unit
val set_attr_int_list : t -> string -> int list -> unit
val set_attr_shape : t -> string -> int list -> unit
val set_attr_shape_list : t -> string -> int list list -> unit
val set_attr_string : t -> string -> string -> unit
val set_attr_type : t -> string -> _ Operation.Type.t -> unit
val set_attr_type_list : t -> string -> Operation.Type.p list -> unit
val set_attr_data_type : t -> string -> Wrapper.data_type -> unit
val set_attr_data_type_list : t -> string -> Wrapper.data_type list -> unit

val add_input : t -> _ Tensor_handle.t -> t

val execute : t -> output_len:int -> _ Tensor_handle.t list

val execute0 : t -> unit
val execute1 : t -> _ Tensor_handle.t
val execute2 : t -> _ Tensor_handle.t * _ Tensor_handle.t
val execute3 : t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute4 : t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute5 : t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute6 : t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t
val execute7 : t -> _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t * _ Tensor_handle.t

type 'a binary = 'a Tensor_handle.t -> 'a Tensor_handle.t -> 'a Tensor_handle.t
