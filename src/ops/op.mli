(* TODO: Consider functorizing generated ops over this signature ? *)
open Base
open Tf_core

module Name : Identifiable.S

type t

module Tape_info : sig
  type _ t

  val op_name : _ t -> Name.t
  val inputs : 'a t -> 'a list
end

module Tensor_handle : sig
  module Id : Identifiable.S
  type _ t
  type p = P : _ t -> p

  val create_exn : Tensor.p -> _ t

  val resolve_exn : _ t -> Tensor.p

  val dims : _ t -> int list

  val data_type : _ t -> Wrapper.data_type
  val data_type_p : p -> Wrapper.data_type

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

  (* Tape/gradient related operations. *)
  val tape_info : 'a t -> [ `none | `leaf | `node of p Tape_info.t ]
  val watch : 'a t -> 'a t
  val id : _ t -> Id.t
end

type context

val default_context : unit -> context

type attr =
  [ `bool of bool
  | `float of float
  | `int of int
  | `list_float of float list
  | `list_int of int list
  | `list_shape of int list list
  | `list_type of Tf_core.Wrapper.data_type list
  | `list_type_p of Operation.Type.p list
  | `shape of int list
  | `string of string
  | `type_ of Tf_core.Wrapper.data_type
  ]

val create
  :  context
  -> Name.t
  -> Tensor_handle.p list
  -> (string * attr) list
  -> t

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
