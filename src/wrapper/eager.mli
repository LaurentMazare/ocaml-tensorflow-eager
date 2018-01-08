module Status = Wrapper.Status

module Context : sig
  type t

  val create
    :  ?session_options:Wrapper.Session_options.t
    -> unit
    -> t Status.result
end

module Tensor_handle : sig
  type t

  val create : Tensor.p -> t Status.result

  val create_exn : Tensor.p -> t

  val resolve : t -> Tensor.p Status.result

  val resolve_exn : t -> Tensor.p

  val dims : t -> int list

  val data_type : t -> Wrapper.data_type

  val of_strings : string list -> shape:int list -> t Status.result
  val of_strings_exn : string list -> shape:int list -> t

  val of_string : string -> t Status.result
  val of_string_exn : string -> t

  val type_ : t -> Operation.Type.p
end

module Op : sig
  type t

  val create : Context.t -> string -> t Status.result

  val add_input : t -> Tensor_handle.t -> unit Status.result

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

val execute : Op.t -> output_len:int -> Tensor_handle.t list Status.result
val execute_exn : Op.t -> output_len:int -> Tensor_handle.t list
