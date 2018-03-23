open Ctypes

module C = Tf_bindings.C(Tf_generated)
open C

module Status = Wrapper.Status

let keep_alive t =
  if to_voidp t = null
  then failwith "null pointer"

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
    let c_tensor = Wrapper.Tensor.c_tensor_of_tensor tensor in
    let tensor_handle =
      Tfe_tensor_handle.tfe_newtensorhandle
        c_tensor
        status_ptr
    in
    Gc.finalise
      (fun tensor_handle ->
        Tfe_tensor_handle.tfe_deletetensorhandle tensor_handle;
        C.Tf_tensor.tf_deletetensor c_tensor)
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

  exception Cannot_get_dimension of Status.t

  let dims t =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let num_dims = Tfe_tensor_handle.tfe_tensorhandlenumdims t status_ptr in
    match Status.code status with
    | TF_OK -> begin
      try
        Status.Ok
          (List.init num_dims (fun i ->
            let status = Status.create () in
            let status_ptr = Status.to_ptr status in
            let dim = Tfe_tensor_handle.tfe_tensorhandledim t i status_ptr in
            match Status.code status with
            | TF_OK -> dim
            | _ -> raise (Cannot_get_dimension status)))
      with Cannot_get_dimension status -> Status.Error status
    end
    | _ -> Status.Error status


  let dims_exn t =
    dims t |> Status.ok_exn

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
  type anything = P : _ -> anything
  type t =
    { op: Tfe_op.t
    (* List of things to keep around so that the GC does not collect them. *)
    ; mutable to_keep : anything list
    }

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
    let t = { op; to_keep = [] } in
    Status.result_or_error status t

  let set_attr_type t name data_type =
    Tfe_op.tfe_opsetattrtype
      t.op
      (Wrapper.ptr_of_string name)
      (Wrapper.data_type_to_int data_type)

  let set_attr_string t name value =
    Tfe_op.tfe_opsetattrstring
      t.op
      (Wrapper.ptr_of_string name)
      (Wrapper.ptr_of_string value)

  let set_attr_bool t name value =
    let value =
      if value
      then Unsigned.UChar.one
      else Unsigned.UChar.zero
    in
    Tfe_op.tfe_opsetattrbool
      t.op
      (Wrapper.ptr_of_string name)
      value

  let set_attr_int t name value =
    Tfe_op.tfe_opsetattrint
      t.op
      (Wrapper.ptr_of_string name)
      value

  let set_attr_float t name value =
    Tfe_op.tfe_opsetattrfloat
      t.op
      (Wrapper.ptr_of_string name)
      value

  let set_attr_shape t name value =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    let num_dims = List.length value in
    let value = List.map Int64.of_int value in
    let value = CArray.(of_list int64_t value |> start) in
    t.to_keep <- (P value) :: t.to_keep;
    Tfe_op.tfe_opsetattrshape
      t.op
      (Wrapper.ptr_of_string name)
      value
      num_dims
      status_ptr;
    keep_alive t.op;
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
    let values = CArray.(of_list (ptr int64_t) values |> start) in
    t.to_keep <- (P values) :: t.to_keep;
    Tfe_op.tfe_opsetattrshapelist
      t.op
      (Wrapper.ptr_of_string name)
      values
      dims
      num_values
      status_ptr;
    keep_alive t.op;
    Status.result_or_error status ()

  let set_attr_int_list t name values =
    let values_len = List.length values in
    let values = CArray.(of_list int64_t values |> start) in
    t.to_keep <- (P values) :: t.to_keep;
    Tfe_op.tfe_opsetattrintlist
      t.op
      (Wrapper.ptr_of_string name)
      values
      values_len;
    keep_alive t.op

  let set_attr_float_list t name values =
    let values_len = List.length values in
    let values = CArray.(of_list float values |> start) in
    t.to_keep <- (P values) :: t.to_keep;
    Tfe_op.tfe_opsetattrfloatlist
      t.op
      (Wrapper.ptr_of_string name)
      values
      values_len;
    keep_alive t.op

  let set_attr_type_list t name values =
    let values_len = List.length values in
    let values = List.map Wrapper.data_type_to_int values in
    let values = CArray.(of_list int values |> start) in
    t.to_keep <- (P values) :: t.to_keep;
    Tfe_op.tfe_opsetattrtypelist
      t.op
      (Wrapper.ptr_of_string name)
      values
      values_len;
    keep_alive t.op

  let add_input t tensor_handle =
    let status = Status.create () in
    let status_ptr = Status.to_ptr status in
    t.to_keep <- (P tensor_handle) :: t.to_keep;
    Tfe_op.tfe_opaddinput t.op tensor_handle status_ptr;
    keep_alive t.op;
    Status.result_or_error status ()
end

let execute (op : Op.t) ~output_len =
  let status = Status.create () in
  let status_ptr = Status.to_ptr status in
  let output_handles = CArray.make Tfe_tensor_handle.t output_len in
  let output_len = allocate int output_len in
  Tfe_op.tfe_execute op.op (CArray.start output_handles) output_len status_ptr;
  keep_alive op.op;
  let output_handles = CArray.to_list output_handles in
  List.iter
    (fun output_handle ->
      Gc.finalise Tfe_tensor_handle.tfe_deletetensorhandle output_handle)
    output_handles;
  Status.result_or_error status output_handles

let execute_exn op ~output_len =
  execute op ~output_len
  |> Status.ok_exn
