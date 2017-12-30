open Base

module Ops = Tf_ops.Ops
module Tensor = Tf_core.Tensor
module Tensor_handle = Tf_core.Eager.Tensor_handle
module Type = Tf_core.Operation.Type

let var shape =
  Ops.variableV2 ~type_dtype:Type.Float ~shape ()

let conv2d th ~in_channels ~out_channels =
  let w = var [ 3; 3; in_channels; out_channels ] in
  let b = var [ out_channels ] in
  Ops.(conv2D th w ~strides:[1; 1] ~padding:"SAME" + b)

let max_pool th =
  Ops.maxPool th ~ksize:[1; 2; 2; 1] ~strides:[1; 2; 2; 1] ~padding:"SAME"

let read_image filename =
  Tensor_handle.of_string_exn filename
  |> Ops.decodePng ~type_dtype:Type.UInt8 ~channels:3
  |> Ops.cast ~type_dstT:Type.Float

let reshape th ~shape =
  let tensor = Tensor.create Int32 [| List.length shape |] in
  Tensor.copy_elt_list tensor (List.map shape ~f:Int32.of_int_exn);
  Ops.reshape th (Tensor_handle.create_exn (Tensor.P tensor))

let dense out_dims th =
  let in_dims = Tensor_handle.dims th |> List.last_exn in
  let w = var [ in_dims; out_dims ] in
  let b = var [ out_dims ] in
  Ops.(matMul th w + b)

let vgg19 filename =
  let block iter ~out_channels th =
    let in_channels = Tensor_handle.dims th |> List.last_exn in
    List.init iter ~f:Fn.id
    |> List.fold ~init:th ~f:(fun acc idx ->
        let in_channels = if idx = 0 then in_channels else out_channels in
        conv2d acc ~in_channels ~out_channels |> Ops.relu)
    |> max_pool
  in
  read_image filename
  |> block 2 ~out_channels:64
  |> block 2 ~out_channels:128
  |> block 4 ~out_channels:256
  |> block 4 ~out_channels:512
  |> block 4 ~out_channels:512
  |> reshape ~shape:[-1]
  |> dense 4096
  |> Ops.relu
  |> dense 4096
  |> Ops.relu
  |> dense 1000
  |> Ops.softmax

let () =
  let pr5, top5 = vgg19 "image.jpeg" |> Ops.topK ~k:5 ~sorted:true in
  Ops.print pr5;
  Ops.print top5
