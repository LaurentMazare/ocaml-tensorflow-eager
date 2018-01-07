open Base
open Stdio
module O = Tf_ops.Ops
module T = Tf_ops.Op.Tensor_handle

let () =
  let x = T.scalar_f32_exn 2. |> T.watch in
  let f_x = O.(x * x + x + T.scalar_f32_exn 1.) in
  printf "f(x) = %f\n%!" (T.to_float_exn f_x);
  Tf_ops.Gradients.compute f_x
  |> Hashtbl.iteri ~f:(fun ~key ~data ->
    printf "df/d%s(x) = %f\n%!" (T.Id.to_string key) (T.packed_to_float_exn data))
