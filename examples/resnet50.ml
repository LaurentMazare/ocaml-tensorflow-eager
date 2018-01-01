module P = Printf
open Base

module O = Tf_ops.Ops
module T = Tf_core.Eager.Tensor_handle
module Type = Tf_core.Operation.Type

let ckpt_file = T.of_string_exn "resnet_50.ckpt"

let restore ~name ~shape:_ =
  O.restore ckpt_file (T.of_string_exn name) ~type_dt:Type.Float

let conv2d th ~name ~out_features ~stride:s ~kernel_size:k =
  let in_features = T.dims th |> List.last_exn in
  let w = restore ~name:(name ^ "/weights") ~shape:[ k; k; in_features; out_features ] in
  let b = restore ~name:(name ^ "/biases") ~shape:[ out_features ] in
  let conv2d = O.conv2D th w ~strides:[1; s; s; 1] ~padding:"SAME" in
  O.(+) conv2d b

let max_pool th ~kernel_size:k ~stride:s =
  O.maxPool th ~ksize:[1; k; k; 1] ~strides:[1; s; s; 1] ~padding:"SAME"

let avg_pool th ~stride:s =
  O.avgPool th ~ksize:[1; s; s; 1] ~strides:[1; s; s; 1] ~padding:"VALID"

let reshape th ~shape = O.reshape th (T.vec_i32_exn shape)

let batch_normalization th ~name =
  let shape = T.dims th |> List.tl_exn in
  let mean_ = restore ~name:(name ^ "/mean") ~shape in
  let std = restore ~name:(name ^ "/std") ~shape in
  let gamma = restore ~name:(name ^ "/gamma") ~shape in
  let beta = restore ~name:(name ^ "/beta") ~shape in
  O.((th - mean_) / std * gamma + beta)

let basic_block th ~out_features ~stride =
  let shortcut =
    if stride = 1
    then th
    else
      let in_features = T.dims th |> List.last_exn in
      let half_diff = (out_features - in_features) / 2 in
      T.vec_i32_exn [ 0; 0; 0; 0; 0; 0; half_diff; half_diff ]
      |> reshape ~shape:[ 4; 2 ]
      |> O.pad (avg_pool th ~stride)
  in
  conv2d th ~name:"TODO" ~out_features ~stride ~kernel_size:3
  |> batch_normalization ~name:"TODO"
  |> O.relu
  |> conv2d ~name:"TODO" ~out_features ~stride:1 ~kernel_size:1
  |> O.add shortcut
  |> batch_normalization ~name:"TODO"
  |> O.relu

let block_stack layer ~depth ~out_features ~stride =
  let layer = basic_block layer ~out_features ~stride in
  List.init (depth - 1) ~f:Fn.id
  |> List.fold ~init:layer ~f:(fun layer _idx ->
    basic_block layer ~out_features ~stride:1)

let dense ~name out_dims th =
  let in_dims = T.dims th |> List.last_exn in
  let prefix = P.sprintf "resnet/%s/" name in
  let w = restore ~name:(prefix ^ "weights") ~shape:([ in_dims; out_dims ]) in
  let b = restore ~name:(prefix ^ "biases") ~shape:[ out_dims ] in
  O.(matMul th w + b)

let resnet filename =
  Imagenet_helper.read_image filename
  |> conv2d ~name:"TODO" ~out_features:64 ~kernel_size:7 ~stride:2
  |> batch_normalization ~name:"TODO"
  |> O.relu
  |> max_pool ~kernel_size:3 ~stride:2
  |> block_stack ~depth:3 ~out_features:256 ~stride:1
  |> block_stack ~depth:4 ~out_features:512 ~stride:2
  |> block_stack ~depth:6 ~out_features:1024 ~stride:2
  |> block_stack ~depth:3 ~out_features:2048 ~stride:2
  |> avg_pool ~stride:7
  |> dense ~name:"TODO" 1000

let () =
  resnet "image.jpg" |> Imagenet_helper.print_top_k_from_logits ~k:5

