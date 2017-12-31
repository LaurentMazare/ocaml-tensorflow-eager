open Base
module Ops = Tf_ops.Ops
module Tensor_handle = Tf_core.Eager.Tensor_handle
module Type = Tf_core.Operation.Type

let img_dim = 224

let reshape th ~shape = Ops.reshape th (Tensor_handle.vec_i32_exn shape)

let read_image filename =
  let image =
    Tensor_handle.of_string_exn filename
    |> Ops.readFile
    |> Ops.decodePng ~type_dtype:Type.UInt8 ~channels:3
  in
  let height, width =
    match Tensor_handle.dims image with
    | [ height; width; 3 ] -> height, width
    | _ -> assert false
  in
  let min_edge = Int.min height width in
  Ops.slice image
    (Tensor_handle.vec_i32_exn [ (height - min_edge)/2; (width - min_edge)/2; 0 ])
    (Tensor_handle.vec_i32_exn [ min_edge; min_edge; 3 ])
  |> reshape ~shape:[1; min_edge; min_edge; 3]
  |> fun th -> Ops.resizeBicubic th (Tensor_handle.vec_i32_exn [ img_dim; img_dim ])
  |> fun th -> Ops.reverseV2 th (Tensor_handle.vec_i32_exn [-1]) (* Switch from RGB to BGR. *)
  |> fun th -> Ops.(-) th (Tensor_handle.vec_f32_exn [ 103.939; 116.779; 123.68 ])
