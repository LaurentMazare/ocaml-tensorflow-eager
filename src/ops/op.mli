(* TODO: Consider functorizing generated ops over this signature ? *)
open Base
open Tf_core

type t
module Tensor_handle : module type of Eager.Tensor_handle

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

val add_input : t -> _ Tensor_handle.t -> unit

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
