include Generated

let (+) = add
let (-) = sub
let ( * ) = mul
let (/) = div

let context = Op.default_context ()

let print ?(summarize=20) ?(message = "") tensor_handle =
  let data_type = Op.Tensor_handle.data_type tensor_handle in
  Op.create context "Print"
  |> fun op -> Op.add_input op tensor_handle
  |> fun op -> Op.add_input op tensor_handle
  |> Op.set_attr_data_type ~name:"T" ~value:data_type
  |> Op.set_attr_data_type_list ~name:"U" ~value:[data_type]
  |> Op.set_attr_string ~name:"message" ~value:message
  |> Op.set_attr_int ~name:"summarize" ~value:summarize
  |> Op.set_attr_int ~name:"first_n" ~value:(-1)
  |> Op.execute0

let mm = matMul
