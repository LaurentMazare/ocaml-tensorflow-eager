include Generated

let (+) = add
let (-) = sub
let ( * ) = mul
let (/) = div

let context = Op.default_context ()

let print ?(summarize=20) ?(message = "") tensor_handle =
  let op =
    Op.create context "Print"
    |> fun op -> Op.add_input op tensor_handle
    |> fun op -> Op.add_input op tensor_handle
  in
  let data_type = Op.Tensor_handle.data_type tensor_handle in
  Op.set_attr_data_type op "T" data_type;
  Op.set_attr_data_type_list op "U" [data_type];
  Op.set_attr_string op "message" message;
  Op.set_attr_int op "summarize" summarize;
  Op.set_attr_int op "first_n" (-1);
  Op.execute0 op

let mm = matMul
