open Tf_ops

type t

val read_files
  :  ?train_image_file:string
  -> ?train_label_file:string
  -> ?test_image_file:string
  -> ?test_label_file:string
  -> string (* basedir *)
  -> t

val train_batch
  :  t
  -> batch_size:int
  -> batch_idx:int
  -> [ `float ] Ops.t * [ `float ] Ops.t

val image_dim : int
val label_count : int

val test_images : t -> [ `float ] Ops.t
val test_labels : t -> [ `float ] Ops.t
