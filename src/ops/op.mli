(* TODO: Consider functorizing generated ops over this signature ? *)
open Base
open Tf_core

module Name : Identifiable.S

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

val set_attr_bool : t -> name:string -> value:bool -> t
val set_attr_float : t -> name:string -> value:float -> t
val set_attr_float_list : t -> name:string -> value:float list -> t
val set_attr_int : t -> name:string -> value:int -> t
val set_attr_int_list : t -> name:string -> value:int list -> t
val set_attr_shape : t -> name:string -> value:int list -> t
val set_attr_shape_list : t -> name:string -> value:int list list -> t
val set_attr_string : t -> name:string -> value:string -> t
val set_attr_type : t -> name:string -> value:_ Operation.Type.t -> t
val set_attr_type_list : t -> name:string -> value:Operation.Type.p list -> t
val set_attr_data_type : t -> name:string -> value:Wrapper.data_type -> t
val set_attr_data_type_list : t -> name:string -> value:Wrapper.data_type list -> t

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
