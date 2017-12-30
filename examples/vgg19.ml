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
    ~preferred_shard:0
    ~type_dt:Type.Float

let conv2d th ~in_channels ~out_channels ~name =
  let prefix = P.sprintf "%s/%s_" name name in
  let w = restore ~name:(prefix ^ "filters") ~shape:[ 3; 3; in_channels; out_channels ] in
  let b = restore ~name:(prefix ^ "biases") ~shape:[ out_channels ] in
  let conv2d =
    Ops.conv2D th w
      ~use_cudnn_on_gpu:false
      ~data_format:"NHWC"
      ~strides:[1; 1; 1; 1]
      ~padding:"SAME"
  in
  Ops.(+) conv2d b

let max_pool th =
  Ops.maxPool th ~ksize:[1; 2; 2; 1] ~strides:[1; 2; 2; 1] ~padding:"SAME" ~data_format:"NHWC"

let read_image filename =
  Tensor_handle.of_string_exn filename
  |> Ops.readFile
  |> Ops.decodePng ~type_dtype:Type.UInt8 ~channels:3
  |> Ops.cast ~type_dstT:Type.Float

let scalar_int32 int =
  let tensor = Tensor.create Int32 [||] in
  Tensor.copy_elt_list tensor (List.map [int] ~f:Int32.of_int_exn);
  Tensor_handle.create_exn (Tensor.P tensor)

let const_int32 int_list =
  let tensor = Tensor.create Int32 [| List.length int_list |] in
  Tensor.copy_elt_list tensor (List.map int_list ~f:Int32.of_int_exn);
  Tensor_handle.create_exn (Tensor.P tensor)

let reshape th ~shape = Ops.reshape th (const_int32 shape)

let dense ~name out_dims th =
  let in_dims = Tensor_handle.dims th |> List.last_exn in
  let prefix = P.sprintf "%s/%s_" name name in
  let w = restore ~name:(prefix ^ "weights") ~shape:[ in_dims; out_dims ] in
  let b = restore ~name:(prefix ^ "biases") ~shape:[ out_dims ] in
  Ops.(matMul ~transpose_b:false ~transpose_a:false th w + b)

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
  |> reshape ~shape:[1; img_dim; img_dim; 3]
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
  let pr5, top5 = Ops.topKV2 logits (scalar_int32 5) ~sorted:true in
  Ops.print pr5 ~summarize:1000;
  Ops.print top5 ~summarize:1000
