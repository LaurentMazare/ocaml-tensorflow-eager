module O = Tf_ops.Ops
module V = Tf_ops.Var

let () =
  let var1 = V.variable (O.f32 2.) in
  O.print (V.read var1 Float);
  V.assign var1 (O.f32 42.);
  O.print (V.read var1 Float);
  let var2 = V.variable (O.vec_f32 [1.; 2.]) in
  let sum = O.(f32 2. + V.read var2 Float) in
  O.print sum
