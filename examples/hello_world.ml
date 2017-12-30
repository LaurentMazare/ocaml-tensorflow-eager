open Tf_core
module Ops = Tf_ops.Ops

let () =
  let twenty_one = Eager.Tensor_handle.scalar_f32_exn 21. in
  let forty_two =
    Ops.(twenty_one + twenty_one)
    |> Eager.Tensor_handle.resolve_scalar_float_exn
  in
  Printf.printf "Hello World %f!\n" forty_two
