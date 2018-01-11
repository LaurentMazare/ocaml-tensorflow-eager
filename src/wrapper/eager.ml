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

  let create_exn tensor =
    create tensor |> Status.ok_exn

  let resolve t =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let tensor = Tfe_tensor_handle.tfe_tensorhandleresolve t status_ptr in
    match Status.code status with
    | TF_OK -> Status.Ok (Wrapper.Tensor.tensor_of_c_tensor tensor)
    | _ -> Status.Error status

  let resolve_exn t =
    resolve t |> Status.ok_exn

  let dims t =
    let num_dims = Tfe_tensor_handle.tfe_tensorhandlenumdims t in
    List.init num_dims (fun i -> Tfe_tensor_handle.tfe_tensorhandledim t i)

  let data_type t =
    Tfe_tensor_handle.tfe_tensorhandledatatype t
    |> Wrapper.int_to_data_type

  let type_ t =
    data_type t
    |> Operation.Type.of_data_type

  let of_strings strings ~shape =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let tensor_handle =
      Tfe_tensor_handle.tfe_newtensorhandle
        (Wrapper.Tensor.c_tensor_of_strings strings ~shape)
        status_ptr
    in
    Gc.finalise
      (fun tensor_handle -> Tfe_tensor_handle.tfe_deletetensorhandle tensor_handle)
      tensor_handle;
    Status.result_or_error status tensor_handle

  let of_strings_exn strings ~shape =
    of_strings strings ~shape
    |> Status.ok_exn

  let of_string string = of_strings [ string ] ~shape:[]
  let of_string_exn string = of_strings_exn [ string ] ~shape:[]
end

module Op = struct
  type t = Tfe_op.t

  let create context op_name =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let op =
      Tfe_op.tfe_newop
        context
        (Wrapper.ptr_of_string op_name)
        status_ptr
    in
    Gc.finalise
      (fun op -> Tfe_op.tfe_deleteop op)
      op;
    Status.result_or_error status op

  let set_attr_type t name data_type =
    Tfe_op.tfe_opsetattrtype
      t
      (Wrapper.ptr_of_string name)
      (Wrapper.data_type_to_int data_type)

  let set_attr_string t name value =
    Tfe_op.tfe_opsetattrstring
      t
      (Wrapper.ptr_of_string name)
      (Wrapper.ptr_of_string value)

  let set_attr_bool t name value =
    let value =
      if value
      then Unsigned.UChar.one
      else Unsigned.UChar.zero
    in
    Tfe_op.tfe_opsetattrbool
      t
      (Wrapper.ptr_of_string name)
      value

  let set_attr_int t name value =
    Tfe_op.tfe_opsetattrint
      t
      (Wrapper.ptr_of_string name)
      value

  let set_attr_float t name value =
    Tfe_op.tfe_opsetattrfloat
      t
      (Wrapper.ptr_of_string name)
      value

  let set_attr_shape t name value =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let num_dims = List.length value in
    let value = List.map Int64.of_int value in
    (* TODO: ensure that this does not get deallocated, see github issue #1. *)
    let value = CArray.(of_list int64_t value |> start) in
    Tfe_op.tfe_opsetattrshape
      t
      (Wrapper.ptr_of_string name)
      value
      num_dims
      status_ptr;
    Status.result_or_error status ()

  let set_attr_shape_list t name values =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let num_values = List.length values in
    let dims = List.map List.length values in
    let dims = CArray.(of_list int dims |> start) in
    let values =
      List.map (fun l ->
        let l = List.map Int64.of_int l in
        CArray.(of_list int64_t l |> start)) values
    in
    (* TODO: ensure that this does not get deallocated, see github issue #1. *)
    let values = CArray.(of_list (ptr int64_t) values |> start) in
    Tfe_op.tfe_opsetattrshapelist
      t
      (Wrapper.ptr_of_string name)
      values
      dims
      num_values
      status_ptr;
    Status.result_or_error status ()

  let set_attr_int_list t name values =
    let values_len = List.length values in
    (* TODO: ensure that this does not get deallocated, see github issue #1. *)
    let values = CArray.(of_list int64_t values |> start) in
    Tfe_op.tfe_opsetattrintlist
      t
      (Wrapper.ptr_of_string name)
      values
      values_len

  let set_attr_float_list t name values =
    let values_len = List.length values in
    (* TODO: ensure that this does not get deallocated, see github issue #1. *)
    let values = CArray.(of_list float values |> start) in
    Tfe_op.tfe_opsetattrfloatlist
      t
      (Wrapper.ptr_of_string name)
      values
      values_len

  let set_attr_type_list t name values =
    let values_len = List.length values in
    let values = List.map Wrapper.data_type_to_int values in
    (* TODO: ensure that this does not get deallocated, see github issue #1. *)
    let values = CArray.(of_list int values |> start) in
    Tfe_op.tfe_opsetattrtypelist
      t
      (Wrapper.ptr_of_string name)
      values
      values_len

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

let execute_exn op ~output_len =
  execute op ~output_len
  |> Status.ok_exn
