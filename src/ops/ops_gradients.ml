open Base
module T = Op.Tensor_handle
module Type = Tf_core.Operation.Type

let table = Hashtbl.create (module Op.Name) ()

type t =
  { f : 'a .
          (  self:([< `float | `double] as 'a) T.t
          -> gradient:'a T.t
          -> T.p option list)
  }

let add op t =
  let f ~self:(T.P self) ~gradient:(T.P gradient) =
    match T.type_ self, T.type_ gradient with
    | Type.Double, Type.Double -> t.f ~self ~gradient
    | Type.Float, Type.Float -> t.f ~self ~gradient
    | _, _ ->
      Printf.failwithf "Inconsistent types %s" (Op.Name.to_string op) ()
  in
  Hashtbl.set table ~key:op ~data:f

let find = Hashtbl.find table

let table_multi = Hashtbl.create (module Op.Name) ()

type multi =
  { g : 'a .
          (  self:([< `float | `double] as 'a) T.t
          -> gradients:'a T.t Map.M(Int).t
          -> T.p option list)
  }

let add_multi op t =
  let f ~self:(T.P self) ~gradients =
    match T.type_ self with
    | Type.Double ->
      let gradients =
        Map.map gradients ~f:(fun gradient ->
          Option.value_exn (T.unpack gradient Double))
      in
      t.g ~self ~gradients
    | Type.Float ->
      let gradients =
        Map.map gradients ~f:(fun gradient ->
          Option.value_exn (T.unpack gradient Float))
      in
      t.g ~self ~gradients
    | _ ->
      Printf.failwithf "Inconsistent types %s" (Op.Name.to_string op) ()
  in
  Hashtbl.set table_multi ~key:op ~data:f

let find_multi = Hashtbl.find table_multi


module O = struct
  type unary =
    { f1 : 'a .x:(  [< `float | `double] as 'a) T.t
            -> y:'a T.t
            -> gradient:'a T.t
            -> 'a T.t
    }

  let inputs_exn th =
    match T.tape_info th with
    | `none | `leaf -> assert false
    | `node tape_info -> Op.Tape_info.inputs tape_info

  let get_attrs th name =
    match T.tape_info th with
    | `none | `leaf -> None
    | `node tape_info ->
      List.Assoc.find ~equal:String.equal (Op.Tape_info.attrs tape_info) name

  let get_attr_bool th name =
    match get_attrs th name with
    | Some (`bool bool) -> Some bool
    | _ -> None

  let get_attr_string th name =
    match get_attrs th name with
    | Some (`string string) -> Some string
    | _ -> None

  let get_attr_int_list th name =
    match get_attrs th name with
    | Some (`list_int list_int) -> Some list_int
    | _ -> None

  let get_attr_int th name =
    match get_attrs th name with
    | Some (`int int) -> Some int
    | _ -> None

  let shape32 th = Ops.shape th ~type_out_type:Int32

  let all = List.map ~f:Option.some

  let unary_wrapper_exn (type a) ~self ~(gradient : a T.t) ~t =
    let T.P x =
      match inputs_exn self with
      | [] | _ :: _ :: _ -> failwith "Not a unary function"
      | [ node ] -> node
    in
    let output =
      match T.type_ x, T.type_ gradient with
      | Type.Double, Type.Double ->
        T.P (t.f1 ~x ~y:self ~gradient)
      | Type.Float, Type.Float ->
        T.P (t.f1 ~x ~y:self ~gradient)
      | _ -> failwith "Inconsistent types"
    in
    all [ output ]

  let binary_extract_exn : type a . a T.t -> (a T.t * a T.t) = fun th ->
    let T.P lhs, T.P rhs =
      match inputs_exn th with
      | [ lhs; rhs ] -> lhs, rhs
      | _ -> failwith "Not a binary function"
    in
    match T.type_ lhs, T.type_ rhs, T.type_ th with
    | Type.Double, Type.Double, Type.Double -> lhs, rhs
    | Type.Float, Type.Float, Type.Float -> lhs, rhs
    | _ -> failwith "Inconsistent types"

  let add_gradient_ ~self ~gradient =
    let lhs, rhs = binary_extract_exn self in
    let shape_lhs = shape32 lhs in
    let shape_rhs = shape32 rhs in
    let rlhs, rrhs = Ops.broadcastGradientArgs shape_lhs shape_rhs in
    let lhs = Ops.reshape (Ops.sum gradient rlhs) shape_lhs in
    let rhs = Ops.reshape (Ops.sum gradient rrhs) shape_rhs in
    lhs, rhs

  let add_gradient ~self ~gradient =
    let lhs, rhs = add_gradient_ ~self ~gradient in
    all [ T.P lhs; T.P rhs ]

  let sub_gradient ~self ~gradient =
    let lhs, rhs = add_gradient_ ~self ~gradient in
    all [ T.P lhs; T.P (Ops.neg rhs) ]

  let mul_gradient ~self ~gradient =
    let lhs, rhs = binary_extract_exn self in
    let shape_lhs = shape32 lhs in
    let shape_rhs = shape32 rhs in
    let rlhs, rrhs = Ops.broadcastGradientArgs shape_lhs shape_rhs in
    let lhs_gradient = Ops.reshape (Ops.sum Ops.(gradient * rhs) rlhs) shape_lhs in
    let rhs_gradient = Ops.reshape (Ops.sum Ops.(lhs * gradient) rrhs) shape_rhs in
    all [ T.P lhs_gradient; T.P rhs_gradient ]

  let div_gradient ~self ~gradient =
    let lhs, rhs = binary_extract_exn self in
    let shape_lhs = shape32 lhs in
    let shape_rhs = shape32 rhs in
    let rlhs, rrhs = Ops.broadcastGradientArgs shape_lhs shape_rhs in
    let lhs_gradient = Ops.reshape (Ops.sum Ops.(gradient / rhs) rlhs) shape_lhs in
    let rhs_gradient =
      Ops.reshape (Ops.sum Ops.(gradient * (Ops.neg (lhs / Ops.square rhs))) rrhs) shape_rhs
    in
    all [ T.P lhs_gradient; T.P rhs_gradient ]

  let pow_gradient ~self ~gradient =
    let lhs, rhs = binary_extract_exn self in
    let shape_lhs = shape32 lhs in
    let shape_rhs = shape32 rhs in
    let rlhs, rrhs = Ops.broadcastGradientArgs shape_lhs shape_rhs in
    let one = Ops.float 1. (T.type_ self) in
    let lhs_gradient =
      Ops.reshape (Ops.sum Ops.(gradient * rhs * Ops.pow lhs (rhs - one)) rlhs) shape_lhs
    in
    let rhs_gradient =
      Ops.reshape (Ops.sum Ops.(gradient * self * Ops.log lhs) rrhs) shape_rhs
    in
    all [ T.P lhs_gradient; T.P rhs_gradient ]

  let neg_gradient ~self:_ ~gradient =
    all [ T.P (Ops.neg gradient) ]

  let abs_gradient (type a) ~self ~(gradient : a T.t) =
    let t = { f1 = fun ~x ~y:_ ~gradient -> Ops.sign x |> Ops.mul gradient } in
    unary_wrapper_exn ~self ~gradient ~t

  let square_gradient (type a) ~self ~(gradient : a T.t) =
    let t =
      { f1 = fun ~x ~y:_ ~gradient ->
          Ops.mul x (Ops.float 2. (T.type_ x))
          |> Ops.mul gradient
      }
    in
    unary_wrapper_exn ~self ~gradient ~t

  let log_gradient (type a) ~self ~(gradient : a T.t) =
    let t = { f1 = fun ~x ~y:_ ~gradient -> Ops.mul gradient (Ops.reciprocal x) } in
    unary_wrapper_exn ~self ~gradient ~t

  let relu_gradient ~self ~gradient =
    all [ T.P (Ops.reluGrad gradient self) ]

  let sigmoid_gradient ~self ~gradient =
    let one = Ops.float 1. (T.type_ self) in
    all [ T.P Ops.(gradient * self * (one - self)) ]

  let matmul_gradient ~self ~gradient =
    let transpose_a = get_attr_bool self "transpose_a" |> Option.value ~default:false in
    let transpose_b = get_attr_bool self "transpose_b" |> Option.value ~default:false in
    let lhs, rhs = binary_extract_exn self in
    match transpose_a, transpose_b with
    | false, false ->
      [ T.P (Ops.matMul gradient rhs ~transpose_b:true)
      ; T.P (Ops.matMul lhs gradient ~transpose_a:true)
      ] |> all
    | false, true ->
      [ T.P (Ops.matMul gradient rhs)
      ; T.P (Ops.matMul gradient lhs ~transpose_a:true)
      ] |> all
    | true, false ->
      [ T.P (Ops.matMul rhs gradient ~transpose_b:true)
      ; T.P (Ops.matMul lhs gradient)
      ] |> all
    | true, true ->
      [ T.P (Ops.matMul rhs gradient ~transpose_a:true ~transpose_b:true)
      ; T.P (Ops.matMul gradient lhs ~transpose_a:true ~transpose_b:true)
      ] |> all

  let batch_matmul_gradient ~self ~gradient =
    let adj_x = get_attr_bool self "adj_x" |> Option.value ~default:false in
    let adj_y = get_attr_bool self "adj_y" |> Option.value ~default:false in
    let lhs, rhs = binary_extract_exn self in
    match adj_x, adj_y with
    | false, false ->
      [ T.P (Ops.batchMatMul gradient rhs ~adj_x:false ~adj_y:true)
      ; T.P (Ops.batchMatMul lhs gradient ~adj_x:true ~adj_y:false)
      ] |> all
    | false, true ->
      [ T.P (Ops.batchMatMul gradient rhs ~adj_x:false ~adj_y:false)
      ; T.P (Ops.batchMatMul lhs gradient ~adj_x:true ~adj_y:false)
      ] |> all
    | true, false ->
      [ T.P (Ops.batchMatMul gradient rhs ~adj_x:false ~adj_y:true)
      ; T.P (Ops.batchMatMul lhs gradient ~adj_x:false ~adj_y:false)
      ] |> all
    | true, true ->
      [ T.P (Ops.batchMatMul gradient rhs ~adj_x:true ~adj_y:true)
      ; T.P (Ops.batchMatMul lhs gradient ~adj_x:true ~adj_y:true)
      ] |> all

  (* Direct adaptation of math_grad.py from the tensorflow source code. *)
  let reduce_gradient ~self =
    let T.P input, T.P indices =
      match inputs_exn self with
      | [ input; indices ] -> input, indices
      | _ -> failwith "Incorrect number of inputs"
    in
    let input_shape = shape32 input in
    let input_rank = Ops.rank input in
    let indices_shape = shape32 indices in
    let indices = T.unpack (T.P indices) Int32 in
    let new_output_shape =
      Ops.dynamicStitch
        [ Ops.irange input_rank; Option.value_exn indices ]
        [ input_shape; Ops.fill indices_shape Ops.one32 ]
    in
    new_output_shape, input_shape

  let sum_gradient_ ~self ~gradient =
    let new_output_shape, input_shape = reduce_gradient ~self in
    let tile_scaling = Ops.div input_shape new_output_shape in
    Ops.tile (Ops.reshape gradient new_output_shape) tile_scaling

  let sum_gradient ~self ~gradient =
    [ Some (T.P (sum_gradient_ ~self ~gradient)); None ]

  let mean_gradient ~self ~gradient =
    let sum_gradient = sum_gradient_ ~self ~gradient in
    let T.P input = List.hd_exn (inputs_exn self) in
    let input_shape = shape32 input in
    let output_shape = shape32 self in
    let factor = Ops.div (Ops.reduce_prod input_shape) (Ops.reduce_prod output_shape) in
    let gradient = Ops.div sum_gradient (Ops.cast factor ~type_dstT:(T.type_ sum_gradient)) in
    [ Some (T.P gradient); None ]

  let minmax_gradient ~self ~gradient =
    let input =
      match inputs_exn self with
      | [ input; _ ] -> Option.value_exn (T.unpack input (T.type_ self))
      | _ -> failwith "Not a binary function"
    in
    let new_output_shape, _ = reduce_gradient ~self in
    let self = Ops.reshape self new_output_shape in
    let gradient = Ops.reshape gradient new_output_shape in
    let gradient =
      Ops.cast (Ops.equal self input) ~type_dstT:(T.type_ self)
      |> Ops.mul gradient
    in
    [ Some (T.P gradient); None ]

  let softmax_gradient ~self ~gradient =
    let gradient =
      Ops.(
        (gradient
          - reshape
              (reduce_sum ~dims:[ 1 ] (gradient * self))
              (vec_i32 [ -1; 1 ])
        ) * self)
    in
    all [ T.P gradient ]

  let exp_gradient ~self ~gradient =
    all [ T.P (Ops.mul gradient self) ]

  let sqrt_gradient ~self ~gradient =
    let gradient =
      Ops.(gradient * float 0.5 (T.type_ self) * reciprocal self)
    in
    all [ T.P gradient ]

  let tanh_gradient ~self ~gradient =
    let gradient =
      Ops.(gradient * (float 1. (T.type_ self) - square self))
    in
    all [ T.P gradient ]

  let sign_gradient ~self ~gradient:_ =
    all [ T.P (Ops.zerosLike self) ]

  let sin_gradient (type a) ~self ~(gradient : a T.t) =
    let t = { f1 = fun ~x ~y:_ ~gradient -> Ops.mul gradient (Ops.cos x) } in
    unary_wrapper_exn ~self ~gradient ~t

  let cos_gradient (type a) ~self ~(gradient : a T.t) =
    let t = { f1 = fun ~x ~y:_ ~gradient -> Ops.mul gradient (Ops.sin x) |> Ops.neg } in
    unary_wrapper_exn ~self ~gradient ~t

  let addn_gradient ~self ~gradient =
    List.map (inputs_exn self) ~f:(fun _ -> Some (T.P gradient))

  let inv_gradient ~self ~gradient =
    [ Some (T.P (Ops.mul gradient (Ops.neg (Ops.square self)))) ]

  let rsqrt_gradient (type a) ~self ~(gradient : a T.t) =
    let t =
      { f1 = fun ~x ~y ~gradient ->
          Ops.(gradient * float (-0.5) (T.type_ y) * reciprocal x * y)
      }
    in
    unary_wrapper_exn ~self ~gradient ~t

  let two_over_pi = 2. /. 3.1415926535897932384626434

  let erf_gradient (type a) ~self ~(gradient : a T.t) =
    let t =
      { f1 = fun ~x ~y ~gradient ->
          Ops.(gradient * float two_over_pi (T.type_ y) * exp (neg (square x)))
      }
    in
    unary_wrapper_exn ~self ~gradient ~t

  let erfc_gradient (type a) ~self ~(gradient : a T.t) =
    let t =
      { f1 = fun ~x ~y ~gradient ->
          Ops.(gradient * float (-. two_over_pi) (T.type_ y) * exp (neg (square x)))
      }
    in
    unary_wrapper_exn ~self ~gradient ~t

  let conv2d_gradient : type a. self:a T.t -> gradient:a T.t -> T.p option list
    = fun ~self ~gradient ->
    match T.type_ self, T.type_ gradient with
    | Type.Float, Type.Float ->
      let inputs0, inputs1 = binary_extract_exn self in
      let strides = Option.value_exn (get_attr_int_list self "strides") in
      let use_cudnn_on_gpu = get_attr_bool self "use_cudnn_on_gpu" in
      let padding = Option.value_exn (get_attr_string self "padding") in
      let gradient_input =
        Ops.conv2DBackpropInput
          (shape32 inputs0)
          inputs1
          gradient
          ~strides
          ?use_cudnn_on_gpu
          ~padding
      in
      let gradient_filter =
        Ops.conv2DBackpropFilter
          inputs0
          (shape32 inputs1)
          gradient
          ~strides
          ?use_cudnn_on_gpu
          ~padding
      in
      all [ T.P gradient_input; T.P gradient_filter ]
    | _, _ -> failwith "Inconsistent types"

  let avgpool_gradient : type a. self:a T.t -> gradient:a T.t -> T.p option list
    = fun ~self ~gradient ->
    match T.type_ self, T.type_ gradient with
    | Type.Float, Type.Float ->
      let ksize = Option.value_exn (get_attr_int_list self "ksize") in
      let strides = Option.value_exn (get_attr_int_list self "strides") in
      let padding = Option.value_exn (get_attr_string self "padding") in
      let input_shape =
        match inputs_exn self with
        | [] | _ :: _ :: _ -> failwith "Not a unary function"
        | [ T.P input ] -> shape32 input
      in
      let gradient =
        Ops.avgPoolGrad
          input_shape
          gradient
          ~ksize
          ~strides
          ~padding
      in
      all [ T.P gradient ]
    | _, _ -> failwith "Inconsistent types"

  let maxpool_gradient : type a. self:a T.t -> gradient:a T.t -> T.p option list
    = fun ~self ~gradient ->
    match T.type_ self, T.type_ gradient with
    | Type.Float, Type.Float ->
      let ksize = Option.value_exn (get_attr_int_list self "ksize") in
      let strides = Option.value_exn (get_attr_int_list self "strides") in
      let padding = Option.value_exn (get_attr_string self "padding") in
      let input =
        match inputs_exn self with
        | [] | _ :: _ :: _ -> failwith "Not a unary function"
        | [ T.P input ] ->
          match T.type_ input with
          | Type.Float -> (input : [ `float ] T.t)
          | _ -> failwith "Inconsistent types"
      in
      let gradient =
        Ops.maxPoolGrad
          input
          self
          gradient
          ~ksize
          ~strides
          ~padding
      in
      all [ T.P gradient ]
    | _, _ -> failwith "Inconsistent types"

  let reshape_gradient ~self ~gradient =
    let input_shape =
      match inputs_exn self with
      | [ T.P input; _ ] -> shape32 input
      | _ -> failwith "Not a binary function"
    in
    [ Some (T.P (Ops.reshape gradient input_shape)); None ]

  let none ~self ~gradient:_ =
    List.map (inputs_exn self) ~f:(fun _ -> None)

  let fill_gradient ~self:_ ~gradient =
    [ None; Some (T.P (Ops.reduce_sum gradient)) ]

  let concat_gradient ~self ~gradient =
    match inputs_exn self with
    | concat_dim :: concat_inputs ->
      let concat_dim =
        match T.unpack concat_dim Int32 with
        | None -> failwith "The first parameter of concat should have type int32."
        | Some concat_dim -> concat_dim
      in
      let concat_inputs =
        List.map concat_inputs ~f:(fun concat_input ->
          match T.unpack concat_input (T.type_ self) with
          | None -> failwith "All the concatenated inputs should have the same type."
          | Some concat_input -> concat_input)
      in
      let sizes = Ops.shapeN concat_inputs ~type_out_type:Int32 in
      let offsets = Ops.concatOffset concat_dim sizes in
      let concat_grads =
        List.map2_exn sizes offsets ~f:(fun size offset ->
          T.P (Ops.slice gradient offset size))
      in
      None :: all concat_grads
    | [] -> failwith "Concat nodes have multiple inputs."

  let split_gradient ~self ~gradients =
    match inputs_exn self with
    | split_dim :: _ ->
      let num_split = Option.value_exn (get_attr_int self "num_split") in
      let all_gradients =
        List.init num_split ~f:(fun output_idx ->
          match Map.find gradients output_idx with
          | Some gradient -> gradient
          | None -> Ops.zerosLike self)
      in
      let split_dim =
        match T.unpack split_dim Int32 with
        | None -> failwith "The first parameter of split should have type int32."
        | Some split_dim -> split_dim
      in
      [ None; Some (T.P (Ops.concat split_dim all_gradients)) ]
    | _ -> failwith "split must have two arguments"

  let select_gradient ~self ~gradient =
    let T.P cond =
      match inputs_exn self with
      | [ cond; _lhs; _rhs ] -> cond
      | _ -> failwith "Unexpected arity for select"
    in
    match T.type_ cond with
    | Type.Bool ->
      let zeros = Ops.zerosLike gradient in
      let lhs_gradient = Ops.select cond gradient zeros in
      let rhs_gradient = Ops.select cond zeros gradient in
      [ None; Some (T.P lhs_gradient); Some (T.P rhs_gradient) ]
    | _ -> failwith "Unexpected type for condition of select"

  let identity_gradient ~self:_ ~gradient =
    [ Some (T.P gradient) ]

  let pad_gradient ~self ~gradient =
    match inputs_exn self with
    | [ (T.P x); padding ] ->
      let padding = Option.value_exn (T.unpack padding Int32) in
      let pad_before =
        Ops.slice
          padding
          (Ops.vec_i32 [ 0; 0 ])
          (Ops.pack [ Ops.rank x; Ops.one32 ])
      in
      let gradient =
        Ops.slice
          gradient
          (Ops.reshape pad_before (Ops.i32 (-1)))
          (shape32 x)
      in
      [ Some (T.P gradient); None ]
    | _ -> failwith "pad should have two single inputs"

  let slice_gradient ~self ~gradient =
    match inputs_exn self with
    | [ (T.P x); start_idxs; sizes ] ->
      let start_idxs = Option.value_exn (T.unpack start_idxs Int32) in
      let sizes = Option.value_exn (T.unpack sizes Int32) in
      let shape_ = Ops.pack [ Ops.rank x; Ops.one32 ] in
      let before_pad = Ops.reshape start_idxs shape_ in
      let after_pad = Ops.(reshape (shape ~type_out_type:Int32 x -sizes - start_idxs) shape_) in
      let paddings = Ops.concat Ops.one32 [ before_pad; after_pad ] in
      let gradient = Ops.pad gradient paddings in
      [ Some (T.P gradient); None; None ]
    | _ -> failwith "slice should have three single inputs"

  let transpose_gradient ~self ~gradient =
    let gradients ~indices =
      [ Some (T.P (Ops.transpose gradient (Ops.invertPermutation indices))); None ]
    in
    let indices =
      match inputs_exn self with
      | [ _; indices ] -> indices
      | _ -> failwith "Incorrect number of inputs"
    in
    match T.unpack indices Int32 with
    | Some indices -> gradients ~indices
    | None ->
      match T.unpack indices Int64 with
      | Some indices -> gradients ~indices
      | None -> failwith "Improper type for indexes in transpose"


  let () =
    add Ops.Op_names.abs { f = abs_gradient };
    add Ops.Op_names.add { f = add_gradient };
    add Ops.Op_names.addN { f = addn_gradient };
    add Ops.Op_names.avgPool { f = avgpool_gradient };
    add Ops.Op_names.batchMatMul { f = batch_matmul_gradient };
    add Ops.Op_names.concat { f = concat_gradient };
    add Ops.Op_names.cos { f = cos_gradient };
    add Ops.Op_names.conv2D { f = conv2d_gradient };
    add Ops.Op_names.div { f = div_gradient };
    add Ops.Op_names.erf { f = erf_gradient };
    add Ops.Op_names.erfc { f = erfc_gradient };
    add Ops.Op_names.exp { f = exp_gradient };
    add Ops.Op_names.fill { f = fill_gradient };
    add Ops.Op_names.floor { f = none };
    add Ops.Op_names.identity { f = identity_gradient };
    add Ops.Op_names.inv { f = inv_gradient };
    add Ops.Op_names.log { f = log_gradient };
    add Ops.Op_names.matMul { f = matmul_gradient };
    add Ops.Op_names.max { f = minmax_gradient };
    add Ops.Op_names.maxPool { f = maxpool_gradient };
    add Ops.Op_names.mean { f = mean_gradient };
    add Ops.Op_names.min { f = minmax_gradient };
    add Ops.Op_names.mul { f = mul_gradient };
    add Ops.Op_names.neg { f = neg_gradient };
    add Ops.Op_names.pad { f = pad_gradient };
    add Ops.Op_names.pow { f = pow_gradient };
    add Ops.Op_names.reciprocal { f = inv_gradient };
    add Ops.Op_names.relu { f = relu_gradient };
    add Ops.Op_names.reshape { f = reshape_gradient };
    add Ops.Op_names.rsqrt { f = rsqrt_gradient };
    add Ops.Op_names.select { f = select_gradient };
    add Ops.Op_names.sigmoid { f = sigmoid_gradient };
    add Ops.Op_names.sign { f = sign_gradient };
    add Ops.Op_names.sin { f = sin_gradient };
    add Ops.Op_names.slice { f = slice_gradient };
    add Ops.Op_names.softmax { f = softmax_gradient };
    add Ops.Op_names.sqrt { f = sqrt_gradient };
    add Ops.Op_names.square { f = square_gradient };
    add Ops.Op_names.sub { f = sub_gradient };
    add Ops.Op_names.sum { f = sum_gradient };
    add Ops.Op_names.tanh { f = tanh_gradient };
    add Ops.Op_names.transpose { f = transpose_gradient };
    add_multi Ops.Op_names.split { g = split_gradient }
end
