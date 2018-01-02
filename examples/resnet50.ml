module P = Printf
open Base

module O = Tf_ops.Ops
module T = Tf_ops.Op.Tensor_handle
module Type = Tf_core.Operation.Type

let ckpt_file = T.of_string_exn "resnet_v1_50.ckpt"

let restore ~name ~shape =
  let name = Printf.sprintf "resnet_v1_50/%s" name in
  let restore = O.restore ckpt_file (T.of_string_exn name) ~type_dt:Type.Float in
  let dims = T.dims restore |> List.tl_exn in
  if List.equal dims shape ~equal:Int.equal
  then
    Printf.failwithf "shape mismatch %s, got %s, expected %s"
      name
      (List.map ~f:Int.to_string dims |> String.concat ~sep:", ")
      (List.map ~f:Int.to_string shape |> String.concat ~sep:", ")
      ();
  restore

let conv2d th ~name ~out_features ~stride:s ~kernel_size:k =
  let in_features = T.dims th |> List.last_exn in
  let w = restore ~name:(name ^ "/weights") ~shape:[ k; k; in_features; out_features ] in
  O.conv2D th w ~strides:[1; s; s; 1] ~padding:"SAME"

let max_pool th ~kernel_size:k ~stride:s =
  O.maxPool th ~ksize:[1; k; k; 1] ~strides:[1; s; s; 1] ~padding:"SAME"

let avg_pool th ~stride:s =
  O.avgPool th ~ksize:[1; s; s; 1] ~strides:[1; s; s; 1] ~padding:"VALID"

let batch_normalization th ~name =
  let shape = T.dims th |> List.tl_exn in
  let mean_ = restore ~name:(name ^ "/moving_mean") ~shape in
  let var = restore ~name:(name ^ "/moving_variance") ~shape in
  let gamma = restore ~name:(name ^ "/gamma") ~shape in
  let beta = restore ~name:(name ^ "/beta") ~shape in
  O.((th - mean_) / sqrt var * gamma + beta)

let basic_block th ~name ~out_features ~stride =
  let in_features = T.dims th |> List.last_exn in
  let conv_name c = Printf.sprintf "%s/bottleneck_v1/%s" name c in
  let shortcut =
    if in_features = out_features
    then th
    else
      conv2d th ~name:(conv_name "shortcut") ~out_features ~stride ~kernel_size:1
  in
  conv2d th ~name:(conv_name "conv1") ~out_features ~stride ~kernel_size:1
  |> batch_normalization ~name:(conv_name "conv1/BatchNorm")
  |> O.relu
  |> conv2d ~name:(conv_name "conv2") ~out_features ~stride:1 ~kernel_size:3
  |> batch_normalization ~name:(conv_name "conv2/BatchNorm")
  |> O.relu
  |> conv2d ~name:(conv_name "conv3") ~out_features ~stride:1 ~kernel_size:1
  |> batch_normalization ~name:(conv_name "conv3/BatchNorm")
  |> O.add shortcut
  |> O.relu

let block_stack layer ~name ~depth ~out_features ~stride =
  let layer = basic_block layer ~name:(name ^ "/unit_1") ~out_features ~stride in
  List.init (depth - 1) ~f:Fn.id
  |> List.fold ~init:layer ~f:(fun layer idx ->
    basic_block layer ~name:(Printf.sprintf "%s/unit_%d" name (idx+2)) ~out_features ~stride:1)

let dense ~name out_dims th =
  let in_dims = T.dims th |> List.last_exn in
  let w = restore ~name:(name ^ "/weights") ~shape:([ in_dims; out_dims ]) in
  let b = restore ~name:(name ^ "/biases") ~shape:[ out_dims ] in
  (* Use conv2D rather than fully-connected as in:
     https://github.com/tensorflow/models/blob/master/research/slim/nets/resnet_v1.py
  *)
  O.(conv2D th w ~strides:[1; 1; 1; 1] ~padding:"VALID" + b)

let reshape th ~shape = O.reshape th (T.vec_i32_exn shape)

let resnet filename =
  Imagenet_helper.read_image filename
  |> conv2d ~name:"conv1" ~out_features:64 ~kernel_size:7 ~stride:2
  |> batch_normalization ~name:"conv1/BatchNorm"
  |> O.relu
  |> max_pool ~kernel_size:3 ~stride:2
  |> block_stack ~name:"block1" ~depth:3 ~out_features:256 ~stride:1
  |> block_stack ~name:"block2" ~depth:4 ~out_features:512 ~stride:2
  |> block_stack ~name:"block3" ~depth:6 ~out_features:1024 ~stride:2
  |> block_stack ~name:"block4" ~depth:3 ~out_features:2048 ~stride:2
  |> avg_pool ~stride:7
  |> dense ~name:"logits" 1000
  |> reshape ~shape:[1; -1]

let () =
  resnet "image.jpg" |> Imagenet_helper.print_top_k_from_logits ~k:5

