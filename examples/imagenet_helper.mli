val read_image : string -> [ `float ] Tf_ops.Op.Tensor_handle.t

val print_top_k_from_logits : [ `float ] Tf_ops.Op.Tensor_handle.t -> k:int -> unit
