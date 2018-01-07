open Base
open Stdio
module Ops = Tf_ops.Ops
module Tensor_handle = Tf_ops.Op.Tensor_handle

let () =
  let x = Tensor_handle.scalar_f32_exn 2. in
  let x = Tensor_handle.watch x in
  let f_x = Ops.(x * x + x + Tensor_handle.scalar_f32_exn 1.) in
  printf "f(x) = %f\n%!" (Tensor_handle.resolve_scalar_float_exn f_x);
  Tf_ops.Gradients.compute f_x
  |> Hashtbl.iteri ~f:(fun ~key ~data ->
    let data = Tensor_handle.unpack_exn data Float in
    printf "df/d%s(x) = %f\n%!"
      (Tensor_handle.Id.to_string key)
      (Tensor_handle.resolve_scalar_float_exn data)
  )
