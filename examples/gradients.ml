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
    let gradient_value =
      match (data : Tf_ops.Gradients.var_and_gradient) with
      | Float (_, gradient) -> O.to_float gradient
      | Double (_, gradient) -> O.to_float gradient
    in
    printf "df/d%s(x) = %f\n%!" (T.Id.to_string key) gradient_value)
