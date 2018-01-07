module O = Tf_ops.Ops

let () =
  let twenty_one = O.f32 21. in
  let forty_two = O.(twenty_one + twenty_one) in
  O.print forty_two;
  let forty_two = O.to_float forty_two in
  Printf.printf "Hello World %f!\n" forty_two
