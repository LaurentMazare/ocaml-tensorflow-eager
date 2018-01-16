(* THERE IS A MEMORY LEAK CAUSING THIS TO USE ALL THE MEMORY. DO NOT USE EXCEPT
   FOR DEBUGGING. *)
open Base
open Tf_ops
module O = Ops
module Th =Op.Tensor_handle

(* This should reach ~92% accuracy. *)
let label_count = Helper.label_count
let training_steps = 100
let batch_size = 512

let linear xs ~name ~output_dim =
  let input_dim = Th.dims xs |> List.last_exn in
  let w =
    Var.truncated_normal_f32 ~name:(name ^ "W") [ input_dim; output_dim ] ~stdev:0.1
    |> Var.read_and_watch
  in
  let b = Var.f32 ~name:(name ^ "b") [ output_dim ] 0. |> Var.read_and_watch in
  O.(xs *^ w + b)

(* The name below has to be unique in the model so that variables are properly identified. *)
let conv2d xs ~name ~output_dim ~k =
  let input_dim = Th.dims xs |> List.last_exn in
  let w =
    Var.truncated_normal_f32 ~name:(name ^ "W") [ k; k; input_dim; output_dim ] ~stdev:0.1
    |> Var.read_and_watch
  in
  let b = Var.f32 ~name:(name ^ "b") [ output_dim ] 0. |> Var.read_and_watch in
  O.(conv2D xs w ~strides:[ 1; 1; 1; 1 ] ~padding:"SAME" + b)

let max_pool_2x2 x =
  O.maxPool x ~ksize:[ 1; 2; 2; 1 ] ~strides:[ 1; 2; 2; 1 ] ~padding:"SAME"

let model xs =
  O.reshape xs (O.vec_i32 [ -1; 28; 28; 1 ])
  |> conv2d ~name:"conv1" ~output_dim:32 ~k:5
  |> O.relu
  |> max_pool_2x2
  |> conv2d ~name:"conv2" ~output_dim:64 ~k:5
  |> O.relu
  |> max_pool_2x2
  |> O.flatten
  |> linear ~name:"linear1" ~output_dim:1024
  |> O.relu
  |> linear ~name:"linear2" ~output_dim:label_count
  |> O.softmax

let () =
  let mnist_dataset = Helper.read_files "data" in
  let test_images = Helper.test_images mnist_dataset in
  let test_labels = Helper.test_labels mnist_dataset in
  for step_index = 1 to training_steps do
    (* Regularly trigger the GC to avoid running out of memory. *)
    Caml.Gc.full_major ();
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
