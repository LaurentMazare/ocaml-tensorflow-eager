include Generated

let (+) = add
let (-) = sub
let ( * ) = mul
let (/) = div

(* TODO: manual support for print ? *)
module Const = struct
  let context = Op.default_context ()
  let float float =
    let op = Op.create context "Const" in
    Op.set_attr_data_type op "dtype" Tf_core.Wrapper.TF_FLOAT;
    (* TODO: this does not work, value is a tensor here but there doesn't seem
       to be a TFE_setattrtensor function in the TF eager api yet. *)
    Op.set_attr_float op "value" float;
    Op.execute1 op
end
