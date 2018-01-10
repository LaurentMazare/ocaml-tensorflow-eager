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
let ( *^) x y = matMul x y

open Tf_core

let of_strings strings ~shape =
  Eager.Tensor_handle.of_strings_exn strings ~shape
  |> fun h -> Op.Tensor_handle.of_c h String

let of_string str =
  Eager.Tensor_handle.of_string_exn str
  |> fun h -> Op.Tensor_handle.of_c h String

let scalar_exn ?(shape=[]) tensor_type_ type_ value =
  let tensor = Tensor.create tensor_type_ (Array.of_list shape) in
  Tensor.fill tensor value;
  Eager.Tensor_handle.create_exn (Tensor.P tensor)
  |> fun h -> Op.Tensor_handle.of_c h type_

let vec_exn tensor_type_ type_ list =
  let tensor = Tensor.create tensor_type_ [| List.length list |] in
  Tensor.copy_elt_list tensor list;
  Eager.Tensor_handle.create_exn (Tensor.P tensor)
  |> fun h -> Op.Tensor_handle.of_c h type_

let i32 ?shape i = scalar_exn ?shape Int32 Int32 (Int32.of_int_exn i)
let one32 = i32 1
let zero32 = i32 0

let f32 ?shape f = scalar_exn ?shape Float32 Float f

let f64 ?shape f = scalar_exn ?shape Float64 Double f

let float : type a . ?shape:int list -> float -> a Operation.Type.t -> a t =
  fun ?shape value type_ ->
  match type_ with
  | Type.Float -> f32 ?shape value
  | Type.Double -> f64 ?shape value
  | _ -> assert false

let vec_i32 i = vec_exn Int32 Int32 (List.map ~f:Int32.of_int_exn i)

let vec_f32 f = vec_exn Float32 Float f

let vec_f64 f = vec_exn Float64 Double f

let vec_float : type a . float list -> a Operation.Type.t -> a t = fun value type_ ->
  match type_ with
  | Type.Float -> vec_f32 value
  | Type.Double -> vec_f64 value
  | _ -> assert false

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

let irange r = range zero32 r one32

let reduce op ?dims node =
  let dims =
    match dims with
    | Some dims -> vec_i32 dims
    | None -> irange (rank node)
  in
  op node dims

type 'a reduce_fn
   =  ?dims:int list
  -> ([< `complex64 | `double | `float | `int32 | `int64 ] as 'a) t
  -> 'a t

let reduce_sum ?dims node = reduce sum ?dims node
let reduce_mean ?dims node = reduce mean ?dims node
let reduce_min ?dims node = reduce min ?dims node
let reduce_max ?dims node = reduce max ?dims node
let reduce_prod ?dims node = reduce prod ?dims node
let reduce_all ?dims node = reduce all ?dims node
let reduce_any ?dims node = reduce any ?dims node

let watch = Op.Tensor_handle.watch

let cross_entropy ?(epsilon = 1e-7) ~ys ~y_hats sum_or_mean =
  let type_ = Op.Tensor_handle.type_ ys in
  let reduce =
    match sum_or_mean with
    | `sum -> reduce_sum
    | `mean -> reduce_mean
  in
  neg (ys * log (y_hats + float epsilon type_)) |> reduce

let arg_max th = argMax ~type_output_type:Int32 th one32
