(* The readers implemented here are very inefficient as they read bytes one at a time. *)
open Base
open Tf_core
module In_channel = Stdio.In_channel

let image_dim = 28 * 28
let label_count = 10

let one_hot labels =
  let nsamples = Bigarray.Array1.dim labels in
  let one_hot = Tensor.create2 Float32 nsamples label_count in
  for idx = 0 to nsamples - 1 do
    for lbl = 0 to 9 do
      Tensor.set one_hot [| idx; lbl |] 0.
    done;
    let lbl = Bigarray.Array1.get labels idx |> Int32.to_int_exn in
    Tensor.set one_hot [| idx; lbl |] 1.
  done;
  one_hot

let read_int32_be in_channel =
  let b1 = Option.value_exn (In_channel.input_byte in_channel) in
  let b2 = Option.value_exn (In_channel.input_byte in_channel) in
  let b3 = Option.value_exn (In_channel.input_byte in_channel) in
  let b4 = Option.value_exn (In_channel.input_byte in_channel) in
  b4 + 256 * (b3 + 256 * (b2 + 256 * b1))

let read_images ~basedir filename =
  let filename = Printf.sprintf "%s/%s" basedir filename in
  let in_channel = In_channel.create filename in
  let magic_number = read_int32_be in_channel in
  if magic_number <> 2051
  then Printf.failwithf "Incorrect magic number in %s: %d" filename magic_number ();
  let samples = read_int32_be in_channel in
  let rows = read_int32_be in_channel in
  let columns = read_int32_be in_channel in
  let data =
    Bigarray.Array2.create Bigarray.float32 Bigarray.c_layout samples (rows * columns)
  in
  for sample = 0 to samples - 1 do
    for idx = 0 to rows * columns - 1 do
      let v = Option.value_exn (In_channel.input_byte in_channel) in
      Bigarray.Array2.set data sample idx Float.(of_int v / 255.);
    done;
  done;
  In_channel.close in_channel;
  data

let read_labels ~basedir filename =
  let filename = Printf.sprintf "%s/%s" basedir filename in
  let in_channel = In_channel.create filename in
  let magic_number = read_int32_be in_channel in
  if magic_number <> 2049
  then Printf.failwithf "Incorrect magic number in %s: %d" filename magic_number ();
  let samples = read_int32_be in_channel in
  let data = Bigarray.Array1.create Bigarray.int32 Bigarray.c_layout samples in
  for sample = 0 to samples - 1 do
    let v = Option.value_exn (In_channel.input_byte in_channel) |> Int32.of_int_exn in
    Bigarray.Array1.set data sample v;
  done;
  In_channel.close in_channel;
  data

type float32_tensor = (float, Bigarray.float32_elt) Tensor.t

type t =
  { train_images : float32_tensor
  ; train_labels : float32_tensor
  ; test_images : float32_tensor
  ; test_labels : float32_tensor
  }

let read_files
      ?(train_image_file = "train-images-idx3-ubyte")
      ?(train_label_file = "train-labels-idx1-ubyte")
      ?(test_image_file = "t10k-images-idx3-ubyte")
      ?(test_label_file = "t10k-labels-idx1-ubyte")
      basedir
  =
  let train_images = read_images ~basedir train_image_file in
  let train_labels = read_labels ~basedir train_label_file in
  let test_images = read_images ~basedir test_image_file in
  let test_labels = read_labels ~basedir test_label_file in
  let train_images = Bigarray.genarray_of_array2 train_images in
  let test_images = Bigarray.genarray_of_array2 test_images in
  { train_images
  ; train_labels = one_hot train_labels
  ; test_images
  ; test_labels = one_hot test_labels
  }

let wrap_float th = Tf_ops.Op.Tensor_handle.create (Tensor.P th) Float

let train_batch { train_images; train_labels; _ } ~batch_size ~batch_idx =
  let train_size = (Tensor.dims train_images).(0) in
  let start_batch = Int.(%) (batch_size * batch_idx) (train_size - batch_size) in
  let batch_images = Tensor.sub_left train_images start_batch batch_size in
  let batch_labels = Tensor.sub_left train_labels start_batch batch_size in
  wrap_float batch_images, wrap_float batch_labels

let test_images t = wrap_float t.test_images
let test_labels t = wrap_float t.test_labels
