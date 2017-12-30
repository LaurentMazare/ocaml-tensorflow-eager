open Tf_core
module Ops = Tf_ops.Ops

let print_dims tensor_handle =
  let dims = Eager.Tensor_handle.dims tensor_handle in
  Printf.printf "Dims %d" (List.length dims);
  List.iter (Printf.printf "%d ") dims;
  Printf.printf "\n"

let () =
  let twenty_one =
    let tensor = Tensor.create0 Bigarray.float32 in
    Tensor.set tensor [||] 21.;
    Eager.Tensor_handle.create_exn (Tensor.P tensor)
  in
  let forty_two = Ops.(twenty_one + twenty_one) in
  print_dims forty_two;
  let output_value =
    let output_tensor = Eager.Tensor_handle.resolve_exn forty_two in
    let output_tensor =
      match Tensor.float32 output_tensor with
      | Some tensor -> tensor
      | None -> assert false
    in
    Tensor.get output_tensor [||]
  in
  Printf.printf "Hello World %f!\n" output_value
