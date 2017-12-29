open Ctypes

module C = Tf_bindings.C(Tf_generated)
open C

module Status = Wrapper.Status

module Context = struct
  type t = Tfe_context.t

  let create ?session_options () =
    let session_options =
      match session_options with
      | None -> Wrapper.Session_options.create ()
      | Some session_options -> session_options
    in
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let context =
      Tfe_context.tfe_newcontext (Wrapper.Session_options.to_ptr session_options) status_ptr
    in
    Gc.finalise
      (fun context -> Tfe_context.tfe_deletecontext context status_ptr)
      context;
    Status.result_or_error status context
end

module Tensor_handle = struct
  type t = Tfe_tensor_handle.t

  let create tensor =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let tensor_handle =
      Tfe_tensor_handle.tfe_newtensorhandle
        (Wrapper.Tensor.c_tensor_of_tensor tensor)
        status_ptr
    in
    Gc.finalise
      (fun tensor_handle -> Tfe_tensor_handle.tfe_deletetensorhandle tensor_handle)
      tensor_handle;
    Status.result_or_error status tensor_handle

  let resolve t =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let tensor = Tfe_tensor_handle.tfe_tensorhandleresolve t status_ptr in
    match Status.code status with
    | TF_OK -> Status.Ok (Wrapper.Tensor.tensor_of_c_tensor tensor)
    | _ -> Status.Error status

  let dims t =
    let num_dims = Tfe_tensor_handle.tfe_tensorhandlenumdims t in
    List.init num_dims (fun i -> Tfe_tensor_handle.tfe_tensorhandledim t i)

  let data_type t =
    Tfe_tensor_handle.tfe_tensorhandledatatype t
    |> Wrapper.int_to_data_type
end

module Op = struct
  type t = Tfe_op.t

  let create context op_name =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let op = Tfe_op.tfe_newop context op_name status_ptr in
    Gc.finalise
      (fun op -> Tfe_op.tfe_deleteop op)
      op;
    Status.result_or_error status op

  let set_attr_type t name data_type =
    Tfe_op.tfe_opsetattrtype t name (Wrapper.data_type_to_int data_type)

  let set_attr_string t name value =
    Tfe_op.tfe_opsetattrstring t name value

  let set_attr_bool t name value =
    Tfe_op.tfe_opsetattrbool t name value

  let set_attr_int t name value =
    Tfe_op.tfe_opsetattrint t name value

  let set_attr_float t name value =
    Tfe_op.tfe_opsetattrfloat t name value

  let add_input t tensor_handle =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    Tfe_op.tfe_opaddinput t tensor_handle status_ptr;
    Status.result_or_error status ()
end

let execute op ~output_len =
  let status = Status.create () in
  let status_ptr = Status.to_ptr status in
  let output_handles = CArray.make Tfe_tensor_handle.t output_len in
  let output_len = allocate int output_len in
  Tfe_op.tfe_execute op (CArray.start output_handles) output_len status_ptr;
  let output_handles = CArray.to_list output_handles in
  Status.result_or_error status output_handles
