(* TODO: Consider functorizing generated ops over this signature ? *)
open Base
open Tf_core

module Name : Identifiable.S

type t

module Tape_info : sig
  type _ t

  val op_name : _ t -> Name.t
  val inputs : 'a t -> 'a list
  val output_idx : 'a t -> int option
end

module Tensor_handle : sig
  module Id : Identifiable.S
  type _ t
  type p = P : _ t -> p

  val of_c : Eager.Tensor_handle.t -> 'a Operation.Type.t -> 'a t
  val create : Tensor.p -> 'a Operation.Type.t -> 'a t

  val resolve : _ t -> Tensor.p

  val dims : _ t -> int list

  val data_type : _ t -> Wrapper.data_type
  val data_type_p : p -> Wrapper.data_type

  val id : _ t -> Id.t
  val type_ : 'a t -> 'a Operation.Type.t
  val unpack : p -> 'a Operation.Type.t -> 'a t option
  val unpack_exn : p -> 'a Operation.Type.t -> 'a t

  (* Tape/gradient related operations. *)
  val tape_info : 'a t -> [ `none | `leaf | `node of p Tape_info.t ]
  val watch : 'a t -> 'a t
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

val execute : t -> 'a Operation.Type.t -> output_len:int -> 'a Tensor_handle.t list

val execute0 : t -> unit
val execute1
  :  t
  -> 'a1 Operation.Type.t
  -> 'a1 Tensor_handle.t

val execute2
  :  t
  -> 'a1 Operation.Type.t
  -> 'a2 Operation.Type.t
  -> 'a1 Tensor_handle.t * 'a2 Tensor_handle.t

val execute3
  :  t
  -> 'a1 Operation.Type.t
  -> 'a2 Operation.Type.t
  -> 'a3 Operation.Type.t
  -> 'a1 Tensor_handle.t * 'a2 Tensor_handle.t * 'a3 Tensor_handle.t

val execute4
  :  t
  -> 'a1 Operation.Type.t
  -> 'a2 Operation.Type.t
  -> 'a3 Operation.Type.t
  -> 'a4 Operation.Type.t
  -> 'a1 Tensor_handle.t * 'a2 Tensor_handle.t * 'a3 Tensor_handle.t * 'a4 Tensor_handle.t

val execute5
  :  t
  -> 'a1 Operation.Type.t
  -> 'a2 Operation.Type.t
  -> 'a3 Operation.Type.t
  -> 'a4 Operation.Type.t
  -> 'a5 Operation.Type.t
  -> 'a1 Tensor_handle.t * 'a2 Tensor_handle.t * 'a3 Tensor_handle.t * 'a4 Tensor_handle.t * 'a5 Tensor_handle.t

val execute6
  :  t
  -> 'a1 Operation.Type.t
  -> 'a2 Operation.Type.t
  -> 'a3 Operation.Type.t
  -> 'a4 Operation.Type.t
  -> 'a5 Operation.Type.t
  -> 'a6 Operation.Type.t
  -> 'a1 Tensor_handle.t * 'a2 Tensor_handle.t * 'a3 Tensor_handle.t * 'a4 Tensor_handle.t * 'a5 Tensor_handle.t * 'a6 Tensor_handle.t

val execute7
  :  t
  -> 'a1 Operation.Type.t
  -> 'a2 Operation.Type.t
  -> 'a3 Operation.Type.t
  -> 'a4 Operation.Type.t
  -> 'a5 Operation.Type.t
  -> 'a6 Operation.Type.t
  -> 'a7 Operation.Type.t
  -> 'a1 Tensor_handle.t * 'a2 Tensor_handle.t * 'a3 Tensor_handle.t * 'a4 Tensor_handle.t * 'a5 Tensor_handle.t * 'a6 Tensor_handle.t * 'a7 Tensor_handle.t

type 'a binary = 'a Tensor_handle.t -> 'a Tensor_handle.t -> 'a Tensor_handle.t
