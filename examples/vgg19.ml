module P = Printf
open Base

module Ops = Tf_ops.Ops
module Tensor = Tf_core.Tensor
module Tensor_handle = Tf_core.Eager.Tensor_handle
module Type = Tf_core.Operation.Type

let img_dim = 224

let ckpt_file = Tensor_handle.of_string_exn "vgg19.ckpt"

let restore ~name ~shape:_ =
  Ops.restore ckpt_file (Tensor_handle.of_string_exn name)
    ~type_dt:Type.Float

let conv2d th ~in_channels ~out_channels ~name =
  let prefix = P.sprintf "%s/%s_" name name in
  let w = restore ~name:(prefix ^ "filters") ~shape:[ 3; 3; in_channels; out_channels ] in
  let b = restore ~name:(prefix ^ "biases") ~shape:[ out_channels ] in
  let conv2d = Ops.conv2D th w ~strides:[1; 1; 1; 1] ~padding:"SAME" in
  Ops.(+) conv2d b

let max_pool th = Ops.maxPool th ~ksize:[1; 2; 2; 1] ~strides:[1; 2; 2; 1] ~padding:"SAME"

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

let dense ~name out_dims th =
  let in_dims = Tensor_handle.dims th |> List.last_exn in
  let prefix = P.sprintf "%s/%s_" name name in
  let w = restore ~name:(prefix ^ "weights") ~shape:[ in_dims; out_dims ] in
  let b = restore ~name:(prefix ^ "biases") ~shape:[ out_dims ] in
  Ops.(matMul th w + b)

let vgg19 filename =
  let block iter ~block_idx ~out_channels th =
    let in_channels = Tensor_handle.dims th |> List.last_exn in
    List.init iter ~f:Fn.id
    |> List.fold ~init:th ~f:(fun acc idx ->
        let in_channels = if idx = 0 then in_channels else out_channels in
        conv2d acc ~in_channels ~out_channels
          ~name:(P.sprintf "conv%d_%d" block_idx (idx+1))
        |> Ops.relu)
    |> max_pool
  in
  read_image filename
  |> block 2 ~block_idx:1 ~out_channels:64
  |> block 2 ~block_idx:2 ~out_channels:128
  |> block 4 ~block_idx:3 ~out_channels:256
  |> block 4 ~block_idx:4 ~out_channels:512
  |> block 4 ~block_idx:5 ~out_channels:512
  |> reshape ~shape:[1; -1]
  |> dense ~name:"fc6" 4096
  |> Ops.relu
  |> dense ~name:"fc7" 4096
  |> Ops.relu
  |> dense ~name:"fc8" 1000
  |> Ops.softmax

let () =
  let logits = vgg19 "image.jpg" in
  let pr5, top5 = Ops.topKV2 logits (Tensor_handle.scalar_i32_exn 5) in
  Ops.print pr5;
  Ops.print top5
