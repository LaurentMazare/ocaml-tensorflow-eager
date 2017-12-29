open Tf_core
module Status = Wrapper.Status

let print_dims tensor_handle =
  let dims = Eager.Tensor_handle.dims tensor_handle in
  Printf.printf "Dims %d" (List.length dims);
  List.iter (Printf.printf "%d ") dims;
  Printf.printf "\n"

let () =
  let twenty_one =
    let tensor = Tensor.create0 Bigarray.float32 in
    Tensor.set tensor [||] 21.;
    Eager.Tensor_handle.create (Tensor.P tensor)
    |> Status.ok_exn
  in
  let sum = Tf_ops.Generated.add twenty_one twenty_one in
  print_dims sum;
  let output_value =
    let output_tensor = Eager.Tensor_handle.resolve sum |> Status.ok_exn in
    let output_tensor =
      match Tensor.float32 output_tensor with
      | Some tensor -> tensor
      | None -> assert false
    in
    Tensor.get output_tensor [||]
  in
  Printf.printf "Hello World %f!\n" output_value
