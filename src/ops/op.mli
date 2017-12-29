open Base
open Tf_core

type t = Eager.Op.t
type tensor_handle = Eager.Tensor_handle.t
type context = Eager.Context.t

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

val add_input : t -> tensor_handle -> unit

val execute : t -> output_len:int -> tensor_handle list

val execute0 : t -> unit
val execute1 : t -> tensor_handle
val execute2 : t -> tensor_handle * tensor_handle
val execute3 : t -> tensor_handle * tensor_handle * tensor_handle
val execute4 : t -> tensor_handle * tensor_handle * tensor_handle * tensor_handle
val execute5 : t -> tensor_handle * tensor_handle * tensor_handle * tensor_handle * tensor_handle
val execute6 : t -> tensor_handle * tensor_handle * tensor_handle * tensor_handle * tensor_handle * tensor_handle
val execute7 : t -> tensor_handle * tensor_handle * tensor_handle * tensor_handle * tensor_handle * tensor_handle * tensor_handle

val tensor_handle_data_type : tensor_handle -> Wrapper.data_type
