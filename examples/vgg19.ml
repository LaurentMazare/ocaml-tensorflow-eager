module P = Printf
open Base

module Ops = Tf_ops.Ops
module Tensor = Tf_core.Tensor
module Tensor_handle = Tf_ops.Op.Tensor_handle
module Type = Tf_core.Operation.Type

(* The weights can be found here: http://download.tensorflow.org/models/vgg_19_2016_08_28.tar.gz *)
let ckpt_file = Tensor_handle.of_string_exn "vgg_19.ckpt"

let restore ~name ~shape:_ =
  Ops.restore ckpt_file (Tensor_handle.of_string_exn name)
    ~type_dt:Type.Float

let conv2d th ~in_channels ~out_channels ~name =
  let w = restore ~name:(name ^ "/weights") ~shape:[ 3; 3; in_channels; out_channels ] in
  let b = restore ~name:(name ^ "/biases") ~shape:[ out_channels ] in
  let conv2d = Ops.conv2D th w ~strides:[1; 1; 1; 1] ~padding:"SAME" in
  Ops.(+) conv2d b

let max_pool th = Ops.maxPool th ~ksize:[1; 2; 2; 1] ~strides:[1; 2; 2; 1] ~padding:"SAME"

let reshape th ~shape = Ops.reshape th (Tensor_handle.vec_i32_exn shape)

let dense ~name out_dims th =
  let in_dims = Tensor_handle.dims th |> List.tl_exn in
  let prefix = P.sprintf "vgg_19/%s/" name in
  let w = restore ~name:(prefix ^ "weights") ~shape:(in_dims @ [ out_dims ]) in
  let b = restore ~name:(prefix ^ "biases") ~shape:[ out_dims ] in
  (* Use conv2D rather than fully-connected as in:
     https://github.com/tensorflow/models/blob/master/research/slim/nets/vgg.py
  *)
  Ops.(conv2D th w ~strides:[1; 1; 1; 1] ~padding:"VALID" + b)

let vgg19 filename =
  let block iter ~block_idx ~out_channels th =
    let in_channels = Tensor_handle.dims th |> List.last_exn in
    List.init iter ~f:Fn.id
    |> List.fold ~init:th ~f:(fun acc idx ->
        let in_channels = if idx = 0 then in_channels else out_channels in
        conv2d acc ~in_channels ~out_channels
          ~name:(P.sprintf "vgg_19/conv%d/conv%d_%d" block_idx block_idx (idx+1))
        |> Ops.relu)
    |> max_pool
  in
  Imagenet_helper.read_image filename
  |> block 2 ~block_idx:1 ~out_channels:64
  |> block 2 ~block_idx:2 ~out_channels:128
  |> block 4 ~block_idx:3 ~out_channels:256
  |> block 4 ~block_idx:4 ~out_channels:512
  |> block 4 ~block_idx:5 ~out_channels:512
  |> dense ~name:"fc6" 4096
  |> Ops.relu
  |> dense ~name:"fc7" 4096
  |> Ops.relu
  |> dense ~name:"fc8" 1000
  |> reshape ~shape:[1; -1]

let () =
  vgg19 "image.jpg" |> Imagenet_helper.print_top_k_from_logits ~k:5
