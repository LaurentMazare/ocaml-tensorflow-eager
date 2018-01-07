Experimental [OCaml](http://ocaml.org) bindings for [TensorFlow](http://tensorflow.org) [Eager execution](https://github.com/tensorflow/tensorflow/tree/r1.5/tensorflow/contrib/eager).

When using TensorFlow Eager execution, operations are executed immediately in the
same way as [PyTorch](http://pytorch.org/). The computation graph is dynamic.

## Examples

### Hello World!
A very simple example performing an addition using TensorFlow can be seen below:

```ocaml
module O = Tf_ops.Ops
module T = Tf_core.Eager.Tensor_handle

let () =
  let twenty_one = T.scalar_f32_exn 21. in
  let forty_two = O.(twenty_one + twenty_one) in
  O.print forty_two
```

### Gradients

Gradients are computed using `Gradients.compute`. This function returns the
gradients with respect to *watched* tensors. In order to watch a tensor use
`T.watch` as in the example below.

```ocaml
module O = Tf_ops.Ops
module T = Tf_ops.Op.Tensor_handle

let () =
  let x = T.scalar_f32_exn 2. |> T.watch in
  let f_x = O.(x * x + x + T.scalar_f32_exn 1.) in
  printf "f(x) = %f\n%!" (T.to_float_exn f_x);
  Tf_ops.Gradients.compute f_x
  |> Hashtbl.iteri ~f:(fun ~key ~data ->
    printf "df/d%s(x) = %f\n%!" (T.Id.to_string key) (T.packed_to_float_exn data))
```

Running this example results in the following output:
```
f(x) = 7.000000
df/d2(x) = 5.000000
```

## Installation

In order to build this on linux, download the [TensorFlow 1.4.0 binaries](https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.4.0.tar.gz). If this is unpacked at `TFPATH` compiling can be done via:
```bash
LD_LIBRARY_PATH=$TFPATH/lib:$LD_LIBRARY_PATH LIBRARY_PATH=$TFPATH/lib:$LIBRARY_PATH make all
```

For the [VGG-19 example](https://github.com/LaurentMazare/ocaml-tf/tree/master/examples/vgg19.ml), the weights are available [here](http://download.tensorflow.org/models/vgg_19_2016_08_28.tar.gz).
