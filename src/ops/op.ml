open Base
open Tf_core

module Name : Identifiable.S = String

module Tape_info : sig
  type t
  val create : unit -> t
end = struct
  (* TODO *)
  type t = unit

  let create () = ()
end

module Tensor_handle = struct
  type 'a t =
    { handle : 'a Eager.Tensor_handle.t
    ; tape_info : Tape_info.t option
    }

  type p = P : _ t -> p

  let create_no_tape_info handle =
    { handle; tape_info = None }

  let create_exn tensor =
    Eager.Tensor_handle.create_exn tensor
    |> create_no_tape_info

  let of_strings_exn strings ~shape =
    Eager.Tensor_handle.of_strings_exn strings ~shape
    |> create_no_tape_info

  let of_string_exn str =
    Eager.Tensor_handle.of_string_exn str
    |> create_no_tape_info

  let scalar_exn type_ value =
    let tensor = Tensor.create type_ [||] in
    Tensor.set tensor [||] value;
    Eager.Tensor_handle.create_exn (Tensor.P tensor)
    |> create_no_tape_info

  let vec_exn type_ list =
    let tensor = Tensor.create type_ [| List.length list |] in
    Tensor.copy_elt_list tensor list;
    Eager.Tensor_handle.create_exn (Tensor.P tensor)
    |> create_no_tape_info

  let scalar_i32_exn i = scalar_exn Int32 (Int32.of_int_exn i)

  let scalar_f32_exn f = scalar_exn Float32 f

  let scalar_f64_exn f = scalar_exn Float64 f

  let vec_i32_exn i = vec_exn Int32 (List.map ~f:Int32.of_int_exn i)

  let vec_f32_exn f = vec_exn Float32 f

  let vec_f64_exn f = vec_exn Float64 f

  let resolve_exn t = Eager.Tensor_handle.resolve_exn t.handle
  let resolve_scalar_float_exn t =
    let output_tensor = resolve_exn t in
    match Tensor.float32 output_tensor with
    | Some tensor -> Tensor.get tensor [||]
    | None ->
      match Tensor.float64 output_tensor with
      | Some tensor -> Tensor.get tensor [||]
      | None -> failwith "not a float32/float64 tensor"

  let resolve_vec_float_exn t =
    resolve_exn t |> Tensor.to_float_list

  let resolve_vec_int_exn t =
    resolve_exn t |> Tensor.to_int_list

  let dims t = Eager.Tensor_handle.dims t.handle
  let data_type t = Eager.Tensor_handle.data_type t.handle

  let watch t =
    { t with tape_info = Some (Tape_info.create ()) }
end

type t =
  { op : Eager.Op.t
  ; rev_inputs : Tensor_handle.p list
  }

type context = Eager.Context.t

let default_context () =
  Eager.Context.create ()
  |> Wrapper.Status.ok_exn

let create context name =
  let op = Eager.Op.create context (Name.to_string name) |> Wrapper.Status.ok_exn in
  { op; rev_inputs = [] }

let set_attr_string t ~name ~value =
  Eager.Op.set_attr_string t.op name value;
  t

let set_attr_bool t ~name ~value =
  Eager.Op.set_attr_bool t.op name value;
  t

let set_attr_float t ~name ~value =
  Eager.Op.set_attr_float t.op name value;
  t

let set_attr_float_list t ~name ~value =
  Eager.Op.set_attr_float_list t.op name value;
  t

let set_attr_data_type t ~name ~value =
  Eager.Op.set_attr_type t.op name value;
  t

let set_attr_data_type_list t ~name ~value =
  Eager.Op.set_attr_type_list t.op name value;
  t

let set_attr_type t ~name ~value =
  Eager.Op.set_attr_type t.op name (Operation.Type.P value |> Operation.Type.to_data_type);
  t

let set_attr_type_list t ~name ~value =
  let value = List.map value ~f:Operation.Type.to_data_type in
  Eager.Op.set_attr_type_list t.op name value;
  t

let set_attr_int t ~name ~value =
  Eager.Op.set_attr_int t.op name (Int64.of_int value);
  t

let set_attr_int_list t ~name ~value =
  Eager.Op.set_attr_int_list t.op name (List.map value ~f:Int64.of_int);
  t

let set_attr_shape t ~name ~value =
  Eager.Op.set_attr_shape t.op name value |> Wrapper.Status.ok_exn;
  t

let set_attr_shape_list t ~name ~value =
  Eager.Op.set_attr_shape_list t.op name value |> Wrapper.Status.ok_exn;
  t

let add_input t th =
  Eager.Op.add_input t.op th.Tensor_handle.handle
  |> Wrapper.Status.ok_exn;
  { op = t.op; rev_inputs = Tensor_handle.P th :: t.rev_inputs }

let create_handle t handle =
  let tape_info =
    if List.exists t.rev_inputs ~f:(fun (Tensor_handle.P th) -> Option.is_some (th.tape_info))
    then Some (Tape_info.create ())
    else None
  in
  { Tensor_handle.handle
  ; tape_info
  }

let execute t ~output_len =
  Eager.execute_exn t.op ~output_len
  |> List.map ~f:(create_handle t)

let execute0 t =
  Eager.execute0_exn t.op

let execute1 t =
  let th1 = Eager.execute1_exn t.op in
  create_handle t th1

let execute2 t =
  let th1, th2 = Eager.execute2_exn t.op in
  create_handle t th1,
  create_handle t th2

let execute3 t =
  let th1, th2, th3 = Eager.execute3_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3

let execute4 t =
  let th1, th2, th3, th4 = Eager.execute4_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4

let execute5 t =
  let th1, th2, th3, th4, th5 = Eager.execute5_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4,
  create_handle t th5

let execute6 t =
  let th1, th2, th3, th4, th5, th6 = Eager.execute6_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4,
  create_handle t th5,
  create_handle t th6

let execute7 t =
  let th1, th2, th3, th4, th5, th6, th7 = Eager.execute7_exn t.op in
  create_handle t th1,
  create_handle t th2,
  create_handle t th3,
  create_handle t th4,
  create_handle t th5,
  create_handle t th6,
  create_handle t th7

type 'a binary = 'a Tensor_handle.t -> 'a Tensor_handle.t -> 'a Tensor_handle.t
