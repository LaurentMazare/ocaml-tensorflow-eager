include Generated

let (+) = add
let (-) = sub
let ( * ) = mul
let (/) = div

let context = Op.default_context ()

let print ?(summarize=20) ?(message = "") tensor_handle =
  let data_type = Op.Tensor_handle.data_type tensor_handle in
  Op.create context (Op.Name.of_string "Print")
    [ Op.Tensor_handle.P tensor_handle; Op.Tensor_handle.P tensor_handle ]
    [ "T", `type_ data_type
    ; "U", `list_type [ data_type ]
    ; "message", `string message
    ; "summarize", `int summarize
    ; "first_n", `int (-1)
    ]
  |> Op.execute0

let mm = matMul
