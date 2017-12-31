module P = Printf
open Base

module Ops = Tf_ops.Ops
module Tensor = Tf_core.Tensor
module Tensor_handle = Tf_core.Eager.Tensor_handle
module Type = Tf_core.Operation.Type

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
  Imagenet_helper.read_image filename
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
