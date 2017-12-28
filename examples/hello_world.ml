open Tf_core
module Status = Wrapper.Status

let () =
  let context = Eager.Context.create () |> Status.ok_exn in
  let op = Eager.Op.create context "Add" |> Status.ok_exn in
  Eager.Op.set_attr_type op "T" Wrapper.TF_FLOAT;
  let twenty_one =
    let tensor = Tensor.create0 Bigarray.float32 in
    Tensor.set tensor [||] 21.;
    Eager.Tensor_handle.create (Tensor.P tensor)
    |> Status.ok_exn
  in
  Eager.Op.add_input op twenty_one |> Status.ok_exn;
  Eager.Op.add_input op twenty_one |> Status.ok_exn;
  let output_handles = Eager.execute op ~output_len:1 |> Status.ok_exn in
  let output_value =
    match output_handles with
    | [ output_handle ] ->
      let output_tensor = Eager.Tensor_handle.resolve output_handle |> Status.ok_exn in
      let output_tensor =
        match Tensor.float32 output_tensor with
        | Some tensor -> tensor
        | None -> assert false
      in
      Tensor.get output_tensor [|0|]
    | [] | _::_::_ -> assert false
  in
  Printf.printf "Hello World %f!\n" output_value
