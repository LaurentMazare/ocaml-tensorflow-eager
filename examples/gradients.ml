open Base
open Stdio
module Ops = Tf_ops.Ops
module Tensor_handle = Tf_ops.Op.Tensor_handle

let () =
  let x = Tensor_handle.scalar_f32_exn 2. in
  let x = Tensor_handle.watch x in
  let x_square_plus_one = Ops.(x * x + x) in
  let x_value = Tensor_handle.resolve_scalar_float_exn x_square_plus_one in
  printf "f(x) = %f\n%!" x_value;
  Tf_ops.Gradients.compute x_square_plus_one
  |> Hashtbl.iteri ~f:(fun ~key ~data ->
    printf "df/d%s(x) = " (Tensor_handle.Id.to_string key);
    match data with
    | None -> printf "none\n%!"
    | Some value ->
      let value = Tensor_handle.unpack_exn value Float in
      printf "%f\n%!" (Tensor_handle.resolve_scalar_float_exn value)
  )
