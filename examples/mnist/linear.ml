open Base
module O = Tf_ops.Ops
module Th = Tf_ops.Op.Tensor_handle
module V = Tf_ops.Var

(* This should reach ~92% accuracy. *)
let image_dim = Helper.image_dim
let label_count = Helper.label_count
let training_steps = 500
let batch_size = 512

let () =
  let mnist_dataset = Helper.read_files () in
  let test_images = Helper.test_images mnist_dataset in
  let test_labels = Helper.test_labels mnist_dataset in

  let w = V.f32 [ image_dim; label_count ] 0. in
  let b = V.f32 [ label_count ] 0. in
  let model xs =
    let w_read = V.read_and_watch w in
    let b_read = V.read_and_watch b in
    O.(xs *^ w_read + b_read) |> O.softmax
  in
  for step_index = 1 to training_steps do
    if step_index % 50 = 0 then begin
      let accuracy =
        let ys = model test_images in
        O.(equal (arg_max ys) (arg_max test_labels))
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
    Tf_ops.Gradients.apply_sgd_step gradients ~learning_rate:8.
  done
