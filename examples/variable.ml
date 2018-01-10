module O = Tf_ops.Ops
module V = Tf_ops.Var

let () =
  let var1 = V.create (O.f32 2.) in
  O.print (V.read var1);
  V.assign var1 (O.f32 42.);
  O.print (V.read var1);
  let var2 = V.create (O.vec_f32 [1.; 2.]) in
  let sum = O.(f32 2. + V.read var2) in
  O.print sum
