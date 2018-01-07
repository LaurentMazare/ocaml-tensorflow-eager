open Base
open Stdio
module O = Tf_ops.Ops
module T = Tf_ops.Op.Tensor_handle

let () =
  let x = O.f32 2. |> O.watch in
  let f_x = O.(x * x + x + O.f32 1.) in
  printf "f(x) = %f\n%!" (O.to_float f_x);
  Tf_ops.Gradients.compute f_x
  |> Hashtbl.iteri ~f:(fun ~key ~data ->
    printf "df/d%s(x) = %f\n%!" (T.Id.to_string key) (O.packed_to_float data))
