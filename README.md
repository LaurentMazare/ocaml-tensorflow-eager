Experimental [OCaml](http://ocaml.org) bindings for [TensorFlow](http://tensorflow.org) with some support for eager mode.

In order to build this on linux, download the [TensorFlow 1.4.0 binaries](https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.4.0.tar.gz). If this is unpacked at `TFPATH` compiling can be done via:
```bash
LIBRARY_PATH=$TFPATH/lib:$LIBRARY_PATH C_INCLUDE_PATH=$TFPATH/include:$C_INCLUDE_PATH make all
```
