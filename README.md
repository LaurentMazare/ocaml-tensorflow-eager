Experimental [OCaml](http://ocaml.org) bindings for [TensorFlow](http://tensorflow.org) with some support for eager mode.

## Installation

In order to build this on linux, download the [TensorFlow 1.4.0 binaries](https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.4.0.tar.gz). If this is unpacked at `TFPATH` compiling can be done via:
```bash
LIBRARY_PATH=$TFPATH/lib:$LIBRARY_PATH C_INCLUDE_PATH=$TFPATH/include:$C_INCLUDE_PATH make all
```

## Examples

A very simple example performing an addition using TensorFlow can be seen below:

```ocaml
module Ops = Tf_ops.Ops
module Tensor_handle = Tf_core.Eager.Tensor_handle

let () =
  let twenty_one = Tensor_handle.scalar_f32_exn 21. in
  let forty_two =
    Ops.(twenty_one + twenty_one)
    |> Tensor_handle.resolve_scalar_float_exn
  in
  Printf.printf "%f\n" forty_two
```

For the [VGG-19 example](https://github.com/LaurentMazare/ocaml-tf/tree/master/examples/vgg19.ml), the weights are available [here](http://download.tensorflow.org/models/vgg_19_2016_08_28.tar.gz).
