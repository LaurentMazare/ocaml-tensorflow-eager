open Base
open Tf_ops
module O = Ops

(* This should reach ~92% accuracy. *)
let image_dim = Helper.image_dim
let label_count = Helper.label_count
let training_steps = 5000
let hidden_nodes = 128
let batch_size = 512

let linear ~input_size ~output_size =
  let w = Var.truncated_normal_f32 [ input_size; output_size ] ~stdev:0.1 in
  let b = Var.f32 [ output_size ] 0. in
  fun inputs -> O.(inputs *^ (Var.read_and_watch w) + (Var.read_and_watch b))

let () =
  let mnist_dataset = Helper.read_files "data" in
  let test_images = Helper.test_images mnist_dataset in
  let test_labels = Helper.test_labels mnist_dataset in

  let layer1 = linear ~input_size:image_dim ~output_size:hidden_nodes in
  let layer2 = linear ~input_size:hidden_nodes ~output_size:label_count in
  let model xs =
    layer1 xs
    |> O.relu
    |> layer2
    |> O.softmax
  in
  for step_index = 1 to training_steps do
    if step_index % 50 = 0 then begin
      let accuracy =
        O.(equal (arg_max (model test_images)) (arg_max test_labels))
        |> O.cast ~type_dstT:Float
        |> O.reduce_mean
        |> O.to_float
      in
      Stdio.printf "step index %d, accuracy %.2f%%\n%!" step_index (100. *. accuracy)
    end;
    let train_images, train_labels =
      Helper.train_batch mnist_dataset ~batch_size ~batch_idx:step_index
    in
    let ys = model train_images in
    let cross_entropy = O.cross_entropy ~ys:train_labels ~y_hats:ys `mean in
    let gradients = Tf_ops.Gradients.compute cross_entropy in
    Tf_ops.Gradients.apply_sgd_step gradients ~learning_rate:1.
  done
