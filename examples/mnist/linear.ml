open Base
open Tf_ops
module O = Ops

(* This should reach ~92% accuracy. *)
let image_dim = Helper.image_dim
let label_count = Helper.label_count
let training_steps = 500
let batch_size = 512

let () =
  let mnist_dataset = Helper.read_files "data" in
  let test_images = Helper.test_images mnist_dataset in
  let test_labels = Helper.test_labels mnist_dataset in

  (* Create the variables for the linear model. *)
  let w = Var.f32 [ image_dim; label_count ] 0. in
  let b = Var.f32 [ label_count ] 0. in

  (* Build the model. [read_and_watch] returns the current value of a variable
     and ensures that gradients wrt this variable will be computed. *)
  let model xs =
    let w_read = Var.read_and_watch w in
    let b_read = Var.read_and_watch b in
    O.(xs *^ w_read + b_read) |> O.softmax
  in

  for step_index = 1 to training_steps do
    (*Every so often, print the accuracy on the test dataset. *)
    if step_index % 50 = 0 then begin
      let accuracy =
        O.(equal (arg_max (model test_images)) (arg_max test_labels))
        |> O.cast ~type_dstT:Float
        |> O.reduce_mean
        |> O.to_float
      in
      Stdio.printf "step index %d, accuracy %.2f%%\n%!" step_index (100. *. accuracy)
    end;

    (* Get a training batch, apply the model and compute the loss. *)
    let train_images, train_labels =
      Helper.train_batch mnist_dataset ~batch_size ~batch_idx:step_index
    in
    let ys = model train_images in
    let cross_entropy = O.cross_entropy ~ys:train_labels ~y_hats:ys `mean in

    (* Compute the loss gradients and apply gradient descent to minimize it. *)
    let gradients = Tf_ops.Gradients.compute cross_entropy in
    Tf_ops.Gradients.apply_sgd_step gradients ~learning_rate:8.
  done
