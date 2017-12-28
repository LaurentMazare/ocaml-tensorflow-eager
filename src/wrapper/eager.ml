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
      Tfe_tensor_handle.tfe_newtensorhandle tensor status_ptr
    in
    Gc.finalise
      (fun tensor_handle -> Tfe_tensor_handle.tfe_deletetensorhandle tensor_handle)
      tensor_handle;
    Status.result_or_error status tensor_handle
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
end