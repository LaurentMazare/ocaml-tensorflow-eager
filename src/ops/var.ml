open Base
open Tf_core
module Th = Op.Tensor_handle

type 'a t = 'a Th.var

let resource = Th.var_op

let context = Op.default_context ()

let fresh_name =
  let counter = ref 0 in
  fun () ->
    Int.incr counter;
    Printf.sprintf "__internal__%d" !counter

let variable ~shape ?(container="") ?shared_name () =
  let type_ = Operation.Type.Resource in
  let shared_name =
    match shared_name with
    | None -> fresh_name ()
    | Some shared_name -> shared_name
  in
  Op.create context (Op.Name.of_string "VarHandleOp")
    []
    [ "dtype", `type_ (Operation.Type.(to_data_type (P type_)))
    ; "shape", `shape shape
    ; "container", `string container
    ; "shared_name", `string shared_name
    ]
  |> fun op -> Op.execute1 op type_

let assign t value =
  Op.create context (Op.Name.of_string "AssignVariableOp")
    [Th.P (resource t); Th.P value]
    [ "dtype", `type_ (Th.data_type value) ]
  |> Op.execute0

let create initial_value =
  let op = variable ~shape:(Th.dims initial_value) () in
  let t = Th.var_create op (Th.type_ initial_value) in
  assign t initial_value;
  t

let read t =
  let var_type = Th.var_type t in
  Op.create context (Op.Name.of_string "ReadVariableOp")
    [Th.P (resource t)]
    [ "dtype", `type_ (Operation.Type.(to_data_type (P var_type)))]
  |> fun op -> Op.execute1 op var_type

let read_and_watch t = Th.watch (read t) (Some t)

let f32 shape f =
  let op = variable ~shape () in
  let t = Th.var_create op Float in
  assign t (Ops.f32 ~shape f);
  t

let truncated_normal_f32 shape_ ~stdev =
  let op = variable ~shape:shape_ () in
  let t = Th.var_create op Float in
  assign t Ops.(truncatedNormal ~type_dtype:Float (Ops.vec_i32 shape_) * f32 stdev);
  t
