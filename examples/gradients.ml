open Base
open Stdio
module Ops = Tf_ops.Ops
module Tensor_handle = Tf_ops.Op.Tensor_handle

let () =
  let x = Tensor_handle.scalar_f32_exn 2. in
  let x = Tensor_handle.watch x in
  let x_square_plus_one = Ops.(x * x + x) in
  Ops.print x_square_plus_one;
  let gradients = Tf_ops.Gradients.compute x_square_plus_one in
  Hashtbl.iteri gradients ~f:(fun ~key ~data ->
    printf "%s:\n" (Tensor_handle.Id.to_string key);
    match data with
    | None -> printf "none\n"
    | Some (Tensor_handle.P value) -> Ops.print value
  )
