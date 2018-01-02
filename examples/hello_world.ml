module Ops = Tf_ops.Ops
module Tensor_handle = Tf_ops.Op.Tensor_handle

let () =
  let twenty_one = Tensor_handle.scalar_f32_exn 21. in
  let forty_two = Ops.(twenty_one + twenty_one) in
  Ops.print forty_two;
  let forty_two = Tensor_handle.resolve_scalar_float_exn forty_two in
  Printf.printf "Hello World %f!\n" forty_two
