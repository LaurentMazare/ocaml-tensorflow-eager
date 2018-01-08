open Base
include Generated
type p = Op.Tensor_handle.p

let (+) = add
let (-) = sub
let ( * ) = mul
let (/) = div

let context = Op.default_context ()

let print ?(summarize=20) ?(message = "") tensor_handle =
  let data_type = Op.Tensor_handle.data_type tensor_handle in
  Op.create context (Op.Name.of_string "Print")
    [ Op.Tensor_handle.P tensor_handle; Op.Tensor_handle.P tensor_handle ]
    [ "T", `type_ data_type
    ; "U", `list_type [ data_type ]
    ; "message", `string message
    ; "summarize", `int summarize
    ; "first_n", `int (-1)
    ]
  |> Op.execute0

let mm = matMul

open Tf_core

let of_strings strings ~shape =
  Eager.Tensor_handle.of_strings_exn strings ~shape
  |> fun h -> Op.Tensor_handle.of_c h String

let of_string str =
  Eager.Tensor_handle.of_string_exn str
  |> fun h -> Op.Tensor_handle.of_c h String

let scalar_exn tensor_type_ type_ value =
  let tensor = Tensor.create tensor_type_ [||] in
  Tensor.set tensor [||] value;
  Eager.Tensor_handle.create_exn (Tensor.P tensor)
  |> fun h -> Op.Tensor_handle.of_c h type_

let vec_exn tensor_type_ type_ list =
  let tensor = Tensor.create tensor_type_ [| List.length list |] in
  Tensor.copy_elt_list tensor list;
  Eager.Tensor_handle.create_exn (Tensor.P tensor)
  |> fun h -> Op.Tensor_handle.of_c h type_

let i32 i = scalar_exn Int32 Int32 (Int32.of_int_exn i)

let f32 f = scalar_exn Float32 Float f

let f64 f = scalar_exn Float64 Double f

let vec_i32 i = vec_exn Int32 Int32 (List.map ~f:Int32.of_int_exn i)

let vec_f32 f = vec_exn Float32 Float f

let vec_f64 f = vec_exn Float64 Double f

let to_float t =
  let output_tensor = Op.Tensor_handle.resolve t in
  match Tensor.float32 output_tensor with
  | Some tensor -> Tensor.get tensor [||]
  | None ->
    match Tensor.float64 output_tensor with
    | Some tensor -> Tensor.get tensor [||]
    | None -> failwith "not a float32/float64 tensor"

let to_float_list t =
  Op.Tensor_handle.resolve t |> Tensor.to_float_list

let to_int_list t =
  Op.Tensor_handle.resolve t |> Tensor.to_int_list

let packed_to_float (Op.Tensor_handle.P t) = to_float t
let packed_to_float_list (Op.Tensor_handle.P t) = to_float_list t
let packed_to_int_list (Op.Tensor_handle.P t) = to_int_list t

let watch = Op.Tensor_handle.watch
