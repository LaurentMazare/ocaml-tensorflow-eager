(* THIS FILE HAS BEEN AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND! *)
open Base
open Tf_core

type 'a t = 'a Op.Tensor_handle.t
module Dim = Operation.Dim
module Type = Operation.Type

let context = Op.default_context ()

let abort
    ?(error_msg="")
    ?(exit_without_error=false)
    ()
  =
  let op =
    Op.create context "Abort"
  in
  Op.set_attr_string op "error_msg" error_msg;
  Op.set_attr_bool op "exit_without_error" exit_without_error;
  Op.execute0 op

let abs
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "Abs"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let accumulatorApplyGradient
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
  =
  let op =
    Op.create context "AccumulatorApplyGradient"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op local_step
    |> fun op -> Op.add_input op gradient
  in
  Op.set_attr_data_type op "dtype" (Op.Tensor_handle.data_type gradient);
  Op.execute0 op

let accumulatorNumAccumulated
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "AccumulatorNumAccumulated"
    |> fun op -> Op.add_input op handle
  in
  Op.execute1 op

let accumulatorSetGlobalStep
    (handle : [ `string ] t)
    (new_global_step : [ `int64 ] t)
  =
  let op =
    Op.create context "AccumulatorSetGlobalStep"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op new_global_step
  in
  Op.execute0 op

let accumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  let op =
    Op.create context "AccumulatorTakeGradient"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op num_required
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let acos
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Acos"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let acosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Acosh"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let add
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
  =
  let op =
    Op.create context "Add"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let addManySparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "AddManySparseToTensorsMap"
    |> fun op -> Op.add_input op sparse_indices
    |> fun op -> Op.add_input op sparse_values
    |> fun op -> Op.add_input op sparse_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sparse_values);
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let addN
    (inputs__ : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 | `variant ] as 't) t list)
  =
  let op =
    Op.create context "AddN"
    |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute1 op

let addSparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "AddSparseToTensorsMap"
    |> fun op -> Op.add_input op sparse_indices
    |> fun op -> Op.add_input op sparse_values
    |> fun op -> Op.add_input op sparse_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sparse_values);
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let adjustContrast
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (contrast_factor : [ `float ] t)
    (min_value : [ `float ] t)
    (max_value : [ `float ] t)
  =
  let op =
    Op.create context "AdjustContrast"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op contrast_factor
    |> fun op -> Op.add_input op min_value
    |> fun op -> Op.add_input op max_value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.execute1 op

let adjustContrastv2
    (images : [ `float ] t)
    (contrast_factor : [ `float ] t)
  =
  let op =
    Op.create context "AdjustContrastv2"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op contrast_factor
  in
  Op.execute1 op

let adjustHue
    (images : [ `float ] t)
    (delta : [ `float ] t)
  =
  let op =
    Op.create context "AdjustHue"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op delta
  in
  Op.execute1 op

let adjustSaturation
    (images : [ `float ] t)
    (scale : [ `float ] t)
  =
  let op =
    Op.create context "AdjustSaturation"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op scale
  in
  Op.execute1 op

let all
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "All"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let allCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let op =
    Op.create context "AllCandidateSampler"
    |> fun op -> Op.add_input op true_classes
  in
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "num_sampled" num_sampled;
  Op.set_attr_bool op "unique" unique;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let angle
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Angle"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let any
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Any"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let applyAdadelta
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum_update : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyAdadelta"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op accum_update
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyAdagradDA
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gradient_accumulator : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gradient_squared_accumulator : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (global_step : [ `int64 ] t)
  =
  let op =
    Op.create context "ApplyAdagradDA"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op gradient_accumulator
    |> fun op -> Op.add_input op gradient_squared_accumulator
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op global_step
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyAdam
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (m : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (v : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta1_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta2_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyAdam"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op m
    |> fun op -> Op.add_input op v
    |> fun op -> Op.add_input op beta1_power
    |> fun op -> Op.add_input op beta2_power
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op beta1
    |> fun op -> Op.add_input op beta2
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.set_attr_bool op "use_nesterov" use_nesterov;
  Op.execute1 op

let applyCenteredRMSProp
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (mg : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (ms : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (mom : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyCenteredRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op mg
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyFtrl
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (linear : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyFtrl"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyFtrlV2
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (linear : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2_shrinkage : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyFtrlV2"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op l2_shrinkage
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyGradientDescent"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op alpha
    |> fun op -> Op.add_input op delta
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyMomentum"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op momentum
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.set_attr_bool op "use_nesterov" use_nesterov;
  Op.execute1 op

let applyProximalAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyProximalAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyProximalGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyProximalGradientDescent"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op alpha
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op delta
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyRMSProp
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (ms : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (mom : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApplyRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let approximateEqual
    ?(tolerance=9.9999997473787516e-06)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ApproximateEqual"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_float op "tolerance" tolerance;
  Op.execute1 op

let argMax
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "ArgMax"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op dimension
  in
  Op.set_attr_data_type op "output_type" Operation.Type.(to_data_type (P type_output_type));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type dimension);
  Op.execute1 op

let argMin
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "ArgMin"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op dimension
  in
  Op.set_attr_data_type op "output_type" Operation.Type.(to_data_type (P type_output_type));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type dimension);
  Op.execute1 op

let asString
    ?(precision=(-1))
    ?(scientific=false)
    ?(shortest=false)
    ?(width=(-1))
    ?(fill="")
    (input : ([< `int32 | `int64 | `complex64 | `float | `double | `bool ] as 't) t)
  =
  let op =
    Op.create context "AsString"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int op "precision" precision;
  Op.set_attr_bool op "scientific" scientific;
  Op.set_attr_bool op "shortest" shortest;
  Op.set_attr_int op "width" width;
  Op.set_attr_string op "fill" fill;
  Op.execute1 op

let asin
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Asin"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let asinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Asinh"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let assign
    ?(validate_shape=true)
    ?(use_locking=true)
    (ref : 't t)
    (value : 't t)
  =
  let op =
    Op.create context "Assign"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_bool op "validate_shape" validate_shape;
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let assignAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "AssignAdd"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let assignSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "AssignSub"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let atan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Atan"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let atan2
    (y : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Atan2"
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y);
  Op.execute1 op

let atanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Atanh"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let audioSpectrogram
    ~window_size
    ~stride
    ?(magnitude_squared=false)
    (input : [ `float ] t)
  =
  let op =
    Op.create context "AudioSpectrogram"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_int op "window_size" window_size;
  Op.set_attr_int op "stride" stride;
  Op.set_attr_bool op "magnitude_squared" magnitude_squared;
  Op.execute1 op

let audioSummary
    ~sample_rate
    ?(max_outputs=3)
    (tag : [ `string ] t)
    (tensor : [ `float ] t)
  =
  let op =
    Op.create context "AudioSummary"
    |> fun op -> Op.add_input op tag
    |> fun op -> Op.add_input op tensor
  in
  Op.set_attr_float op "sample_rate" sample_rate;
  Op.set_attr_int op "max_outputs" max_outputs;
  Op.execute1 op

let audioSummaryV2
    ?(max_outputs=3)
    (tag : [ `string ] t)
    (tensor : [ `float ] t)
    (sample_rate : [ `float ] t)
  =
  let op =
    Op.create context "AudioSummaryV2"
    |> fun op -> Op.add_input op tag
    |> fun op -> Op.add_input op tensor
    |> fun op -> Op.add_input op sample_rate
  in
  Op.set_attr_int op "max_outputs" max_outputs;
  Op.execute1 op

let avgPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (value : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "AvgPool"
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let avgPool3D
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "AvgPool3D"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let avgPool3DGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input_shape : [ `int32 ] t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "AvgPool3DGrad"
    |> fun op -> Op.add_input op orig_input_shape
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let avgPoolGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input_shape : [ `int32 ] t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "AvgPoolGrad"
    |> fun op -> Op.add_input op orig_input_shape
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let barrier
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "Barrier"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let barrierClose
    ?(cancel_pending_enqueues=false)
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "BarrierClose"
    |> fun op -> Op.add_input op handle
  in
  Op.set_attr_bool op "cancel_pending_enqueues" cancel_pending_enqueues;
  Op.execute0 op

let barrierIncompleteSize
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "BarrierIncompleteSize"
    |> fun op -> Op.add_input op handle
  in
  Op.execute1 op

let barrierInsertMany
    ~component_index
    (handle : [ `string ] t)
    (keys : [ `string ] t)
    (values : 't t)
  =
  let op =
    Op.create context "BarrierInsertMany"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type values);
  Op.set_attr_int op "component_index" component_index;
  Op.execute0 op

let barrierReadySize
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "BarrierReadySize"
    |> fun op -> Op.add_input op handle
  in
  Op.execute1 op

let batchCholesky
    (input : ([< `double | `float ] as 't) t)
  =
  let op =
    Op.create context "BatchCholesky"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let batchCholeskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "BatchCholeskyGrad"
    |> fun op -> Op.add_input op l
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type l);
  Op.execute1 op

let batchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (batch_size : [ `int64 ] t)
  =
  let op =
    Op.create context "BatchDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op batch_size
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let batchFFT
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "BatchFFT"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let batchFFT2D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "BatchFFT2D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let batchFFT3D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "BatchFFT3D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let batchIFFT
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "BatchIFFT"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let batchIFFT2D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "BatchIFFT2D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let batchIFFT3D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "BatchIFFT3D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let batchMatMul
    ?(adj_x=false)
    ?(adj_y=false)
    (x : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BatchMatMul"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_bool op "adj_x" adj_x;
  Op.set_attr_bool op "adj_y" adj_y;
  Op.execute1 op

let batchMatrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  let op =
    Op.create context "BatchMatrixBandPart"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op num_lower
    |> fun op -> Op.add_input op num_upper
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let batchMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BatchMatrixDeterminant"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let batchMatrixDiag
    (diagonal : 't t)
  =
  let op =
    Op.create context "BatchMatrixDiag"
    |> fun op -> Op.add_input op diagonal
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type diagonal);
  Op.execute1 op

let batchMatrixDiagPart
    (input : 't t)
  =
  let op =
    Op.create context "BatchMatrixDiagPart"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let batchMatrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float ] as 't) t)
  =
  let op =
    Op.create context "BatchMatrixInverse"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let batchMatrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  let op =
    Op.create context "BatchMatrixSetDiag"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op diagonal
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let batchMatrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  let op =
    Op.create context "BatchMatrixSolve"
    |> fun op -> Op.add_input op matrix
    |> fun op -> Op.add_input op rhs
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type matrix);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let batchMatrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  let op =
    Op.create context "BatchMatrixSolveLs"
    |> fun op -> Op.add_input op matrix
    |> fun op -> Op.add_input op rhs
    |> fun op -> Op.add_input op l2_regularizer
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type matrix);
  Op.set_attr_bool op "fast" fast;
  Op.execute1 op

let batchMatrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  let op =
    Op.create context "BatchMatrixTriangularSolve"
    |> fun op -> Op.add_input op matrix
    |> fun op -> Op.add_input op rhs
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type matrix);
  Op.set_attr_bool op "lower" lower;
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let batchNormWithGlobalNormalization
    ~variance_epsilon
    ~scale_after_normalization
    (t : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (m : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (v : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gamma : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BatchNormWithGlobalNormalization"
    |> fun op -> Op.add_input op t
    |> fun op -> Op.add_input op m
    |> fun op -> Op.add_input op v
    |> fun op -> Op.add_input op beta
    |> fun op -> Op.add_input op gamma
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type t);
  Op.set_attr_float op "variance_epsilon" variance_epsilon;
  Op.set_attr_bool op "scale_after_normalization" scale_after_normalization;
  Op.execute1 op

let batchNormWithGlobalNormalizationGrad
    ~variance_epsilon
    ~scale_after_normalization
    (t : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (m : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (v : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gamma : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BatchNormWithGlobalNormalizationGrad"
    |> fun op -> Op.add_input op t
    |> fun op -> Op.add_input op m
    |> fun op -> Op.add_input op v
    |> fun op -> Op.add_input op gamma
    |> fun op -> Op.add_input op backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type t);
  Op.set_attr_float op "variance_epsilon" variance_epsilon;
  Op.set_attr_bool op "scale_after_normalization" scale_after_normalization;
  Op.execute5 op

let batchSelfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  let op =
    Op.create context "BatchSelfAdjointEig"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let batchSelfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float ] as 't) t)
  =
  let op =
    Op.create context "BatchSelfAdjointEigV2"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "compute_v" compute_v;
  Op.execute2 op

let batchSvd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BatchSvd"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "compute_uv" compute_uv;
  Op.set_attr_bool op "full_matrices" full_matrices;
  Op.execute3 op

let batchToSpace
    ~block_size
    (input : 't t)
    (crops : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "BatchToSpace"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op crops
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type crops);
  Op.set_attr_int op "block_size" block_size;
  Op.execute1 op

let batchToSpaceND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (crops : ([< `int32 | `int64 ] as 'tcrops) t)
  =
  let op =
    Op.create context "BatchToSpaceND"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op block_shape
    |> fun op -> Op.add_input op crops
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tblock_shape" (Op.Tensor_handle.data_type block_shape);
  Op.set_attr_data_type op "Tcrops" (Op.Tensor_handle.data_type crops);
  Op.execute1 op

let betainc
    (a : ([< `float | `double ] as 't) t)
    (b : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Betainc"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op b
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a);
  Op.execute1 op

let biasAdd
    ?(data_format="NHWC")
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BiasAdd"
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op bias
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let biasAddGrad
    ?(data_format="NHWC")
    (out_backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BiasAddGrad"
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type out_backprop);
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let biasAddV1
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "BiasAddV1"
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op bias
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let bincount
    (arr : [ `int32 ] t)
    (size : [ `int32 ] t)
    (weights : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Bincount"
    |> fun op -> Op.add_input op arr
    |> fun op -> Op.add_input op size
    |> fun op -> Op.add_input op weights
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type weights);
  Op.execute1 op

let bitcast
    ~type_type__
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Bitcast"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "type" Operation.Type.(to_data_type (P type_type__));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let bitwiseAnd
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "BitwiseAnd"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let bitwiseOr
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "BitwiseOr"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let bitwiseXor
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "BitwiseXor"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let broadcastArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "BroadcastArgs"
    |> fun op -> Op.add_input op s0
    |> fun op -> Op.add_input op s1
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type s0);
  Op.execute1 op

let broadcastGradientArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "BroadcastGradientArgs"
    |> fun op -> Op.add_input op s0
    |> fun op -> Op.add_input op s1
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type s0);
  Op.execute2 op

let bucketize
    ~boundaries
    (input : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Bucketize"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_float_list op "boundaries" boundaries;
  Op.execute1 op

let cTCGreedyDecoder
    ?(merge_repeated=false)
    (inputs__ : [ `float ] t)
    (sequence_length : [ `int32 ] t)
  =
  let op =
    Op.create context "CTCGreedyDecoder"
    |> fun op -> Op.add_input op inputs__
    |> fun op -> Op.add_input op sequence_length
  in
  Op.set_attr_bool op "merge_repeated" merge_repeated;
  Op.execute4 op

let cTCLoss
    ?(preprocess_collapse_repeated=false)
    ?(ctc_merge_repeated=true)
    ?(ignore_longer_outputs_than_inputs=false)
    (inputs__ : [ `float ] t)
    (labels_indices : [ `int64 ] t)
    (labels_values : [ `int32 ] t)
    (sequence_length : [ `int32 ] t)
  =
  let op =
    Op.create context "CTCLoss"
    |> fun op -> Op.add_input op inputs__
    |> fun op -> Op.add_input op labels_indices
    |> fun op -> Op.add_input op labels_values
    |> fun op -> Op.add_input op sequence_length
  in
  Op.set_attr_bool op "preprocess_collapse_repeated" preprocess_collapse_repeated;
  Op.set_attr_bool op "ctc_merge_repeated" ctc_merge_repeated;
  Op.set_attr_bool op "ignore_longer_outputs_than_inputs" ignore_longer_outputs_than_inputs;
  Op.execute2 op

let cacheDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (filename : [ `string ] t)
  =
  let op =
    Op.create context "CacheDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op filename
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let cast
    ~type_dstT
    (x : 'srcT t)
  =
  let op =
    Op.create context "Cast"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "DstT" Operation.Type.(to_data_type (P type_dstT));
  Op.set_attr_data_type op "SrcT" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let ceil
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Ceil"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let checkNumerics
    ~message
    (tensor : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "CheckNumerics"
    |> fun op -> Op.add_input op tensor
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.set_attr_string op "message" message;
  Op.execute1 op

let cholesky
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Cholesky"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let choleskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "CholeskyGrad"
    |> fun op -> Op.add_input op l
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type l);
  Op.execute1 op

let compareAndBitpack
    (input : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
    (threshold : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "CompareAndBitpack"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op threshold
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let complex
    ~type_tout
    (real : ([< `float | `double ] as 't) t)
    (imag : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Complex"
    |> fun op -> Op.add_input op real
    |> fun op -> Op.add_input op imag
  in
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type real);
  Op.execute1 op

let complexAbs
    ~type_tout
    (x : ([< `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ComplexAbs"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let computeAccidentalHits
    ~num_true
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
    (sampled_candidates : [ `int64 ] t)
  =
  let op =
    Op.create context "ComputeAccidentalHits"
    |> fun op -> Op.add_input op true_classes
    |> fun op -> Op.add_input op sampled_candidates
  in
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let concat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
  =
  let op =
    Op.create context "Concat"
    |> fun op -> Op.add_input op concat_dim
    |> fun init -> List.fold values ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn values));
  Op.set_attr_int op "N" (List.length values);
  Op.execute1 op

let concatOffset
    (concat_dim : [ `int32 ] t)
    (shape : [ `int32 ] t list)
  =
  let op =
    Op.create context "ConcatOffset"
    |> fun op -> Op.add_input op concat_dim
    |> fun init -> List.fold shape ~init ~f:Op.add_input
  in
  Op.set_attr_int op "N" (List.length shape);
  Op.execute op ~output_len:(List.length shape)

let concatV2
    (values : 't t list)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "ConcatV2"
    |> fun init -> List.fold values ~init ~f:Op.add_input
    |> fun op -> Op.add_input op axis
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn values));
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type axis);
  Op.set_attr_int op "N" (List.length values);
  Op.execute1 op

let concatenateDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (another_dataset : [ `variant ] t)
  =
  let op =
    Op.create context "ConcatenateDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op another_dataset
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let conditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "ConditionalAccumulator"
  in
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let conj
    (input : ([< `complex64 | `variant ] as 't) t)
  =
  let op =
    Op.create context "Conj"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let controlTrigger
    ()
  =
  let op =
    Op.create context "ControlTrigger"
  in
  Op.execute0 op

let conv2D
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "Conv2D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_bool op "use_cudnn_on_gpu" use_cudnn_on_gpu;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let conv2DBackpropFilter
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "Conv2DBackpropFilter"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter_sizes
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_bool op "use_cudnn_on_gpu" use_cudnn_on_gpu;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let conv2DBackpropInput
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float ] as 't) t)
    (out_backprop : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "Conv2DBackpropInput"
    |> fun op -> Op.add_input op input_sizes
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type filter);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_bool op "use_cudnn_on_gpu" use_cudnn_on_gpu;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let conv3D
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Conv3D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let conv3DBackpropFilter
    ~strides
    ~padding
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Conv3DBackpropFilter"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let conv3DBackpropFilterV2
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Conv3DBackpropFilterV2"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter_sizes
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let conv3DBackpropInput
    ~strides
    ~padding
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Conv3DBackpropInput"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let conv3DBackpropInputV2
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Conv3DBackpropInputV2"
    |> fun op -> Op.add_input op input_sizes
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type filter);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let copy
    ?(tensor_name="")
    (input : 't t)
  =
  let op =
    Op.create context "Copy"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "tensor_name" tensor_name;
  Op.execute1 op

let copyHost
    ?(tensor_name="")
    (input : 't t)
  =
  let op =
    Op.create context "CopyHost"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "tensor_name" tensor_name;
  Op.execute1 op

let cos
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Cos"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let cosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Cosh"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let countUpTo
    ~limit
    (ref : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "CountUpTo"
    |> fun op -> Op.add_input op ref
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_int op "limit" limit;
  Op.execute1 op

let cropAndResize
    ?(method_="bilinear")
    ?(extrapolation_value=0.)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
    (crop_size : [ `int32 ] t)
  =
  let op =
    Op.create context "CropAndResize"
    |> fun op -> Op.add_input op image
    |> fun op -> Op.add_input op boxes
    |> fun op -> Op.add_input op box_ind
    |> fun op -> Op.add_input op crop_size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type image);
  Op.set_attr_string op "method" method_;
  Op.set_attr_float op "extrapolation_value" extrapolation_value;
  Op.execute1 op

let cropAndResizeGradBoxes
    ?(method_="bilinear")
    (grads : [ `float ] t)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
  =
  let op =
    Op.create context "CropAndResizeGradBoxes"
    |> fun op -> Op.add_input op grads
    |> fun op -> Op.add_input op image
    |> fun op -> Op.add_input op boxes
    |> fun op -> Op.add_input op box_ind
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type image);
  Op.set_attr_string op "method" method_;
  Op.execute1 op

let cropAndResizeGradImage
    ~type_t
    ?(method_="bilinear")
    (grads : [ `float ] t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
    (image_size : [ `int32 ] t)
  =
  let op =
    Op.create context "CropAndResizeGradImage"
    |> fun op -> Op.add_input op grads
    |> fun op -> Op.add_input op boxes
    |> fun op -> Op.add_input op box_ind
    |> fun op -> Op.add_input op image_size
  in
  Op.set_attr_data_type op "T" Operation.Type.(to_data_type (P type_t));
  Op.set_attr_string op "method" method_;
  Op.execute1 op

let cross
    (a : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Cross"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op b
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a);
  Op.execute1 op

let cumprod
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Cumprod"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op axis
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type axis);
  Op.set_attr_bool op "exclusive" exclusive;
  Op.set_attr_bool op "reverse" reverse;
  Op.execute1 op

let cumsum
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Cumsum"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op axis
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type axis);
  Op.set_attr_bool op "exclusive" exclusive;
  Op.set_attr_bool op "reverse" reverse;
  Op.execute1 op

let debugGradientIdentity
    (input : 't t)
  =
  let op =
    Op.create context "DebugGradientIdentity"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let debugIdentity
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  let op =
    Op.create context "DebugIdentity"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "device_name" device_name;
  Op.set_attr_string op "tensor_name" tensor_name;
  Op.set_attr_bool op "gated_grpc" gated_grpc;
  Op.execute1 op

let debugNanCount
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  let op =
    Op.create context "DebugNanCount"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "device_name" device_name;
  Op.set_attr_string op "tensor_name" tensor_name;
  Op.set_attr_bool op "gated_grpc" gated_grpc;
  Op.execute1 op

let debugNumericSummary
    ?(device_name="")
    ?(tensor_name="")
    ?(lower_bound=(Float.neg_infinity))
    ?(upper_bound=Float.infinity)
    ?(mute_if_healthy=false)
    ?(gated_grpc=false)
    (input : 't t)
  =
  let op =
    Op.create context "DebugNumericSummary"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "device_name" device_name;
  Op.set_attr_string op "tensor_name" tensor_name;
  Op.set_attr_float op "lower_bound" lower_bound;
  Op.set_attr_float op "upper_bound" upper_bound;
  Op.set_attr_bool op "mute_if_healthy" mute_if_healthy;
  Op.set_attr_bool op "gated_grpc" gated_grpc;
  Op.execute1 op

let decodeAndCropJpeg
    ?(channels=0)
    ?(ratio=1)
    ?(fancy_upscaling=true)
    ?(try_recover_truncated=false)
    ?(acceptable_fraction=1.)
    ?(dct_method="")
    (contents : [ `string ] t)
    (crop_window : [ `int32 ] t)
  =
  let op =
    Op.create context "DecodeAndCropJpeg"
    |> fun op -> Op.add_input op contents
    |> fun op -> Op.add_input op crop_window
  in
  Op.set_attr_int op "channels" channels;
  Op.set_attr_int op "ratio" ratio;
  Op.set_attr_bool op "fancy_upscaling" fancy_upscaling;
  Op.set_attr_bool op "try_recover_truncated" try_recover_truncated;
  Op.set_attr_float op "acceptable_fraction" acceptable_fraction;
  Op.set_attr_string op "dct_method" dct_method;
  Op.execute1 op

let decodeBase64
    (input : [ `string ] t)
  =
  let op =
    Op.create context "DecodeBase64"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let decodeBmp
    ?(channels=0)
    (contents : [ `string ] t)
  =
  let op =
    Op.create context "DecodeBmp"
    |> fun op -> Op.add_input op contents
  in
  Op.set_attr_int op "channels" channels;
  Op.execute1 op

let decodeGif
    (contents : [ `string ] t)
  =
  let op =
    Op.create context "DecodeGif"
    |> fun op -> Op.add_input op contents
  in
  Op.execute1 op

let decodeJSONExample
    (json_examples : [ `string ] t)
  =
  let op =
    Op.create context "DecodeJSONExample"
    |> fun op -> Op.add_input op json_examples
  in
  Op.execute1 op

let decodeJpeg
    ?(channels=0)
    ?(ratio=1)
    ?(fancy_upscaling=true)
    ?(try_recover_truncated=false)
    ?(acceptable_fraction=1.)
    ?(dct_method="")
    (contents : [ `string ] t)
  =
  let op =
    Op.create context "DecodeJpeg"
    |> fun op -> Op.add_input op contents
  in
  Op.set_attr_int op "channels" channels;
  Op.set_attr_int op "ratio" ratio;
  Op.set_attr_bool op "fancy_upscaling" fancy_upscaling;
  Op.set_attr_bool op "try_recover_truncated" try_recover_truncated;
  Op.set_attr_float op "acceptable_fraction" acceptable_fraction;
  Op.set_attr_string op "dct_method" dct_method;
  Op.execute1 op

let decodePng
    ~type_dtype
    ?(channels=0)
    (contents : [ `string ] t)
  =
  let op =
    Op.create context "DecodePng"
    |> fun op -> Op.add_input op contents
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_int op "channels" channels;
  Op.execute1 op

let decodeRaw
    ~type_out_type
    ?(little_endian=true)
    (bytes : [ `string ] t)
  =
  let op =
    Op.create context "DecodeRaw"
    |> fun op -> Op.add_input op bytes
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_bool op "little_endian" little_endian;
  Op.execute1 op

let decodeWav
    ?(desired_channels=(-1))
    ?(desired_samples=(-1))
    (contents : [ `string ] t)
  =
  let op =
    Op.create context "DecodeWav"
    |> fun op -> Op.add_input op contents
  in
  Op.set_attr_int op "desired_channels" desired_channels;
  Op.set_attr_int op "desired_samples" desired_samples;
  Op.execute2 op

let deleteSessionTensor
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "DeleteSessionTensor"
    |> fun op -> Op.add_input op handle
  in
  Op.execute0 op

let denseToDenseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
  =
  let op =
    Op.create context "DenseToDenseSetOperation"
    |> fun op -> Op.add_input op set1
    |> fun op -> Op.add_input op set2
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type set1);
  Op.set_attr_string op "set_operation" set_operation;
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute3 op

let denseToSparseBatchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (batch_size : [ `int64 ] t)
    (row_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "DenseToSparseBatchDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op batch_size
    |> fun op -> Op.add_input op row_shape
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let denseToSparseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2_indices : [ `int64 ] t)
    (set2_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "DenseToSparseSetOperation"
    |> fun op -> Op.add_input op set1
    |> fun op -> Op.add_input op set2_indices
    |> fun op -> Op.add_input op set2_values
    |> fun op -> Op.add_input op set2_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type set1);
  Op.set_attr_string op "set_operation" set_operation;
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute3 op

let depthToSpace
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  let op =
    Op.create context "DepthToSpace"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int op "block_size" block_size;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let depthwiseConv2dNative
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "DepthwiseConv2dNative"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let depthwiseConv2dNativeBackpropFilter
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "DepthwiseConv2dNativeBackpropFilter"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter_sizes
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let depthwiseConv2dNativeBackpropInput
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "DepthwiseConv2dNativeBackpropInput"
    |> fun op -> Op.add_input op input_sizes
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type filter);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let dequantize
    ?(mode="MIN_COMBINED")
    (input : 't t)
    (min_range : [ `float ] t)
    (max_range : [ `float ] t)
  =
  let op =
    Op.create context "Dequantize"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op min_range
    |> fun op -> Op.add_input op max_range
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "mode" mode;
  Op.execute1 op

let deserializeManySparse
    ~type_dtype
    (serialized_sparse : [ `string ] t)
  =
  let op =
    Op.create context "DeserializeManySparse"
    |> fun op -> Op.add_input op serialized_sparse
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute3 op

let destroyTemporaryVariable
    ~var_name
    (ref : 't t)
  =
  let op =
    Op.create context "DestroyTemporaryVariable"
    |> fun op -> Op.add_input op ref
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_string op "var_name" var_name;
  Op.execute1 op

let diag
    (diagonal : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Diag"
    |> fun op -> Op.add_input op diagonal
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type diagonal);
  Op.execute1 op

let diagPart
    (input : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "DiagPart"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let digamma
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Digamma"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let dilation2D
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Dilation2D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_int_list op "rates" rates;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let dilation2DBackpropFilter
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Dilation2DBackpropFilter"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_int_list op "rates" rates;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let dilation2DBackpropInput
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Dilation2DBackpropInput"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op out_backprop
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_int_list op "rates" rates;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let div
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Div"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let drawBoundingBoxes
    (images : ([< `float ] as 't) t)
    (boxes : [ `float ] t)
  =
  let op =
    Op.create context "DrawBoundingBoxes"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op boxes
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.execute1 op

let dynamicPartition
    ~num_partitions
    (data : 't t)
    (partitions : [ `int32 ] t)
  =
  let op =
    Op.create context "DynamicPartition"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op partitions
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_int op "num_partitions" num_partitions;
  Op.execute op ~output_len:num_partitions

let dynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  let op =
    Op.create context "DynamicStitch"
    |> fun init -> List.fold indices ~init ~f:Op.add_input
    |> fun init -> List.fold data ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn data));
  Op.set_attr_int op "N" (List.length indices);
  Op.execute1 op

let editDistance
    ?(normalize=true)
    (hypothesis_indices : [ `int64 ] t)
    (hypothesis_values : 't t)
    (hypothesis_shape : [ `int64 ] t)
    (truth_indices : [ `int64 ] t)
    (truth_values : 't t)
    (truth_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "EditDistance"
    |> fun op -> Op.add_input op hypothesis_indices
    |> fun op -> Op.add_input op hypothesis_values
    |> fun op -> Op.add_input op hypothesis_shape
    |> fun op -> Op.add_input op truth_indices
    |> fun op -> Op.add_input op truth_values
    |> fun op -> Op.add_input op truth_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type hypothesis_values);
  Op.set_attr_bool op "normalize" normalize;
  Op.execute1 op

let elu
    (features : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Elu"
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.execute1 op

let eluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "EluGrad"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op outputs
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type gradients);
  Op.execute1 op

let encodeBase64
    ?(pad=false)
    (input : [ `string ] t)
  =
  let op =
    Op.create context "EncodeBase64"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_bool op "pad" pad;
  Op.execute1 op

let encodeJpeg
    ?(format="")
    ?(quality=95)
    ?(progressive=false)
    ?(optimize_size=false)
    ?(chroma_downsampling=true)
    ?(density_unit="in")
    ?(x_density=300)
    ?(y_density=300)
    ?(xmp_metadata="")
    (image : [ `uInt8 ] t)
  =
  let op =
    Op.create context "EncodeJpeg"
    |> fun op -> Op.add_input op image
  in
  Op.set_attr_string op "format" format;
  Op.set_attr_int op "quality" quality;
  Op.set_attr_bool op "progressive" progressive;
  Op.set_attr_bool op "optimize_size" optimize_size;
  Op.set_attr_bool op "chroma_downsampling" chroma_downsampling;
  Op.set_attr_string op "density_unit" density_unit;
  Op.set_attr_int op "x_density" x_density;
  Op.set_attr_int op "y_density" y_density;
  Op.set_attr_string op "xmp_metadata" xmp_metadata;
  Op.execute1 op

let encodePng
    ?(compression=(-1))
    (image : ([< `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "EncodePng"
    |> fun op -> Op.add_input op image
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type image);
  Op.set_attr_int op "compression" compression;
  Op.execute1 op

let encodeWav
    (audio : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  let op =
    Op.create context "EncodeWav"
    |> fun op -> Op.add_input op audio
    |> fun op -> Op.add_input op sample_rate
  in
  Op.execute1 op

let enter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  let op =
    Op.create context "Enter"
    |> fun op -> Op.add_input op data
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_string op "frame_name" frame_name;
  Op.set_attr_bool op "is_constant" is_constant;
  Op.set_attr_int op "parallel_iterations" parallel_iterations;
  Op.execute1 op

let equal
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  let op =
    Op.create context "Equal"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let erf
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Erf"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let erfc
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Erfc"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let exit
    (data : 't t)
  =
  let op =
    Op.create context "Exit"
    |> fun op -> Op.add_input op data
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.execute1 op

let exp
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Exp"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let expandDims
    (input : 't t)
    (dim : ([< `int32 | `int64 ] as 'tdim) t)
  =
  let op =
    Op.create context "ExpandDims"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op dim
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tdim" (Op.Tensor_handle.data_type dim);
  Op.execute1 op

let expm1
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Expm1"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let extractGlimpse
    ?(centered=true)
    ?(normalized=true)
    ?(uniform_noise=true)
    (input : [ `float ] t)
    (size : [ `int32 ] t)
    (offsets : [ `float ] t)
  =
  let op =
    Op.create context "ExtractGlimpse"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op size
    |> fun op -> Op.add_input op offsets
  in
  Op.set_attr_bool op "centered" centered;
  Op.set_attr_bool op "normalized" normalized;
  Op.set_attr_bool op "uniform_noise" uniform_noise;
  Op.execute1 op

let extractImagePatches
    ~ksizes
    ~strides
    ~rates
    ~padding
    (images : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "ExtractImagePatches"
    |> fun op -> Op.add_input op images
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.set_attr_int_list op "ksizes" ksizes;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_int_list op "rates" rates;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let extractJpegShape
    ~type_output_type
    (contents : [ `string ] t)
  =
  let op =
    Op.create context "ExtractJpegShape"
    |> fun op -> Op.add_input op contents
  in
  Op.set_attr_data_type op "output_type" Operation.Type.(to_data_type (P type_output_type));
  Op.execute1 op

let fFT
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "FFT"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let fFT2D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "FFT2D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let fFT3D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "FFT3D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let fIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "FIFOQueue"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let fIFOQueueV2
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "FIFOQueueV2"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let fact
    ()
  =
  let op =
    Op.create context "Fact"
  in
  Op.execute1 op

let fakeQuantWithMinMaxArgs
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
  =
  let op =
    Op.create context "FakeQuantWithMinMaxArgs"
    |> fun op -> Op.add_input op inputs__
  in
  Op.set_attr_float op "min" min;
  Op.set_attr_float op "max" max;
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "narrow_range" narrow_range;
  Op.execute1 op

let fakeQuantWithMinMaxArgsGradient
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
  =
  let op =
    Op.create context "FakeQuantWithMinMaxArgsGradient"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op inputs__
  in
  Op.set_attr_float op "min" min;
  Op.set_attr_float op "max" max;
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "narrow_range" narrow_range;
  Op.execute1 op

let fakeQuantWithMinMaxVars
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let op =
    Op.create context "FakeQuantWithMinMaxVars"
    |> fun op -> Op.add_input op inputs__
    |> fun op -> Op.add_input op min
    |> fun op -> Op.add_input op max
  in
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "narrow_range" narrow_range;
  Op.execute1 op

let fakeQuantWithMinMaxVarsGradient
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let op =
    Op.create context "FakeQuantWithMinMaxVarsGradient"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op inputs__
    |> fun op -> Op.add_input op min
    |> fun op -> Op.add_input op max
  in
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "narrow_range" narrow_range;
  Op.execute3 op

let fakeQuantWithMinMaxVarsPerChannel
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let op =
    Op.create context "FakeQuantWithMinMaxVarsPerChannel"
    |> fun op -> Op.add_input op inputs__
    |> fun op -> Op.add_input op min
    |> fun op -> Op.add_input op max
  in
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "narrow_range" narrow_range;
  Op.execute1 op

let fakeQuantWithMinMaxVarsPerChannelGradient
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let op =
    Op.create context "FakeQuantWithMinMaxVarsPerChannelGradient"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op inputs__
    |> fun op -> Op.add_input op min
    |> fun op -> Op.add_input op max
  in
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "narrow_range" narrow_range;
  Op.execute3 op

let fakeQueue
    (resource : [ `resource ] t)
  =
  let op =
    Op.create context "FakeQueue"
    |> fun op -> Op.add_input op resource
  in
  Op.execute1 op

let fill
    (dims : [ `int32 ] t)
    (value : 't t)
  =
  let op =
    Op.create context "Fill"
    |> fun op -> Op.add_input op dims
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let fixedLengthRecordDataset
    (filenames : [ `string ] t)
    (header_bytes : [ `int64 ] t)
    (record_bytes : [ `int64 ] t)
    (footer_bytes : [ `int64 ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op =
    Op.create context "FixedLengthRecordDataset"
    |> fun op -> Op.add_input op filenames
    |> fun op -> Op.add_input op header_bytes
    |> fun op -> Op.add_input op record_bytes
    |> fun op -> Op.add_input op footer_bytes
    |> fun op -> Op.add_input op buffer_size
  in
  Op.execute1 op

let fixedLengthRecordReader
    ?(header_bytes=0)
    ~record_bytes
    ?(footer_bytes=0)
    ?(hop_bytes=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "FixedLengthRecordReader"
  in
  Op.set_attr_int op "header_bytes" header_bytes;
  Op.set_attr_int op "record_bytes" record_bytes;
  Op.set_attr_int op "footer_bytes" footer_bytes;
  Op.set_attr_int op "hop_bytes" hop_bytes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let fixedLengthRecordReaderV2
    ?(header_bytes=0)
    ~record_bytes
    ?(footer_bytes=0)
    ?(hop_bytes=0)
    ?(container="")
    ?(shared_name="")
    ?(encoding="")
    ()
  =
  let op =
    Op.create context "FixedLengthRecordReaderV2"
  in
  Op.set_attr_int op "header_bytes" header_bytes;
  Op.set_attr_int op "record_bytes" record_bytes;
  Op.set_attr_int op "footer_bytes" footer_bytes;
  Op.set_attr_int op "hop_bytes" hop_bytes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_string op "encoding" encoding;
  Op.execute1 op

let fixedUnigramCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(vocab_file="")
    ?(distortion=1.)
    ?(num_reserved_ids=0)
    ?(num_shards=1)
    ?(shard=0)
    ?(unigrams=[])
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let op =
    Op.create context "FixedUnigramCandidateSampler"
    |> fun op -> Op.add_input op true_classes
  in
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "num_sampled" num_sampled;
  Op.set_attr_bool op "unique" unique;
  Op.set_attr_int op "range_max" range_max;
  Op.set_attr_string op "vocab_file" vocab_file;
  Op.set_attr_float op "distortion" distortion;
  Op.set_attr_int op "num_reserved_ids" num_reserved_ids;
  Op.set_attr_int op "num_shards" num_shards;
  Op.set_attr_int op "shard" shard;
  Op.set_attr_float_list op "unigrams" unigrams;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let floor
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Floor"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let floorDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "FloorDiv"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let floorMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op =
    Op.create context "FloorMod"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let fractionalAvgPool
    ~pooling_ratio
    ?(pseudo_random=false)
    ?(overlapping=false)
    ?(deterministic=false)
    ?(seed=0)
    ?(seed2=0)
    (value : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "FractionalAvgPool"
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_float_list op "pooling_ratio" pooling_ratio;
  Op.set_attr_bool op "pseudo_random" pseudo_random;
  Op.set_attr_bool op "overlapping" overlapping;
  Op.set_attr_bool op "deterministic" deterministic;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let fractionalAvgPoolGrad
    ?(overlapping=false)
    (orig_input_tensor_shape : [ `int64 ] t)
    (out_backprop : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (row_pooling_sequence : [ `int64 ] t)
    (col_pooling_sequence : [ `int64 ] t)
  =
  let op =
    Op.create context "FractionalAvgPoolGrad"
    |> fun op -> Op.add_input op orig_input_tensor_shape
    |> fun op -> Op.add_input op out_backprop
    |> fun op -> Op.add_input op row_pooling_sequence
    |> fun op -> Op.add_input op col_pooling_sequence
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type out_backprop);
  Op.set_attr_bool op "overlapping" overlapping;
  Op.execute1 op

let fractionalMaxPool
    ~pooling_ratio
    ?(pseudo_random=false)
    ?(overlapping=false)
    ?(deterministic=false)
    ?(seed=0)
    ?(seed2=0)
    (value : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "FractionalMaxPool"
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_float_list op "pooling_ratio" pooling_ratio;
  Op.set_attr_bool op "pseudo_random" pseudo_random;
  Op.set_attr_bool op "overlapping" overlapping;
  Op.set_attr_bool op "deterministic" deterministic;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let fractionalMaxPoolGrad
    ?(overlapping=false)
    (orig_input : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (row_pooling_sequence : [ `int64 ] t)
    (col_pooling_sequence : [ `int64 ] t)
  =
  let op =
    Op.create context "FractionalMaxPoolGrad"
    |> fun op -> Op.add_input op orig_input
    |> fun op -> Op.add_input op orig_output
    |> fun op -> Op.add_input op out_backprop
    |> fun op -> Op.add_input op row_pooling_sequence
    |> fun op -> Op.add_input op col_pooling_sequence
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type orig_input);
  Op.set_attr_bool op "overlapping" overlapping;
  Op.execute1 op

let fusedBatchNorm
    ?(epsilon=9.9999997473787516e-05)
    ?(data_format="NHWC")
    ?(is_training=true)
    (x : ([< `float ] as 't) t)
    (scale : ([< `float ] as 't) t)
    (offset : ([< `float ] as 't) t)
    (mean : ([< `float ] as 't) t)
    (variance : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "FusedBatchNorm"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op scale
    |> fun op -> Op.add_input op offset
    |> fun op -> Op.add_input op mean
    |> fun op -> Op.add_input op variance
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_float op "epsilon" epsilon;
  Op.set_attr_string op "data_format" data_format;
  Op.set_attr_bool op "is_training" is_training;
  Op.execute5 op

let fusedBatchNormGrad
    ?(epsilon=9.9999997473787516e-05)
    ?(data_format="NHWC")
    ?(is_training=true)
    (y_backprop : ([< `float ] as 't) t)
    (x : ([< `float ] as 't) t)
    (scale : ([< `float ] as 't) t)
    (reserve_space_1 : ([< `float ] as 't) t)
    (reserve_space_2 : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "FusedBatchNormGrad"
    |> fun op -> Op.add_input op y_backprop
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op scale
    |> fun op -> Op.add_input op reserve_space_1
    |> fun op -> Op.add_input op reserve_space_2
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y_backprop);
  Op.set_attr_float op "epsilon" epsilon;
  Op.set_attr_string op "data_format" data_format;
  Op.set_attr_bool op "is_training" is_training;
  Op.execute5 op

let fusedBatchNormGradV2
    ?(epsilon=9.9999997473787516e-05)
    ?(data_format="NHWC")
    ?(is_training=true)
    (y_backprop : ([< `float ] as 't) t)
    (x : ([< `float ] as 't) t)
    (scale : [ `float ] t)
    (reserve_space_1 : ([< `float ] as 'u) t)
    (reserve_space_2 : ([< `float ] as 'u) t)
  =
  let op =
    Op.create context "FusedBatchNormGradV2"
    |> fun op -> Op.add_input op y_backprop
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op scale
    |> fun op -> Op.add_input op reserve_space_1
    |> fun op -> Op.add_input op reserve_space_2
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y_backprop);
  Op.set_attr_data_type op "U" (Op.Tensor_handle.data_type reserve_space_1);
  Op.set_attr_float op "epsilon" epsilon;
  Op.set_attr_string op "data_format" data_format;
  Op.set_attr_bool op "is_training" is_training;
  Op.execute5 op

let fusedBatchNormV2
    ?(epsilon=9.9999997473787516e-05)
    ?(data_format="NHWC")
    ?(is_training=true)
    (x : ([< `float ] as 't) t)
    (scale : ([< `float ] as 'u) t)
    (offset : ([< `float ] as 'u) t)
    (mean : ([< `float ] as 'u) t)
    (variance : ([< `float ] as 'u) t)
  =
  let op =
    Op.create context "FusedBatchNormV2"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op scale
    |> fun op -> Op.add_input op offset
    |> fun op -> Op.add_input op mean
    |> fun op -> Op.add_input op variance
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "U" (Op.Tensor_handle.data_type scale);
  Op.set_attr_float op "epsilon" epsilon;
  Op.set_attr_string op "data_format" data_format;
  Op.set_attr_bool op "is_training" is_training;
  Op.execute5 op

let fusedPadConv2D
    ~mode
    ~strides
    ~padding
    (input : ([< `float ] as 't) t)
    (paddings : [ `int32 ] t)
    (filter : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "FusedPadConv2D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op paddings
    |> fun op -> Op.add_input op filter
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "mode" mode;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let fusedResizeAndPadConv2D
    ?(resize_align_corners=false)
    ~mode
    ~strides
    ~padding
    (input : ([< `float ] as 't) t)
    (size : [ `int32 ] t)
    (paddings : [ `int32 ] t)
    (filter : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "FusedResizeAndPadConv2D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op size
    |> fun op -> Op.add_input op paddings
    |> fun op -> Op.add_input op filter
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "resize_align_corners" resize_align_corners;
  Op.set_attr_string op "mode" mode;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let gather
    ?(validate_indices=true)
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "Gather"
    |> fun op -> Op.add_input op params
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "Tparams" (Op.Tensor_handle.data_type params);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute1 op

let gatherNd
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "GatherNd"
    |> fun op -> Op.add_input op params
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "Tparams" (Op.Tensor_handle.data_type params);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let gatherV2
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (axis : ([< `int32 | `int64 ] as 'taxis) t)
  =
  let op =
    Op.create context "GatherV2"
    |> fun op -> Op.add_input op params
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op axis
  in
  Op.set_attr_data_type op "Tparams" (Op.Tensor_handle.data_type params);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_data_type op "Taxis" (Op.Tensor_handle.data_type axis);
  Op.execute1 op

let generateVocabRemapping
    ~new_vocab_offset
    ~num_new_vocab
    (new_vocab_file : [ `string ] t)
    (old_vocab_file : [ `string ] t)
  =
  let op =
    Op.create context "GenerateVocabRemapping"
    |> fun op -> Op.add_input op new_vocab_file
    |> fun op -> Op.add_input op old_vocab_file
  in
  Op.set_attr_int op "new_vocab_offset" new_vocab_offset;
  Op.set_attr_int op "num_new_vocab" num_new_vocab;
  Op.execute2 op

let getSessionHandle
    (value : 't t)
  =
  let op =
    Op.create context "GetSessionHandle"
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let getSessionHandleV2
    (value : 't t)
  =
  let op =
    Op.create context "GetSessionHandleV2"
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let getSessionTensor
    ~type_dtype
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "GetSessionTensor"
    |> fun op -> Op.add_input op handle
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let greater
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Greater"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let greaterEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "GreaterEqual"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let hSVToRGB
    (images : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "HSVToRGB"
    |> fun op -> Op.add_input op images
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.execute1 op

let hashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let op =
    Op.create context "HashTable"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.execute1 op

let hashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let op =
    Op.create context "HashTableV2"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.execute1 op

let histogramSummary
    (tag : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "HistogramSummary"
    |> fun op -> Op.add_input op tag
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type values);
  Op.execute1 op

let iFFT
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "IFFT"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let iFFT2D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "IFFT2D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let iFFT3D
    (input : [ `complex64 ] t)
  =
  let op =
    Op.create context "IFFT3D"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let iRFFT
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let op =
    Op.create context "IRFFT"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op fft_length
  in
  Op.execute1 op

let iRFFT2D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let op =
    Op.create context "IRFFT2D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op fft_length
  in
  Op.execute1 op

let iRFFT3D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let op =
    Op.create context "IRFFT3D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op fft_length
  in
  Op.execute1 op

let identity
    (input : 't t)
  =
  let op =
    Op.create context "Identity"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let identityReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "IdentityReader"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let identityReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "IdentityReaderV2"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let igamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Igamma"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a);
  Op.execute1 op

let igammac
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Igammac"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a);
  Op.execute1 op

let ignoreErrorsDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
  =
  let op =
    Op.create context "IgnoreErrorsDataset"
    |> fun op -> Op.add_input op input_dataset
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let imag
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Imag"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let imageSummary
    ?(max_images=3)
    (tag : [ `string ] t)
    (tensor : ([< `uInt8 | `float | `double ] as 't) t)
  =
  let op =
    Op.create context "ImageSummary"
    |> fun op -> Op.add_input op tag
    |> fun op -> Op.add_input op tensor
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.set_attr_int op "max_images" max_images;
  Op.execute1 op

let immutableConst
    ~type_dtype
    ~shape
    ~memory_region_name
    ()
  =
  let op =
    Op.create context "ImmutableConst"
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "memory_region_name" memory_region_name;
  Op.execute1 op

let inTopK
    ~k
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "InTopK"
    |> fun op -> Op.add_input op predictions
    |> fun op -> Op.add_input op targets
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type targets);
  Op.set_attr_int op "k" k;
  Op.execute1 op

let inTopKV2
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
    (k : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "InTopKV2"
    |> fun op -> Op.add_input op predictions
    |> fun op -> Op.add_input op targets
    |> fun op -> Op.add_input op k
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type targets);
  Op.execute1 op

let initializeTable
    (table_handle : [ `string ] t)
    (keys : 'tkey t)
    (values : 'tval t)
  =
  let op =
    Op.create context "InitializeTable"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "Tkey" (Op.Tensor_handle.data_type keys);
  Op.set_attr_data_type op "Tval" (Op.Tensor_handle.data_type values);
  Op.execute0 op

let initializeTableFromTextFile
    ~key_index
    ~value_index
    ?(vocab_size=(-1))
    ?(delimiter="	")
    (table_handle : [ `string ] t)
    (filename : [ `string ] t)
  =
  let op =
    Op.create context "InitializeTableFromTextFile"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op filename
  in
  Op.set_attr_int op "key_index" key_index;
  Op.set_attr_int op "value_index" value_index;
  Op.set_attr_int op "vocab_size" vocab_size;
  Op.set_attr_string op "delimiter" delimiter;
  Op.execute0 op

let initializeTableFromTextFileV2
    ~key_index
    ~value_index
    ?(vocab_size=(-1))
    ?(delimiter="	")
    (table_handle : [ `resource ] t)
    (filename : [ `string ] t)
  =
  let op =
    Op.create context "InitializeTableFromTextFileV2"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op filename
  in
  Op.set_attr_int op "key_index" key_index;
  Op.set_attr_int op "value_index" value_index;
  Op.set_attr_int op "vocab_size" vocab_size;
  Op.set_attr_string op "delimiter" delimiter;
  Op.execute0 op

let initializeTableV2
    (table_handle : [ `resource ] t)
    (keys : 'tkey t)
    (values : 'tval t)
  =
  let op =
    Op.create context "InitializeTableV2"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "Tkey" (Op.Tensor_handle.data_type keys);
  Op.set_attr_data_type op "Tval" (Op.Tensor_handle.data_type values);
  Op.execute0 op

let inv
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Inv"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let invGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "InvGrad"
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op dy
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y);
  Op.execute1 op

let invert
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Invert"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let invertPermutation
    (x : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "InvertPermutation"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let isFinite
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "IsFinite"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let isInf
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "IsInf"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let isNan
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "IsNan"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let isVariableInitialized
    (ref : 'dtype t)
  =
  let op =
    Op.create context "IsVariableInitialized"
    |> fun op -> Op.add_input op ref
  in
  Op.set_attr_data_type op "dtype" (Op.Tensor_handle.data_type ref);
  Op.execute1 op

let iterator
    ~shared_name
    ~container
    ~output_types
    ~output_shapes
    ()
  =
  let op =
    Op.create context "Iterator"
  in
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_string op "container" container;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let iteratorFromStringHandle
    ?(output_types=[])
    ?(output_shapes=[])
    (string_handle : [ `string ] t)
  =
  let op =
    Op.create context "IteratorFromStringHandle"
    |> fun op -> Op.add_input op string_handle
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let iteratorToStringHandle
    (resource_handle : [ `resource ] t)
  =
  let op =
    Op.create context "IteratorToStringHandle"
    |> fun op -> Op.add_input op resource_handle
  in
  Op.execute1 op

let l2Loss
    (t : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "L2Loss"
    |> fun op -> Op.add_input op t
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type t);
  Op.execute1 op

let lMDBReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "LMDBReader"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let lRN
    ?(depth_radius=5)
    ?(bias=1.)
    ?(alpha=1.)
    ?(beta=0.5)
    (input : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "LRN"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int op "depth_radius" depth_radius;
  Op.set_attr_float op "bias" bias;
  Op.set_attr_float op "alpha" alpha;
  Op.set_attr_float op "beta" beta;
  Op.execute1 op

let lRNGrad
    ?(depth_radius=5)
    ?(bias=1.)
    ?(alpha=1.)
    ?(beta=0.5)
    (input_grads : ([< `float ] as 't) t)
    (input_image : ([< `float ] as 't) t)
    (output_image : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "LRNGrad"
    |> fun op -> Op.add_input op input_grads
    |> fun op -> Op.add_input op input_image
    |> fun op -> Op.add_input op output_image
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input_grads);
  Op.set_attr_int op "depth_radius" depth_radius;
  Op.set_attr_float op "bias" bias;
  Op.set_attr_float op "alpha" alpha;
  Op.set_attr_float op "beta" beta;
  Op.execute1 op

let learnedUnigramCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let op =
    Op.create context "LearnedUnigramCandidateSampler"
    |> fun op -> Op.add_input op true_classes
  in
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "num_sampled" num_sampled;
  Op.set_attr_bool op "unique" unique;
  Op.set_attr_int op "range_max" range_max;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let less
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Less"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let lessEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "LessEqual"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let lgamma
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Lgamma"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let linSpace
    (start : ([< `float | `double ] as 't) t)
    (stop : ([< `float | `double ] as 't) t)
    (num : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "LinSpace"
    |> fun op -> Op.add_input op start
    |> fun op -> Op.add_input op stop
    |> fun op -> Op.add_input op num
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type start);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type num);
  Op.execute1 op

let listDiff
    ~type_out_idx
    (x : 't t)
    (y : 't t)
  =
  let op =
    Op.create context "ListDiff"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "out_idx" Operation.Type.(to_data_type (P type_out_idx));
  Op.execute2 op

let loadAndRemapMatrix
    ~num_rows
    ~num_cols
    ?(max_rows_in_memory=(-1))
    (ckpt_path : [ `string ] t)
    (old_tensor_name : [ `string ] t)
    (row_remapping : [ `int64 ] t)
    (col_remapping : [ `int64 ] t)
    (initializing_values : [ `float ] t)
  =
  let op =
    Op.create context "LoadAndRemapMatrix"
    |> fun op -> Op.add_input op ckpt_path
    |> fun op -> Op.add_input op old_tensor_name
    |> fun op -> Op.add_input op row_remapping
    |> fun op -> Op.add_input op col_remapping
    |> fun op -> Op.add_input op initializing_values
  in
  Op.set_attr_int op "num_rows" num_rows;
  Op.set_attr_int op "num_cols" num_cols;
  Op.set_attr_int op "max_rows_in_memory" max_rows_in_memory;
  Op.execute1 op

let log
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Log"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let log1p
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Log1p"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let logMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "LogMatrixDeterminant"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute2 op

let logSoftmax
    (logits : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "LogSoftmax"
    |> fun op -> Op.add_input op logits
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type logits);
  Op.execute1 op

let logUniformCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let op =
    Op.create context "LogUniformCandidateSampler"
    |> fun op -> Op.add_input op true_classes
  in
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "num_sampled" num_sampled;
  Op.set_attr_bool op "unique" unique;
  Op.set_attr_int op "range_max" range_max;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let logicalAnd
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  let op =
    Op.create context "LogicalAnd"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.execute1 op

let logicalNot
    (x : [ `bool ] t)
  =
  let op =
    Op.create context "LogicalNot"
    |> fun op -> Op.add_input op x
  in
  Op.execute1 op

let logicalOr
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  let op =
    Op.create context "LogicalOr"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.execute1 op

let lookupTableExport
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `string ] t)
  =
  let op =
    Op.create context "LookupTableExport"
    |> fun op -> Op.add_input op table_handle
  in
  Op.set_attr_data_type op "Tkeys" Operation.Type.(to_data_type (P type_tkeys));
  Op.set_attr_data_type op "Tvalues" Operation.Type.(to_data_type (P type_tvalues));
  Op.execute2 op

let lookupTableExportV2
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `resource ] t)
  =
  let op =
    Op.create context "LookupTableExportV2"
    |> fun op -> Op.add_input op table_handle
  in
  Op.set_attr_data_type op "Tkeys" Operation.Type.(to_data_type (P type_tkeys));
  Op.set_attr_data_type op "Tvalues" Operation.Type.(to_data_type (P type_tvalues));
  Op.execute2 op

let lookupTableFind
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  let op =
    Op.create context "LookupTableFind"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op default_value
  in
  Op.set_attr_data_type op "Tout" (Op.Tensor_handle.data_type default_value);
  Op.set_attr_data_type op "Tin" (Op.Tensor_handle.data_type keys);
  Op.execute1 op

let lookupTableFindV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  let op =
    Op.create context "LookupTableFindV2"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op default_value
  in
  Op.set_attr_data_type op "Tout" (Op.Tensor_handle.data_type default_value);
  Op.set_attr_data_type op "Tin" (Op.Tensor_handle.data_type keys);
  Op.execute1 op

let lookupTableImport
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op =
    Op.create context "LookupTableImport"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "Tin" (Op.Tensor_handle.data_type keys);
  Op.set_attr_data_type op "Tout" (Op.Tensor_handle.data_type values);
  Op.execute0 op

let lookupTableImportV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op =
    Op.create context "LookupTableImportV2"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "Tin" (Op.Tensor_handle.data_type keys);
  Op.set_attr_data_type op "Tout" (Op.Tensor_handle.data_type values);
  Op.execute0 op

let lookupTableInsert
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op =
    Op.create context "LookupTableInsert"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "Tin" (Op.Tensor_handle.data_type keys);
  Op.set_attr_data_type op "Tout" (Op.Tensor_handle.data_type values);
  Op.execute0 op

let lookupTableInsertV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op =
    Op.create context "LookupTableInsertV2"
    |> fun op -> Op.add_input op table_handle
    |> fun op -> Op.add_input op keys
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "Tin" (Op.Tensor_handle.data_type keys);
  Op.set_attr_data_type op "Tout" (Op.Tensor_handle.data_type values);
  Op.execute0 op

let lookupTableSize
    (table_handle : [ `string ] t)
  =
  let op =
    Op.create context "LookupTableSize"
    |> fun op -> Op.add_input op table_handle
  in
  Op.execute1 op

let lookupTableSizeV2
    (table_handle : [ `resource ] t)
  =
  let op =
    Op.create context "LookupTableSizeV2"
    |> fun op -> Op.add_input op table_handle
  in
  Op.execute1 op

let loopCond
    (input : [ `bool ] t)
  =
  let op =
    Op.create context "LoopCond"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let makeIterator
    (dataset : [ `variant ] t)
    (iterator : [ `resource ] t)
  =
  let op =
    Op.create context "MakeIterator"
    |> fun op -> Op.add_input op dataset
    |> fun op -> Op.add_input op iterator
  in
  Op.execute0 op

let mapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "MapClear"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute0 op

let mapIncompleteSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "MapIncompleteSize"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let mapSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "MapSize"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let matMul
    ?(transpose_a=false)
    ?(transpose_b=false)
    (a : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (b : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "MatMul"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op b
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a);
  Op.set_attr_bool op "transpose_a" transpose_a;
  Op.set_attr_bool op "transpose_b" transpose_b;
  Op.execute1 op

let matchingFiles
    (pattern : [ `string ] t)
  =
  let op =
    Op.create context "MatchingFiles"
    |> fun op -> Op.add_input op pattern
  in
  Op.execute1 op

let matrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  let op =
    Op.create context "MatrixBandPart"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op num_lower
    |> fun op -> Op.add_input op num_upper
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let matrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "MatrixDeterminant"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let matrixDiag
    (diagonal : 't t)
  =
  let op =
    Op.create context "MatrixDiag"
    |> fun op -> Op.add_input op diagonal
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type diagonal);
  Op.execute1 op

let matrixDiagPart
    (input : 't t)
  =
  let op =
    Op.create context "MatrixDiagPart"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let matrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "MatrixInverse"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let matrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  let op =
    Op.create context "MatrixSetDiag"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op diagonal
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let matrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "MatrixSolve"
    |> fun op -> Op.add_input op matrix
    |> fun op -> Op.add_input op rhs
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type matrix);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let matrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  let op =
    Op.create context "MatrixSolveLs"
    |> fun op -> Op.add_input op matrix
    |> fun op -> Op.add_input op rhs
    |> fun op -> Op.add_input op l2_regularizer
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type matrix);
  Op.set_attr_bool op "fast" fast;
  Op.execute1 op

let matrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "MatrixTriangularSolve"
    |> fun op -> Op.add_input op matrix
    |> fun op -> Op.add_input op rhs
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type matrix);
  Op.set_attr_bool op "lower" lower;
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let max
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Max"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let maxPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "MaxPool"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPool3D
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "MaxPool3D"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPool3DGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input : ([< `float ] as 'tInput) t)
    (orig_output : ([< `float ] as 'tInput) t)
    (grad : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "MaxPool3DGrad"
    |> fun op -> Op.add_input op orig_input
    |> fun op -> Op.add_input op orig_output
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_data_type op "TInput" (Op.Tensor_handle.data_type orig_input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPool3DGradGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input : ([< `float ] as 't) t)
    (orig_output : ([< `float ] as 't) t)
    (grad : ([< `float ] as 't) t)
  =
  let op =
    Op.create context "MaxPool3DGradGrad"
    |> fun op -> Op.add_input op orig_input
    |> fun op -> Op.add_input op orig_output
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type orig_input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPoolGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "MaxPoolGrad"
    |> fun op -> Op.add_input op orig_input
    |> fun op -> Op.add_input op orig_output
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type orig_input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPoolGradGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "MaxPoolGradGrad"
    |> fun op -> Op.add_input op orig_input
    |> fun op -> Op.add_input op orig_output
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type orig_input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPoolGradGradV2
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  let op =
    Op.create context "MaxPoolGradGradV2"
    |> fun op -> Op.add_input op orig_input
    |> fun op -> Op.add_input op orig_output
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op ksize
    |> fun op -> Op.add_input op strides
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type orig_input);
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPoolGradGradWithArgmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (argmax : ([< `int32 | `int64 ] as 'targmax) t)
  =
  let op =
    Op.create context "MaxPoolGradGradWithArgmax"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op argmax
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Targmax" (Op.Tensor_handle.data_type argmax);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let maxPoolGradV2
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  let op =
    Op.create context "MaxPoolGradV2"
    |> fun op -> Op.add_input op orig_input
    |> fun op -> Op.add_input op orig_output
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op ksize
    |> fun op -> Op.add_input op strides
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type orig_input);
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPoolGradWithArgmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (argmax : ([< `int32 | `int64 ] as 'targmax) t)
  =
  let op =
    Op.create context "MaxPoolGradWithArgmax"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op argmax
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Targmax" (Op.Tensor_handle.data_type argmax);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let maxPoolV2
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  let op =
    Op.create context "MaxPoolV2"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op ksize
    |> fun op -> Op.add_input op strides
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let maxPoolWithArgmax
    ~type_targmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "MaxPoolWithArgmax"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Targmax" Operation.Type.(to_data_type (P type_targmax));
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute2 op

let maximum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "Maximum"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let mean
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Mean"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let merge
    (inputs__ : 't t list)
  =
  let op =
    Op.create context "Merge"
    |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute2 op

let mergeSummary
    (inputs__ : [ `string ] t list)
  =
  let op =
    Op.create context "MergeSummary"
    |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  in
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute1 op

let mergeV2Checkpoints
    ?(delete_old_dirs=true)
    (checkpoint_prefixes : [ `string ] t)
    (destination_prefix : [ `string ] t)
  =
  let op =
    Op.create context "MergeV2Checkpoints"
    |> fun op -> Op.add_input op checkpoint_prefixes
    |> fun op -> Op.add_input op destination_prefix
  in
  Op.set_attr_bool op "delete_old_dirs" delete_old_dirs;
  Op.execute0 op

let mfcc
    ?(upper_frequency_limit=4000.)
    ?(lower_frequency_limit=20.)
    ?(filterbank_channel_count=40)
    ?(dct_coefficient_count=13)
    (spectrogram : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  let op =
    Op.create context "Mfcc"
    |> fun op -> Op.add_input op spectrogram
    |> fun op -> Op.add_input op sample_rate
  in
  Op.set_attr_float op "upper_frequency_limit" upper_frequency_limit;
  Op.set_attr_float op "lower_frequency_limit" lower_frequency_limit;
  Op.set_attr_int op "filterbank_channel_count" filterbank_channel_count;
  Op.set_attr_int op "dct_coefficient_count" dct_coefficient_count;
  Op.execute1 op

let min
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Min"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let minimum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "Minimum"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let mirrorPad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op =
    Op.create context "MirrorPad"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op paddings
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.Tensor_handle.data_type paddings);
  Op.set_attr_string op "mode" mode;
  Op.execute1 op

let mirrorPadGrad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op =
    Op.create context "MirrorPadGrad"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op paddings
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.Tensor_handle.data_type paddings);
  Op.set_attr_string op "mode" mode;
  Op.execute1 op

let mod_
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Mod"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let mul
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Mul"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let multinomial
    ?(seed=0)
    ?(seed2=0)
    (logits : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (num_samples : [ `int32 ] t)
  =
  let op =
    Op.create context "Multinomial"
    |> fun op -> Op.add_input op logits
    |> fun op -> Op.add_input op num_samples
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type logits);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let mutableDenseHashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ?(initial_num_buckets=131072)
    ?(max_load_factor=0.800000011920929)
    (empty_key : 'key_dtype t)
  =
  let op =
    Op.create context "MutableDenseHashTable"
    |> fun op -> Op.add_input op empty_key
  in
  Op.set_attr_data_type op "key_dtype" (Op.Tensor_handle.data_type empty_key);
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.set_attr_shape op "value_shape" value_shape;
  Op.set_attr_int op "initial_num_buckets" initial_num_buckets;
  Op.set_attr_float op "max_load_factor" max_load_factor;
  Op.execute1 op

let mutableDenseHashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ?(initial_num_buckets=131072)
    ?(max_load_factor=0.800000011920929)
    (empty_key : 'key_dtype t)
  =
  let op =
    Op.create context "MutableDenseHashTableV2"
    |> fun op -> Op.add_input op empty_key
  in
  Op.set_attr_data_type op "key_dtype" (Op.Tensor_handle.data_type empty_key);
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.set_attr_shape op "value_shape" value_shape;
  Op.set_attr_int op "initial_num_buckets" initial_num_buckets;
  Op.set_attr_float op "max_load_factor" max_load_factor;
  Op.execute1 op

let mutableHashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let op =
    Op.create context "MutableHashTable"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.execute1 op

let mutableHashTableOfTensors
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ()
  =
  let op =
    Op.create context "MutableHashTableOfTensors"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.set_attr_shape op "value_shape" value_shape;
  Op.execute1 op

let mutableHashTableOfTensorsV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ()
  =
  let op =
    Op.create context "MutableHashTableOfTensorsV2"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.set_attr_shape op "value_shape" value_shape;
  Op.execute1 op

let mutableHashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let op =
    Op.create context "MutableHashTableV2"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.execute1 op

let neg
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Neg"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let negTrain
    ~vocab_count
    ~num_negative_samples
    (w_in : [ `float ] t)
    (w_out : [ `float ] t)
    (examples : [ `int32 ] t)
    (labels : [ `int32 ] t)
    (lr : [ `float ] t)
  =
  let op =
    Op.create context "NegTrain"
    |> fun op -> Op.add_input op w_in
    |> fun op -> Op.add_input op w_out
    |> fun op -> Op.add_input op examples
    |> fun op -> Op.add_input op labels
    |> fun op -> Op.add_input op lr
  in
  Op.set_attr_int_list op "vocab_count" vocab_count;
  Op.set_attr_int op "num_negative_samples" num_negative_samples;
  Op.execute0 op

let nextIteration
    (data : 't t)
  =
  let op =
    Op.create context "NextIteration"
    |> fun op -> Op.add_input op data
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.execute1 op

let noOp
    ()
  =
  let op =
    Op.create context "NoOp"
  in
  Op.execute0 op

let nonMaxSuppression
    ?(iou_threshold=0.5)
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
  =
  let op =
    Op.create context "NonMaxSuppression"
    |> fun op -> Op.add_input op boxes
    |> fun op -> Op.add_input op scores
    |> fun op -> Op.add_input op max_output_size
  in
  Op.set_attr_float op "iou_threshold" iou_threshold;
  Op.execute1 op

let nonMaxSuppressionV2
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
    (iou_threshold : [ `float ] t)
  =
  let op =
    Op.create context "NonMaxSuppressionV2"
    |> fun op -> Op.add_input op boxes
    |> fun op -> Op.add_input op scores
    |> fun op -> Op.add_input op max_output_size
    |> fun op -> Op.add_input op iou_threshold
  in
  Op.execute1 op

let notEqual
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  let op =
    Op.create context "NotEqual"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let oneHot
    ?(axis=(-1))
    (indices : ([< `uInt8 | `int32 | `int64 ] as 'tI) t)
    (depth : [ `int32 ] t)
    (on_value : 't t)
    (off_value : 't t)
  =
  let op =
    Op.create context "OneHot"
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op depth
    |> fun op -> Op.add_input op on_value
    |> fun op -> Op.add_input op off_value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type on_value);
  Op.set_attr_data_type op "TI" (Op.Tensor_handle.data_type indices);
  Op.set_attr_int op "axis" axis;
  Op.execute1 op

let oneShotIterator
    ~output_types
    ~output_shapes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "OneShotIterator"
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let onesLike
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "OnesLike"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let orderedMapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "OrderedMapClear"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute0 op

let orderedMapIncompleteSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "OrderedMapIncompleteSize"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let orderedMapSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "OrderedMapSize"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let pack
    ?(axis=0)
    (values : 't t list)
  =
  let op =
    Op.create context "Pack"
    |> fun init -> List.fold values ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn values));
  Op.set_attr_int op "N" (List.length values);
  Op.set_attr_int op "axis" axis;
  Op.execute1 op

let pad
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op =
    Op.create context "Pad"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op paddings
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.Tensor_handle.data_type paddings);
  Op.execute1 op

let padV2
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
    (constant_values : 't t)
  =
  let op =
    Op.create context "PadV2"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op paddings
    |> fun op -> Op.add_input op constant_values
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.Tensor_handle.data_type paddings);
  Op.execute1 op

let paddingFIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "PaddingFIFOQueue"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let paddingFIFOQueueV2
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "PaddingFIFOQueueV2"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let parallelConcat
    ~shape
    (values : 't t list)
  =
  let op =
    Op.create context "ParallelConcat"
    |> fun init -> List.fold values ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn values));
  Op.set_attr_int op "N" (List.length values);
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let parallelDynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  let op =
    Op.create context "ParallelDynamicStitch"
    |> fun init -> List.fold indices ~init ~f:Op.add_input
    |> fun init -> List.fold data ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn data));
  Op.set_attr_int op "N" (List.length indices);
  Op.execute1 op

let parameterizedTruncatedNormal
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
    (means : ([< `float | `double ] as 'dtype) t)
    (stdevs : ([< `float | `double ] as 'dtype) t)
    (minvals : ([< `float | `double ] as 'dtype) t)
    (maxvals : ([< `float | `double ] as 'dtype) t)
  =
  let op =
    Op.create context "ParameterizedTruncatedNormal"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op means
    |> fun op -> Op.add_input op stdevs
    |> fun op -> Op.add_input op minvals
    |> fun op -> Op.add_input op maxvals
  in
  Op.set_attr_data_type op "dtype" (Op.Tensor_handle.data_type means);
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let parseTensor
    ~type_out_type
    (serialized : [ `string ] t)
  =
  let op =
    Op.create context "ParseTensor"
    |> fun op -> Op.add_input op serialized
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.execute1 op

let placeholder
    ~type_dtype
    ?(shape=[])
    ()
  =
  let op =
    Op.create context "Placeholder"
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let placeholderV2
    ~type_dtype
    ~shape
    ()
  =
  let op =
    Op.create context "PlaceholderV2"
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let placeholderWithDefault
    ~shape
    (input : 'dtype t)
  =
  let op =
    Op.create context "PlaceholderWithDefault"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "dtype" (Op.Tensor_handle.data_type input);
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let polygamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Polygamma"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a);
  Op.execute1 op

let populationCount
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "PopulationCount"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let pow
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Pow"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let prefetchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op =
    Op.create context "PrefetchDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op buffer_size
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let preventGradient
    ?(message="")
    (input : 't t)
  =
  let op =
    Op.create context "PreventGradient"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_string op "message" message;
  Op.execute1 op

let priorityQueue
    ?(component_types=[])
    ~shapes
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "PriorityQueue"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let priorityQueueV2
    ?(component_types=[])
    ~shapes
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "PriorityQueueV2"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let prod
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Prod"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let qr
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Qr"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "full_matrices" full_matrices;
  Op.execute2 op

let quantizeAndDequantize
    ?(signed_input=true)
    ?(num_bits=8)
    ?(range_given=false)
    ?(input_min=0.)
    ?(input_max=0.)
    (input : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "QuantizeAndDequantize"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "signed_input" signed_input;
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "range_given" range_given;
  Op.set_attr_float op "input_min" input_min;
  Op.set_attr_float op "input_max" input_max;
  Op.execute1 op

let quantizeAndDequantizeV2
    ?(signed_input=true)
    ?(num_bits=8)
    ?(range_given=false)
    (input : ([< `float | `double ] as 't) t)
    (input_min : ([< `float | `double ] as 't) t)
    (input_max : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "QuantizeAndDequantizeV2"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op input_min
    |> fun op -> Op.add_input op input_max
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "signed_input" signed_input;
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "range_given" range_given;
  Op.execute1 op

let quantizeAndDequantizeV3
    ?(signed_input=true)
    ?(range_given=true)
    (input : ([< `float | `double ] as 't) t)
    (input_min : ([< `float | `double ] as 't) t)
    (input_max : ([< `float | `double ] as 't) t)
    (num_bits : [ `int32 ] t)
  =
  let op =
    Op.create context "QuantizeAndDequantizeV3"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op input_min
    |> fun op -> Op.add_input op input_max
    |> fun op -> Op.add_input op num_bits
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "signed_input" signed_input;
  Op.set_attr_bool op "range_given" range_given;
  Op.execute1 op

let quantizeDownAndShrinkRange
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let op =
    Op.create context "QuantizeDownAndShrinkRange"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op input_min
    |> fun op -> Op.add_input op input_max
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type input);
  Op.execute3 op

let quantizeV2
    ~type_t
    ?(mode="MIN_COMBINED")
    (input : [ `float ] t)
    (min_range : [ `float ] t)
    (max_range : [ `float ] t)
  =
  let op =
    Op.create context "QuantizeV2"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op min_range
    |> fun op -> Op.add_input op max_range
  in
  Op.set_attr_data_type op "T" Operation.Type.(to_data_type (P type_t));
  Op.set_attr_string op "mode" mode;
  Op.execute3 op

let quantizedAdd
    ~type_toutput
    (x : 't1 t)
    (y : 't2 t)
    (min_x : [ `float ] t)
    (max_x : [ `float ] t)
    (min_y : [ `float ] t)
    (max_y : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedAdd"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op min_x
    |> fun op -> Op.add_input op max_x
    |> fun op -> Op.add_input op min_y
    |> fun op -> Op.add_input op max_y
  in
  Op.set_attr_data_type op "Toutput" Operation.Type.(to_data_type (P type_toutput));
  Op.set_attr_data_type op "T1" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "T2" (Op.Tensor_handle.data_type y);
  Op.execute3 op

let quantizedAvgPool
    ~ksize
    ~strides
    ~padding
    (input : 't t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedAvgPool"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op min_input
    |> fun op -> Op.add_input op max_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute3 op

let quantizedBatchNormWithGlobalNormalization
    ~type_out_type
    ~variance_epsilon
    ~scale_after_normalization
    (t : 'tinput t)
    (t_min : [ `float ] t)
    (t_max : [ `float ] t)
    (m : 'tinput t)
    (m_min : [ `float ] t)
    (m_max : [ `float ] t)
    (v : 'tinput t)
    (v_min : [ `float ] t)
    (v_max : [ `float ] t)
    (beta : 'tinput t)
    (beta_min : [ `float ] t)
    (beta_max : [ `float ] t)
    (gamma : 'tinput t)
    (gamma_min : [ `float ] t)
    (gamma_max : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedBatchNormWithGlobalNormalization"
    |> fun op -> Op.add_input op t
    |> fun op -> Op.add_input op t_min
    |> fun op -> Op.add_input op t_max
    |> fun op -> Op.add_input op m
    |> fun op -> Op.add_input op m_min
    |> fun op -> Op.add_input op m_max
    |> fun op -> Op.add_input op v
    |> fun op -> Op.add_input op v_min
    |> fun op -> Op.add_input op v_max
    |> fun op -> Op.add_input op beta
    |> fun op -> Op.add_input op beta_min
    |> fun op -> Op.add_input op beta_max
    |> fun op -> Op.add_input op gamma
    |> fun op -> Op.add_input op gamma_min
    |> fun op -> Op.add_input op gamma_max
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type t);
  Op.set_attr_float op "variance_epsilon" variance_epsilon;
  Op.set_attr_bool op "scale_after_normalization" scale_after_normalization;
  Op.execute3 op

let quantizedBiasAdd
    ~type_out_type
    (input : 't1 t)
    (bias : 't2 t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
    (min_bias : [ `float ] t)
    (max_bias : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedBiasAdd"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op bias
    |> fun op -> Op.add_input op min_input
    |> fun op -> Op.add_input op max_input
    |> fun op -> Op.add_input op min_bias
    |> fun op -> Op.add_input op max_bias
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T1" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "T2" (Op.Tensor_handle.data_type bias);
  Op.execute3 op

let quantizedConcat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
    (input_mins : [ `float ] t list)
    (input_maxes : [ `float ] t list)
  =
  let op =
    Op.create context "QuantizedConcat"
    |> fun op -> Op.add_input op concat_dim
    |> fun init -> List.fold values ~init ~f:Op.add_input
    |> fun init -> List.fold input_mins ~init ~f:Op.add_input
    |> fun init -> List.fold input_maxes ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn values));
  Op.set_attr_int op "N" (List.length values);
  Op.execute3 op

let quantizedConv2D
    ~type_out_type
    ~strides
    ~padding
    (input : 'tinput t)
    (filter : 'tfilter t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
    (min_filter : [ `float ] t)
    (max_filter : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedConv2D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op filter
    |> fun op -> Op.add_input op min_input
    |> fun op -> Op.add_input op max_input
    |> fun op -> Op.add_input op min_filter
    |> fun op -> Op.add_input op max_filter
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tfilter" (Op.Tensor_handle.data_type filter);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute3 op

let quantizedInstanceNorm
    ?(output_range_given=false)
    ?(given_y_min=0.)
    ?(given_y_max=0.)
    ?(variance_epsilon=9.9999997473787516e-06)
    ?(min_separation=0.0010000000474974513)
    (x : 't t)
    (x_min : [ `float ] t)
    (x_max : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedInstanceNorm"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op x_min
    |> fun op -> Op.add_input op x_max
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_bool op "output_range_given" output_range_given;
  Op.set_attr_float op "given_y_min" given_y_min;
  Op.set_attr_float op "given_y_max" given_y_max;
  Op.set_attr_float op "variance_epsilon" variance_epsilon;
  Op.set_attr_float op "min_separation" min_separation;
  Op.execute3 op

let quantizedMatMul
    ~type_toutput
    ?(transpose_a=false)
    ?(transpose_b=false)
    (a : 't1 t)
    (b : 't2 t)
    (min_a : [ `float ] t)
    (max_a : [ `float ] t)
    (min_b : [ `float ] t)
    (max_b : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedMatMul"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op b
    |> fun op -> Op.add_input op min_a
    |> fun op -> Op.add_input op max_a
    |> fun op -> Op.add_input op min_b
    |> fun op -> Op.add_input op max_b
  in
  Op.set_attr_data_type op "Toutput" Operation.Type.(to_data_type (P type_toutput));
  Op.set_attr_data_type op "T1" (Op.Tensor_handle.data_type a);
  Op.set_attr_data_type op "T2" (Op.Tensor_handle.data_type b);
  Op.set_attr_bool op "transpose_a" transpose_a;
  Op.set_attr_bool op "transpose_b" transpose_b;
  Op.execute3 op

let quantizedMaxPool
    ~ksize
    ~strides
    ~padding
    (input : 't t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedMaxPool"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op min_input
    |> fun op -> Op.add_input op max_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute3 op

let quantizedMul
    ~type_toutput
    (x : 't1 t)
    (y : 't2 t)
    (min_x : [ `float ] t)
    (max_x : [ `float ] t)
    (min_y : [ `float ] t)
    (max_y : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedMul"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op min_x
    |> fun op -> Op.add_input op max_x
    |> fun op -> Op.add_input op min_y
    |> fun op -> Op.add_input op max_y
  in
  Op.set_attr_data_type op "Toutput" Operation.Type.(to_data_type (P type_toutput));
  Op.set_attr_data_type op "T1" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "T2" (Op.Tensor_handle.data_type y);
  Op.execute3 op

let quantizedRelu
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedRelu"
    |> fun op -> Op.add_input op features
    |> fun op -> Op.add_input op min_features
    |> fun op -> Op.add_input op max_features
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type features);
  Op.execute3 op

let quantizedRelu6
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedRelu6"
    |> fun op -> Op.add_input op features
    |> fun op -> Op.add_input op min_features
    |> fun op -> Op.add_input op max_features
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type features);
  Op.execute3 op

let quantizedReluX
    ~type_out_type
    (features : 'tinput t)
    (max_value : [ `float ] t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedReluX"
    |> fun op -> Op.add_input op features
    |> fun op -> Op.add_input op max_value
    |> fun op -> Op.add_input op min_features
    |> fun op -> Op.add_input op max_features
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type features);
  Op.execute3 op

let quantizedReshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedReshape"
    |> fun op -> Op.add_input op tensor
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op input_min
    |> fun op -> Op.add_input op input_max
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.set_attr_data_type op "Tshape" (Op.Tensor_handle.data_type shape);
  Op.execute3 op

let quantizedResizeBilinear
    ?(align_corners=false)
    (images : ([< `float ] as 't) t)
    (size : [ `int32 ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let op =
    Op.create context "QuantizedResizeBilinear"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op size
    |> fun op -> Op.add_input op min
    |> fun op -> Op.add_input op max
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute3 op

let queueClose
    ?(cancel_pending_enqueues=false)
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "QueueClose"
    |> fun op -> Op.add_input op handle
  in
  Op.set_attr_bool op "cancel_pending_enqueues" cancel_pending_enqueues;
  Op.execute0 op

let queueCloseV2
    ?(cancel_pending_enqueues=false)
    (handle : [ `resource ] t)
  =
  let op =
    Op.create context "QueueCloseV2"
    |> fun op -> Op.add_input op handle
  in
  Op.set_attr_bool op "cancel_pending_enqueues" cancel_pending_enqueues;
  Op.execute0 op

let queueIsClosed
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "QueueIsClosed"
    |> fun op -> Op.add_input op handle
  in
  Op.execute1 op

let queueIsClosedV2
    (handle : [ `resource ] t)
  =
  let op =
    Op.create context "QueueIsClosedV2"
    |> fun op -> Op.add_input op handle
  in
  Op.execute1 op

let queueSize
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "QueueSize"
    |> fun op -> Op.add_input op handle
  in
  Op.execute1 op

let queueSizeV2
    (handle : [ `resource ] t)
  =
  let op =
    Op.create context "QueueSizeV2"
    |> fun op -> Op.add_input op handle
  in
  Op.execute1 op

let rFFT
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let op =
    Op.create context "RFFT"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op fft_length
  in
  Op.execute1 op

let rFFT2D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let op =
    Op.create context "RFFT2D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op fft_length
  in
  Op.execute1 op

let rFFT3D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let op =
    Op.create context "RFFT3D"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op fft_length
  in
  Op.execute1 op

let rGBToHSV
    (images : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "RGBToHSV"
    |> fun op -> Op.add_input op images
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.execute1 op

let randomCrop
    ?(seed=0)
    ?(seed2=0)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int64 ] t)
  =
  let op =
    Op.create context "RandomCrop"
    |> fun op -> Op.add_input op image
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type image);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomGamma
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (alpha : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "RandomGamma"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op alpha
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type alpha);
  Op.set_attr_data_type op "S" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomPoisson
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (rate : ([< `float | `double ] as 'dtype) t)
  =
  let op =
    Op.create context "RandomPoisson"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op rate
  in
  Op.set_attr_data_type op "dtype" (Op.Tensor_handle.data_type rate);
  Op.set_attr_data_type op "S" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomPoissonV2
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (rate : ([< `float | `double | `int32 | `int64 ] as 'r) t)
  =
  let op =
    Op.create context "RandomPoissonV2"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op rate
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "S" (Op.Tensor_handle.data_type shape);
  Op.set_attr_data_type op "R" (Op.Tensor_handle.data_type rate);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomShuffle
    ?(seed=0)
    ?(seed2=0)
    (value : 't t)
  =
  let op =
    Op.create context "RandomShuffle"
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomShuffleQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(min_after_dequeue=0)
    ?(seed=0)
    ?(seed2=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "RandomShuffleQueue"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "min_after_dequeue" min_after_dequeue;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let randomShuffleQueueV2
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(min_after_dequeue=0)
    ?(seed=0)
    ?(seed2=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "RandomShuffleQueueV2"
  in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "min_after_dequeue" min_after_dequeue;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let randomStandardNormal
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "RandomStandardNormal"
    |> fun op -> Op.add_input op shape
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomUniform
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "RandomUniform"
    |> fun op -> Op.add_input op shape
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomUniformInt
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
    (minval : ([< `int32 | `int64 ] as 'tout) t)
    (maxval : ([< `int32 | `int64 ] as 'tout) t)
  =
  let op =
    Op.create context "RandomUniformInt"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op minval
    |> fun op -> Op.add_input op maxval
  in
  Op.set_attr_data_type op "Tout" (Op.Tensor_handle.data_type minval);
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let range
    (start : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (limit : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (delta : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Range"
    |> fun op -> Op.add_input op start
    |> fun op -> Op.add_input op limit
    |> fun op -> Op.add_input op delta
  in
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type start);
  Op.execute1 op

let rangeDataset
    ~output_types
    ~output_shapes
    (start : [ `int64 ] t)
    (stop : [ `int64 ] t)
    (step : [ `int64 ] t)
  =
  let op =
    Op.create context "RangeDataset"
    |> fun op -> Op.add_input op start
    |> fun op -> Op.add_input op stop
    |> fun op -> Op.add_input op step
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let rank
    (input : 't t)
  =
  let op =
    Op.create context "Rank"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let readFile
    (filename : [ `string ] t)
  =
  let op =
    Op.create context "ReadFile"
    |> fun op -> Op.add_input op filename
  in
  Op.execute1 op

let readerNumRecordsProduced
    (reader_handle : [ `string ] t)
  =
  let op =
    Op.create context "ReaderNumRecordsProduced"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute1 op

let readerNumRecordsProducedV2
    (reader_handle : [ `resource ] t)
  =
  let op =
    Op.create context "ReaderNumRecordsProducedV2"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute1 op

let readerNumWorkUnitsCompleted
    (reader_handle : [ `string ] t)
  =
  let op =
    Op.create context "ReaderNumWorkUnitsCompleted"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute1 op

let readerNumWorkUnitsCompletedV2
    (reader_handle : [ `resource ] t)
  =
  let op =
    Op.create context "ReaderNumWorkUnitsCompletedV2"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute1 op

let readerRead
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
  =
  let op =
    Op.create context "ReaderRead"
    |> fun op -> Op.add_input op reader_handle
    |> fun op -> Op.add_input op queue_handle
  in
  Op.execute2 op

let readerReadUpTo
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
    (num_records : [ `int64 ] t)
  =
  let op =
    Op.create context "ReaderReadUpTo"
    |> fun op -> Op.add_input op reader_handle
    |> fun op -> Op.add_input op queue_handle
    |> fun op -> Op.add_input op num_records
  in
  Op.execute2 op

let readerReadUpToV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
    (num_records : [ `int64 ] t)
  =
  let op =
    Op.create context "ReaderReadUpToV2"
    |> fun op -> Op.add_input op reader_handle
    |> fun op -> Op.add_input op queue_handle
    |> fun op -> Op.add_input op num_records
  in
  Op.execute2 op

let readerReadV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
  =
  let op =
    Op.create context "ReaderReadV2"
    |> fun op -> Op.add_input op reader_handle
    |> fun op -> Op.add_input op queue_handle
  in
  Op.execute2 op

let readerReset
    (reader_handle : [ `string ] t)
  =
  let op =
    Op.create context "ReaderReset"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute0 op

let readerResetV2
    (reader_handle : [ `resource ] t)
  =
  let op =
    Op.create context "ReaderResetV2"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute0 op

let readerRestoreState
    (reader_handle : [ `string ] t)
    (state : [ `string ] t)
  =
  let op =
    Op.create context "ReaderRestoreState"
    |> fun op -> Op.add_input op reader_handle
    |> fun op -> Op.add_input op state
  in
  Op.execute0 op

let readerRestoreStateV2
    (reader_handle : [ `resource ] t)
    (state : [ `string ] t)
  =
  let op =
    Op.create context "ReaderRestoreStateV2"
    |> fun op -> Op.add_input op reader_handle
    |> fun op -> Op.add_input op state
  in
  Op.execute0 op

let readerSerializeState
    (reader_handle : [ `string ] t)
  =
  let op =
    Op.create context "ReaderSerializeState"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute1 op

let readerSerializeStateV2
    (reader_handle : [ `resource ] t)
  =
  let op =
    Op.create context "ReaderSerializeStateV2"
    |> fun op -> Op.add_input op reader_handle
  in
  Op.execute1 op

let real
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Real"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let realDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "RealDiv"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let reciprocal
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Reciprocal"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let reciprocalGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ReciprocalGrad"
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op dy
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y);
  Op.execute1 op

let recordInput
    ~file_pattern
    ?(file_random_seed=301)
    ?(file_shuffle_shift_ratio=0.)
    ?(file_buffer_size=10000)
    ?(file_parallelism=16)
    ?(batch_size=32)
    ()
  =
  let op =
    Op.create context "RecordInput"
  in
  Op.set_attr_string op "file_pattern" file_pattern;
  Op.set_attr_int op "file_random_seed" file_random_seed;
  Op.set_attr_float op "file_shuffle_shift_ratio" file_shuffle_shift_ratio;
  Op.set_attr_int op "file_buffer_size" file_buffer_size;
  Op.set_attr_int op "file_parallelism" file_parallelism;
  Op.set_attr_int op "batch_size" batch_size;
  Op.execute1 op

let reduceJoin
    ?(keep_dims=false)
    ?(separator="")
    (inputs__ : [ `string ] t)
    (reduction_indices : [ `int32 ] t)
  =
  let op =
    Op.create context "ReduceJoin"
    |> fun op -> Op.add_input op inputs__
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.set_attr_string op "separator" separator;
  Op.execute1 op

let refEnter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  let op =
    Op.create context "RefEnter"
    |> fun op -> Op.add_input op data
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_string op "frame_name" frame_name;
  Op.set_attr_bool op "is_constant" is_constant;
  Op.set_attr_int op "parallel_iterations" parallel_iterations;
  Op.execute1 op

let refExit
    (data : 't t)
  =
  let op =
    Op.create context "RefExit"
    |> fun op -> Op.add_input op data
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.execute1 op

let refIdentity
    (input : 't t)
  =
  let op =
    Op.create context "RefIdentity"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let refMerge
    (inputs__ : 't t list)
  =
  let op =
    Op.create context "RefMerge"
    |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute2 op

let refNextIteration
    (data : 't t)
  =
  let op =
    Op.create context "RefNextIteration"
    |> fun op -> Op.add_input op data
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.execute1 op

let refSelect
    (index : [ `int32 ] t)
    (inputs__ : 't t list)
  =
  let op =
    Op.create context "RefSelect"
    |> fun op -> Op.add_input op index
    |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute1 op

let refSwitch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  let op =
    Op.create context "RefSwitch"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op pred
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.execute2 op

let relu
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Relu"
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.execute1 op

let relu6
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Relu6"
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.execute1 op

let relu6Grad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Relu6Grad"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type gradients);
  Op.execute1 op

let reluGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "ReluGrad"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type gradients);
  Op.execute1 op

let repeatDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let op =
    Op.create context "RepeatDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op count
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let requantizationRange
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let op =
    Op.create context "RequantizationRange"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op input_min
    |> fun op -> Op.add_input op input_max
  in
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type input);
  Op.execute2 op

let requantize
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
    (requested_output_min : [ `float ] t)
    (requested_output_max : [ `float ] t)
  =
  let op =
    Op.create context "Requantize"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op input_min
    |> fun op -> Op.add_input op input_max
    |> fun op -> Op.add_input op requested_output_min
    |> fun op -> Op.add_input op requested_output_max
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.Tensor_handle.data_type input);
  Op.execute3 op

let reshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
  =
  let op =
    Op.create context "Reshape"
    |> fun op -> Op.add_input op tensor
    |> fun op -> Op.add_input op shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.set_attr_data_type op "Tshape" (Op.Tensor_handle.data_type shape);
  Op.execute1 op

let resizeArea
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "ResizeArea"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBicubic
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "ResizeBicubic"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBicubicGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "ResizeBicubicGrad"
    |> fun op -> Op.add_input op grads
    |> fun op -> Op.add_input op original_image
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type original_image);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBilinear
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "ResizeBilinear"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBilinearGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "ResizeBilinearGrad"
    |> fun op -> Op.add_input op grads
    |> fun op -> Op.add_input op original_image
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type original_image);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeNearestNeighbor
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "ResizeNearestNeighbor"
    |> fun op -> Op.add_input op images
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeNearestNeighborGrad
    ?(align_corners=false)
    (grads : ([< `uInt8 | `int32 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "ResizeNearestNeighborGrad"
    |> fun op -> Op.add_input op grads
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grads);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resourceApplyAdadelta
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (accum_update : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyAdadelta"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op accum_update
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyAdagradDA
    ?(use_locking=false)
    (var : [ `resource ] t)
    (gradient_accumulator : [ `resource ] t)
    (gradient_squared_accumulator : [ `resource ] t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (global_step : [ `int64 ] t)
  =
  let op =
    Op.create context "ResourceApplyAdagradDA"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op gradient_accumulator
    |> fun op -> Op.add_input op gradient_squared_accumulator
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op global_step
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyAdam
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : [ `resource ] t)
    (m : [ `resource ] t)
    (v : [ `resource ] t)
    (beta1_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta2_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyAdam"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op m
    |> fun op -> Op.add_input op v
    |> fun op -> Op.add_input op beta1_power
    |> fun op -> Op.add_input op beta2_power
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op beta1
    |> fun op -> Op.add_input op beta2
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type beta1_power);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.set_attr_bool op "use_nesterov" use_nesterov;
  Op.execute0 op

let resourceApplyCenteredRMSProp
    ?(use_locking=false)
    (var : [ `resource ] t)
    (mg : [ `resource ] t)
    (ms : [ `resource ] t)
    (mom : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyCenteredRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op mg
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyFtrl
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (linear : [ `resource ] t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyFtrl"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyFtrlV2
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (linear : [ `resource ] t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2_shrinkage : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyFtrlV2"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op l2_shrinkage
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyGradientDescent"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op alpha
    |> fun op -> Op.add_input op delta
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type alpha);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyMomentum"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op momentum
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.set_attr_bool op "use_nesterov" use_nesterov;
  Op.execute0 op

let resourceApplyProximalAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyProximalAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyProximalGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyProximalGradientDescent"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op alpha
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op delta
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type alpha);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyRMSProp
    ?(use_locking=false)
    (var : [ `resource ] t)
    (ms : [ `resource ] t)
    (mom : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceApplyRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyAdadelta
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (accum_update : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "ResourceSparseApplyAdadelta"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op accum_update
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "ResourceSparseApplyAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyAdagradDA
    ?(use_locking=false)
    (var : [ `resource ] t)
    (gradient_accumulator : [ `resource ] t)
    (gradient_squared_accumulator : [ `resource ] t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (global_step : [ `int64 ] t)
  =
  let op =
    Op.create context "ResourceSparseApplyAdagradDA"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op gradient_accumulator
    |> fun op -> Op.add_input op gradient_squared_accumulator
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op global_step
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyCenteredRMSProp
    ?(use_locking=false)
    (var : [ `resource ] t)
    (mg : [ `resource ] t)
    (ms : [ `resource ] t)
    (mom : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "ResourceSparseApplyCenteredRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op mg
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyFtrl
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (linear : [ `resource ] t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceSparseApplyFtrl"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyFtrlV2
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (linear : [ `resource ] t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2_shrinkage : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceSparseApplyFtrlV2"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op l2_shrinkage
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ResourceSparseApplyMomentum"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op momentum
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.set_attr_bool op "use_nesterov" use_nesterov;
  Op.execute0 op

let resourceSparseApplyProximalAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "ResourceSparseApplyProximalAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyProximalGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "ResourceSparseApplyProximalGradientDescent"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op alpha
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type alpha);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceSparseApplyRMSProp
    ?(use_locking=false)
    (var : [ `resource ] t)
    (ms : [ `resource ] t)
    (mom : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "ResourceSparseApplyRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceStridedSliceAssign
    ?(begin_mask=0)
    ?(end_mask=0)
    ?(ellipsis_mask=0)
    ?(new_axis_mask=0)
    ?(shrink_axis_mask=0)
    (ref : [ `resource ] t)
    (begin__ : ([< `int32 | `int64 ] as 'index) t)
    (end__ : ([< `int32 | `int64 ] as 'index) t)
    (strides : ([< `int32 | `int64 ] as 'index) t)
    (value : 't t)
  =
  let op =
    Op.create context "ResourceStridedSliceAssign"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op begin__
    |> fun op -> Op.add_input op end__
    |> fun op -> Op.add_input op strides
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "Index" (Op.Tensor_handle.data_type begin__);
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_int op "begin_mask" begin_mask;
  Op.set_attr_int op "end_mask" end_mask;
  Op.set_attr_int op "ellipsis_mask" ellipsis_mask;
  Op.set_attr_int op "new_axis_mask" new_axis_mask;
  Op.set_attr_int op "shrink_axis_mask" shrink_axis_mask;
  Op.execute0 op

let restore
    ~type_dt
    ?(preferred_shard=(-1))
    (file_pattern : [ `string ] t)
    (tensor_name : [ `string ] t)
  =
  let op =
    Op.create context "Restore"
    |> fun op -> Op.add_input op file_pattern
    |> fun op -> Op.add_input op tensor_name
  in
  Op.set_attr_data_type op "dt" Operation.Type.(to_data_type (P type_dt));
  Op.set_attr_int op "preferred_shard" preferred_shard;
  Op.execute1 op

let restoreIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  let op =
    Op.create context "RestoreIterator"
    |> fun op -> Op.add_input op iterator
    |> fun op -> Op.add_input op path
  in
  Op.execute0 op

let restoreSlice
    ~type_dt
    ?(preferred_shard=(-1))
    (file_pattern : [ `string ] t)
    (tensor_name : [ `string ] t)
    (shape_and_slice : [ `string ] t)
  =
  let op =
    Op.create context "RestoreSlice"
    |> fun op -> Op.add_input op file_pattern
    |> fun op -> Op.add_input op tensor_name
    |> fun op -> Op.add_input op shape_and_slice
  in
  Op.set_attr_data_type op "dt" Operation.Type.(to_data_type (P type_dt));
  Op.set_attr_int op "preferred_shard" preferred_shard;
  Op.execute1 op

let reverse
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (dims : [ `bool ] t)
  =
  let op =
    Op.create context "Reverse"
    |> fun op -> Op.add_input op tensor
    |> fun op -> Op.add_input op dims
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.execute1 op

let reverseSequence
    ~seq_dim
    ?(batch_dim=0)
    (input : 't t)
    (seq_lengths : ([< `int32 | `int64 ] as 'tlen) t)
  =
  let op =
    Op.create context "ReverseSequence"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op seq_lengths
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tlen" (Op.Tensor_handle.data_type seq_lengths);
  Op.set_attr_int op "seq_dim" seq_dim;
  Op.set_attr_int op "batch_dim" batch_dim;
  Op.execute1 op

let reverseV2
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "ReverseV2"
    |> fun op -> Op.add_input op tensor
    |> fun op -> Op.add_input op axis
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type axis);
  Op.execute1 op

let rint
    (x : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Rint"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let round
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Round"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let rsqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Rsqrt"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let rsqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "RsqrtGrad"
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op dy
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y);
  Op.execute1 op

let saveIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  let op =
    Op.create context "SaveIterator"
    |> fun op -> Op.add_input op iterator
    |> fun op -> Op.add_input op path
  in
  Op.execute0 op

let scalarSummary
    (tags : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "ScalarSummary"
    |> fun op -> Op.add_input op tags
    |> fun op -> Op.add_input op values
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type values);
  Op.execute1 op

let scatterAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ScatterAdd"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterDiv
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ScatterDiv"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterMul
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ScatterMul"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterNd
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
    (shape : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "ScatterNd"
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
    |> fun op -> Op.add_input op shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type updates);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let scatterNdAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ScatterNdAdd"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterNdNonAliasingAdd
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ScatterNdNonAliasingAdd"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let scatterNdSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ScatterNdSub"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterNdUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  let op =
    Op.create context "ScatterNdUpdate"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "ScatterSub"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  let op =
    Op.create context "ScatterUpdate"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op updates
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sdcaFprint
    (input : [ `string ] t)
  =
  let op =
    Op.create context "SdcaFprint"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let sdcaShrinkL1
    ~l1
    ~l2
    (weights : [ `float ] t list)
  =
  let op =
    Op.create context "SdcaShrinkL1"
    |> fun init -> List.fold weights ~init ~f:Op.add_input
  in
  Op.set_attr_int op "num_features" (List.length weights);
  Op.set_attr_float op "l1" l1;
  Op.set_attr_float op "l2" l2;
  Op.execute0 op

let segmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SegmentMax"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type segment_ids);
  Op.execute1 op

let segmentMean
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SegmentMean"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type segment_ids);
  Op.execute1 op

let segmentMin
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SegmentMin"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type segment_ids);
  Op.execute1 op

let segmentProd
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SegmentProd"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type segment_ids);
  Op.execute1 op

let segmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SegmentSum"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type segment_ids);
  Op.execute1 op

let select
    (condition : [ `bool ] t)
    (t : 't t)
    (e : 't t)
  =
  let op =
    Op.create context "Select"
    |> fun op -> Op.add_input op condition
    |> fun op -> Op.add_input op t
    |> fun op -> Op.add_input op e
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type t);
  Op.execute1 op

let selfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  let op =
    Op.create context "SelfAdjointEig"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let selfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SelfAdjointEigV2"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "compute_v" compute_v;
  Op.execute2 op

let selu
    (features : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Selu"
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.execute1 op

let seluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "SeluGrad"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op outputs
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type gradients);
  Op.execute1 op

let serializeManySparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SerializeManySparse"
    |> fun op -> Op.add_input op sparse_indices
    |> fun op -> Op.add_input op sparse_values
    |> fun op -> Op.add_input op sparse_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sparse_values);
  Op.execute1 op

let serializeSparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SerializeSparse"
    |> fun op -> Op.add_input op sparse_indices
    |> fun op -> Op.add_input op sparse_values
    |> fun op -> Op.add_input op sparse_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sparse_values);
  Op.execute1 op

let serializeTensor
    (tensor : 't t)
  =
  let op =
    Op.create context "SerializeTensor"
    |> fun op -> Op.add_input op tensor
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.execute1 op

let setSize
    ?(validate_indices=true)
    (set_indices : [ `int64 ] t)
    (set_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SetSize"
    |> fun op -> Op.add_input op set_indices
    |> fun op -> Op.add_input op set_values
    |> fun op -> Op.add_input op set_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type set_values);
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute1 op

let shape
    ~type_out_type
    (input : 't t)
  =
  let op =
    Op.create context "Shape"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let shapeN
    ~type_out_type
    (input : 't t list)
  =
  let op =
    Op.create context "ShapeN"
    |> fun init -> List.fold input ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn input));
  Op.set_attr_int op "N" (List.length input);
  Op.execute op ~output_len:(List.length input)

let shardedFilename
    (basename : [ `string ] t)
    (shard : [ `int32 ] t)
    (num_shards : [ `int32 ] t)
  =
  let op =
    Op.create context "ShardedFilename"
    |> fun op -> Op.add_input op basename
    |> fun op -> Op.add_input op shard
    |> fun op -> Op.add_input op num_shards
  in
  Op.execute1 op

let shardedFilespec
    (basename : [ `string ] t)
    (num_shards : [ `int32 ] t)
  =
  let op =
    Op.create context "ShardedFilespec"
    |> fun op -> Op.add_input op basename
    |> fun op -> Op.add_input op num_shards
  in
  Op.execute1 op

let shuffleDataset
    ?(reshuffle_each_iteration=true)
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (buffer_size : [ `int64 ] t)
    (seed : [ `int64 ] t)
    (seed2 : [ `int64 ] t)
  =
  let op =
    Op.create context "ShuffleDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op buffer_size
    |> fun op -> Op.add_input op seed
    |> fun op -> Op.add_input op seed2
  in
  Op.set_attr_bool op "reshuffle_each_iteration" reshuffle_each_iteration;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let sigmoid
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Sigmoid"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let sigmoidGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SigmoidGrad"
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op dy
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y);
  Op.execute1 op

let sign
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Sign"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let sin
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Sin"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let sinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Sinh"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let size
    ~type_out_type
    (input : 't t)
  =
  let op =
    Op.create context "Size"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let skipDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let op =
    Op.create context "SkipDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op count
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let skipgram
    ~filename
    ~batch_size
    ?(window_size=5)
    ?(min_count=5)
    ?(subsample=0.0010000000474974513)
    ()
  =
  let op =
    Op.create context "Skipgram"
  in
  Op.set_attr_string op "filename" filename;
  Op.set_attr_int op "batch_size" batch_size;
  Op.set_attr_int op "window_size" window_size;
  Op.set_attr_int op "min_count" min_count;
  Op.set_attr_float op "subsample" subsample;
  Op.execute7 op

let slice
    (input : 't t)
    (begin__ : ([< `int32 | `int64 ] as 'index) t)
    (size : ([< `int32 | `int64 ] as 'index) t)
  =
  let op =
    Op.create context "Slice"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op begin__
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Index" (Op.Tensor_handle.data_type begin__);
  Op.execute1 op

let softmax
    (logits : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Softmax"
    |> fun op -> Op.add_input op logits
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type logits);
  Op.execute1 op

let softmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "SoftmaxCrossEntropyWithLogits"
    |> fun op -> Op.add_input op features
    |> fun op -> Op.add_input op labels
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.execute2 op

let softplus
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Softplus"
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.execute1 op

let softplusGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "SoftplusGrad"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type gradients);
  Op.execute1 op

let softsign
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "Softsign"
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.execute1 op

let softsignGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "SoftsignGrad"
    |> fun op -> Op.add_input op gradients
    |> fun op -> Op.add_input op features
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type gradients);
  Op.execute1 op

let spaceToBatch
    ~block_size
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op =
    Op.create context "SpaceToBatch"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op paddings
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.Tensor_handle.data_type paddings);
  Op.set_attr_int op "block_size" block_size;
  Op.execute1 op

let spaceToBatchND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op =
    Op.create context "SpaceToBatchND"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op block_shape
    |> fun op -> Op.add_input op paddings
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tblock_shape" (Op.Tensor_handle.data_type block_shape);
  Op.set_attr_data_type op "Tpaddings" (Op.Tensor_handle.data_type paddings);
  Op.execute1 op

let spaceToDepth
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  let op =
    Op.create context "SpaceToDepth"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int op "block_size" block_size;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let sparseAccumulatorApplyGradient
    ~has_known_shape
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient_indices : [ `int64 ] t)
    (gradient_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
    (gradient_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseAccumulatorApplyGradient"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op local_step
    |> fun op -> Op.add_input op gradient_indices
    |> fun op -> Op.add_input op gradient_values
    |> fun op -> Op.add_input op gradient_shape
  in
  Op.set_attr_data_type op "dtype" (Op.Tensor_handle.data_type gradient_values);
  Op.set_attr_bool op "has_known_shape" has_known_shape;
  Op.execute0 op

let sparseAccumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseAccumulatorTakeGradient"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op num_required
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute3 op

let sparseAdd
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (b_shape : [ `int64 ] t)
    (thresh : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 'treal) t)
  =
  let op =
    Op.create context "SparseAdd"
    |> fun op -> Op.add_input op a_indices
    |> fun op -> Op.add_input op a_values
    |> fun op -> Op.add_input op a_shape
    |> fun op -> Op.add_input op b_indices
    |> fun op -> Op.add_input op b_values
    |> fun op -> Op.add_input op b_shape
    |> fun op -> Op.add_input op thresh
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a_values);
  Op.set_attr_data_type op "Treal" (Op.Tensor_handle.data_type thresh);
  Op.execute3 op

let sparseAddGrad
    (backprop_val_grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_indices : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (sum_indices : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseAddGrad"
    |> fun op -> Op.add_input op backprop_val_grad
    |> fun op -> Op.add_input op a_indices
    |> fun op -> Op.add_input op b_indices
    |> fun op -> Op.add_input op sum_indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type backprop_val_grad);
  Op.execute2 op

let sparseApplyAdadelta
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum_update : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SparseApplyAdadelta"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op accum_update
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SparseApplyAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyAdagradDA
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gradient_accumulator : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gradient_squared_accumulator : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (global_step : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseApplyAdagradDA"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op gradient_accumulator
    |> fun op -> Op.add_input op gradient_squared_accumulator
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op global_step
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyCenteredRMSProp
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (mg : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (ms : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (mom : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SparseApplyCenteredRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op mg
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyFtrl
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (linear : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SparseApplyFtrl"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyFtrlV2
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (linear : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2_shrinkage : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr_power : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SparseApplyFtrlV2"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op linear
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op l2_shrinkage
    |> fun op -> Op.add_input op lr_power
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SparseApplyMomentum"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op momentum
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.set_attr_bool op "use_nesterov" use_nesterov;
  Op.execute1 op

let sparseApplyProximalAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SparseApplyProximalAdagrad"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op accum
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyProximalGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SparseApplyProximalGradientDescent"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op alpha
    |> fun op -> Op.add_input op l1
    |> fun op -> Op.add_input op l2
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseApplyRMSProp
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (ms : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (mom : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (rho : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (epsilon : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op =
    Op.create context "SparseApplyRMSProp"
    |> fun op -> Op.add_input op var
    |> fun op -> Op.add_input op ms
    |> fun op -> Op.add_input op mom
    |> fun op -> Op.add_input op lr
    |> fun op -> Op.add_input op rho
    |> fun op -> Op.add_input op momentum
    |> fun op -> Op.add_input op epsilon
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type var);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseConcat
    ~concat_dim
    (indices : [ `int64 ] t list)
    (values : 't t list)
    (shapes : [ `int64 ] t list)
  =
  let op =
    Op.create context "SparseConcat"
    |> fun init -> List.fold indices ~init ~f:Op.add_input
    |> fun init -> List.fold values ~init ~f:Op.add_input
    |> fun init -> List.fold shapes ~init ~f:Op.add_input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type (List.hd_exn values));
  Op.set_attr_int op "concat_dim" concat_dim;
  Op.set_attr_int op "N" (List.length indices);
  Op.execute3 op

let sparseConditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "SparseConditionalAccumulator"
  in
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let sparseDenseCwiseAdd
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SparseDenseCwiseAdd"
    |> fun op -> Op.add_input op sp_indices
    |> fun op -> Op.add_input op sp_values
    |> fun op -> Op.add_input op sp_shape
    |> fun op -> Op.add_input op dense
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sp_values);
  Op.execute1 op

let sparseDenseCwiseDiv
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SparseDenseCwiseDiv"
    |> fun op -> Op.add_input op sp_indices
    |> fun op -> Op.add_input op sp_values
    |> fun op -> Op.add_input op sp_shape
    |> fun op -> Op.add_input op dense
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sp_values);
  Op.execute1 op

let sparseDenseCwiseMul
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SparseDenseCwiseMul"
    |> fun op -> Op.add_input op sp_indices
    |> fun op -> Op.add_input op sp_values
    |> fun op -> Op.add_input op sp_shape
    |> fun op -> Op.add_input op dense
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sp_values);
  Op.execute1 op

let sparseFillEmptyRows
    (indices : [ `int64 ] t)
    (values : 't t)
    (dense_shape : [ `int64 ] t)
    (default_value : 't t)
  =
  let op =
    Op.create context "SparseFillEmptyRows"
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op values
    |> fun op -> Op.add_input op dense_shape
    |> fun op -> Op.add_input op default_value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type values);
  Op.execute4 op

let sparseFillEmptyRowsGrad
    (reverse_index_map : [ `int64 ] t)
    (grad_values : 't t)
  =
  let op =
    Op.create context "SparseFillEmptyRowsGrad"
    |> fun op -> Op.add_input op reverse_index_map
    |> fun op -> Op.add_input op grad_values
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad_values);
  Op.execute2 op

let sparseMatMul
    ?(transpose_a=false)
    ?(transpose_b=false)
    ?(a_is_sparse=false)
    ?(b_is_sparse=false)
    (a : ([< `float ] as 'ta) t)
    (b : ([< `float ] as 'tb) t)
  =
  let op =
    Op.create context "SparseMatMul"
    |> fun op -> Op.add_input op a
    |> fun op -> Op.add_input op b
  in
  Op.set_attr_data_type op "Ta" (Op.Tensor_handle.data_type a);
  Op.set_attr_data_type op "Tb" (Op.Tensor_handle.data_type b);
  Op.set_attr_bool op "transpose_a" transpose_a;
  Op.set_attr_bool op "transpose_b" transpose_b;
  Op.set_attr_bool op "a_is_sparse" a_is_sparse;
  Op.set_attr_bool op "b_is_sparse" b_is_sparse;
  Op.execute1 op

let sparseReduceMax
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseReduceMax"
    |> fun op -> Op.add_input op input_indices
    |> fun op -> Op.add_input op input_values
    |> fun op -> Op.add_input op input_shape
    |> fun op -> Op.add_input op reduction_axes
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let sparseReduceMaxSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseReduceMaxSparse"
    |> fun op -> Op.add_input op input_indices
    |> fun op -> Op.add_input op input_values
    |> fun op -> Op.add_input op input_shape
    |> fun op -> Op.add_input op reduction_axes
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute3 op

let sparseReduceSum
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseReduceSum"
    |> fun op -> Op.add_input op input_indices
    |> fun op -> Op.add_input op input_values
    |> fun op -> Op.add_input op input_shape
    |> fun op -> Op.add_input op reduction_axes
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let sparseReduceSumSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseReduceSumSparse"
    |> fun op -> Op.add_input op input_indices
    |> fun op -> Op.add_input op input_values
    |> fun op -> Op.add_input op input_shape
    |> fun op -> Op.add_input op reduction_axes
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute3 op

let sparseReorder
    (input_indices : [ `int64 ] t)
    (input_values : 't t)
    (input_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseReorder"
    |> fun op -> Op.add_input op input_indices
    |> fun op -> Op.add_input op input_values
    |> fun op -> Op.add_input op input_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input_values);
  Op.execute2 op

let sparseReshape
    (input_indices : [ `int64 ] t)
    (input_shape : [ `int64 ] t)
    (new_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseReshape"
    |> fun op -> Op.add_input op input_indices
    |> fun op -> Op.add_input op input_shape
    |> fun op -> Op.add_input op new_shape
  in
  Op.execute2 op

let sparseSegmentMean
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseSegmentMean"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let sparseSegmentMeanGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseSegmentMeanGrad"
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op segment_ids
    |> fun op -> Op.add_input op output_dim0
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let sparseSegmentSqrtN
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseSegmentSqrtN"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let sparseSegmentSqrtNGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseSegmentSqrtNGrad"
    |> fun op -> Op.add_input op grad
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op segment_ids
    |> fun op -> Op.add_input op output_dim0
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type grad);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let sparseSegmentSum
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let op =
    Op.create context "SparseSegmentSum"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op segment_ids
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type indices);
  Op.execute1 op

let sparseSlice
    (indices : [ `int64 ] t)
    (values : 't t)
    (shape : [ `int64 ] t)
    (start : [ `int64 ] t)
    (size : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseSlice"
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op values
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op start
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type values);
  Op.execute3 op

let sparseSoftmax
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double ] as 't) t)
    (sp_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseSoftmax"
    |> fun op -> Op.add_input op sp_indices
    |> fun op -> Op.add_input op sp_values
    |> fun op -> Op.add_input op sp_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sp_values);
  Op.execute1 op

let sparseSoftmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `int32 | `int64 ] as 'tlabels) t)
  =
  let op =
    Op.create context "SparseSoftmaxCrossEntropyWithLogits"
    |> fun op -> Op.add_input op features
    |> fun op -> Op.add_input op labels
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type features);
  Op.set_attr_data_type op "Tlabels" (Op.Tensor_handle.data_type labels);
  Op.execute2 op

let sparseSparseMaximum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseSparseMaximum"
    |> fun op -> Op.add_input op a_indices
    |> fun op -> Op.add_input op a_values
    |> fun op -> Op.add_input op a_shape
    |> fun op -> Op.add_input op b_indices
    |> fun op -> Op.add_input op b_values
    |> fun op -> Op.add_input op b_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a_values);
  Op.execute2 op

let sparseSparseMinimum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseSparseMinimum"
    |> fun op -> Op.add_input op a_indices
    |> fun op -> Op.add_input op a_values
    |> fun op -> Op.add_input op a_shape
    |> fun op -> Op.add_input op b_indices
    |> fun op -> Op.add_input op b_values
    |> fun op -> Op.add_input op b_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a_values);
  Op.execute2 op

let sparseTensorDenseAdd
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (b : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SparseTensorDenseAdd"
    |> fun op -> Op.add_input op a_indices
    |> fun op -> Op.add_input op a_values
    |> fun op -> Op.add_input op a_shape
    |> fun op -> Op.add_input op b
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a_values);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type a_indices);
  Op.execute1 op

let sparseTensorDenseMatMul
    ?(adjoint_a=false)
    ?(adjoint_b=false)
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : 't t)
    (a_shape : [ `int64 ] t)
    (b : 't t)
  =
  let op =
    Op.create context "SparseTensorDenseMatMul"
    |> fun op -> Op.add_input op a_indices
    |> fun op -> Op.add_input op a_values
    |> fun op -> Op.add_input op a_shape
    |> fun op -> Op.add_input op b
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type a_values);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type a_indices);
  Op.set_attr_bool op "adjoint_a" adjoint_a;
  Op.set_attr_bool op "adjoint_b" adjoint_b;
  Op.execute1 op

let sparseTensorSliceDataset
    (indices : [ `int64 ] t)
    (values : 'tvalues t)
    (dense_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseTensorSliceDataset"
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op values
    |> fun op -> Op.add_input op dense_shape
  in
  Op.set_attr_data_type op "Tvalues" (Op.Tensor_handle.data_type values);
  Op.execute1 op

let sparseToDense
    ?(validate_indices=true)
    (sparse_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (output_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (sparse_values : 't t)
    (default_value : 't t)
  =
  let op =
    Op.create context "SparseToDense"
    |> fun op -> Op.add_input op sparse_indices
    |> fun op -> Op.add_input op output_shape
    |> fun op -> Op.add_input op sparse_values
    |> fun op -> Op.add_input op default_value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type sparse_values);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type sparse_indices);
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute1 op

let sparseToSparseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1_indices : [ `int64 ] t)
    (set1_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set1_shape : [ `int64 ] t)
    (set2_indices : [ `int64 ] t)
    (set2_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2_shape : [ `int64 ] t)
  =
  let op =
    Op.create context "SparseToSparseSetOperation"
    |> fun op -> Op.add_input op set1_indices
    |> fun op -> Op.add_input op set1_values
    |> fun op -> Op.add_input op set1_shape
    |> fun op -> Op.add_input op set2_indices
    |> fun op -> Op.add_input op set2_values
    |> fun op -> Op.add_input op set2_shape
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type set1_values);
  Op.set_attr_string op "set_operation" set_operation;
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute3 op

let split
    ~num_split
    (split_dim : [ `int32 ] t)
    (value : 't t)
  =
  let op =
    Op.create context "Split"
    |> fun op -> Op.add_input op split_dim
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_int op "num_split" num_split;
  Op.execute op ~output_len:num_split

let splitV
    ~num_split
    (value : 't t)
    (size_splits : ([< `int32 | `int64 ] as 'tlen) t)
    (split_dim : [ `int32 ] t)
  =
  let op =
    Op.create context "SplitV"
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op size_splits
    |> fun op -> Op.add_input op split_dim
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_data_type op "Tlen" (Op.Tensor_handle.data_type size_splits);
  Op.set_attr_int op "num_split" num_split;
  Op.execute op ~output_len:num_split

let sqlDataset
    ~output_types
    ~output_shapes
    (driver_name : [ `string ] t)
    (data_source_name : [ `string ] t)
    (query : [ `string ] t)
  =
  let op =
    Op.create context "SqlDataset"
    |> fun op -> Op.add_input op driver_name
    |> fun op -> Op.add_input op data_source_name
    |> fun op -> Op.add_input op query
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let sqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Sqrt"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let sqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SqrtGrad"
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op dy
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y);
  Op.execute1 op

let square
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Square"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let squaredDifference
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "SquaredDifference"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let squeeze
    ?(squeeze_dims=[])
    (input : 't t)
  =
  let op =
    Op.create context "Squeeze"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int_list op "squeeze_dims" squeeze_dims;
  Op.execute1 op

let stack
    ?(stack_name="")
    ()
  =
  let op =
    Op.create context "Stack"
  in
  Op.set_attr_string op "stack_name" stack_name;
  Op.execute1 op

let stackClose
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "StackClose"
    |> fun op -> Op.add_input op handle
  in
  Op.execute0 op

let stackCloseV2
    (handle : [ `resource ] t)
  =
  let op =
    Op.create context "StackCloseV2"
    |> fun op -> Op.add_input op handle
  in
  Op.execute0 op

let stackPop
    ~type_elem_type
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "StackPop"
    |> fun op -> Op.add_input op handle
  in
  Op.set_attr_data_type op "elem_type" Operation.Type.(to_data_type (P type_elem_type));
  Op.execute1 op

let stackPopV2
    ~type_elem_type
    (handle : [ `resource ] t)
  =
  let op =
    Op.create context "StackPopV2"
    |> fun op -> Op.add_input op handle
  in
  Op.set_attr_data_type op "elem_type" Operation.Type.(to_data_type (P type_elem_type));
  Op.execute1 op

let stackPush
    ?(swap_memory=false)
    (handle : [ `string ] t)
    (elem : 't t)
  =
  let op =
    Op.create context "StackPush"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op elem
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type elem);
  Op.set_attr_bool op "swap_memory" swap_memory;
  Op.execute1 op

let stackPushV2
    ?(swap_memory=false)
    (handle : [ `resource ] t)
    (elem : 't t)
  =
  let op =
    Op.create context "StackPushV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op elem
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type elem);
  Op.set_attr_bool op "swap_memory" swap_memory;
  Op.execute1 op

let stackV2
    ?(stack_name="")
    (max_size : [ `int32 ] t)
  =
  let op =
    Op.create context "StackV2"
    |> fun op -> Op.add_input op max_size
  in
  Op.set_attr_string op "stack_name" stack_name;
  Op.execute1 op

let stageClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "StageClear"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute0 op

let stageSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "StageSize"
  in
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_int op "memory_limit" memory_limit;
  Op.set_attr_type_list op "dtypes" dtypes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let statelessRandomNormal
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let op =
    Op.create context "StatelessRandomNormal"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op seed
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.execute1 op

let statelessRandomUniform
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let op =
    Op.create context "StatelessRandomUniform"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op seed
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.execute1 op

let statelessTruncatedNormal
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let op =
    Op.create context "StatelessTruncatedNormal"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op seed
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.execute1 op

let stopGradient
    (input : 't t)
  =
  let op =
    Op.create context "StopGradient"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let stridedSlice
    ?(begin_mask=0)
    ?(end_mask=0)
    ?(ellipsis_mask=0)
    ?(new_axis_mask=0)
    ?(shrink_axis_mask=0)
    (input : 't t)
    (begin__ : ([< `int32 | `int64 ] as 'index) t)
    (end__ : ([< `int32 | `int64 ] as 'index) t)
    (strides : ([< `int32 | `int64 ] as 'index) t)
  =
  let op =
    Op.create context "StridedSlice"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op begin__
    |> fun op -> Op.add_input op end__
    |> fun op -> Op.add_input op strides
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Index" (Op.Tensor_handle.data_type begin__);
  Op.set_attr_int op "begin_mask" begin_mask;
  Op.set_attr_int op "end_mask" end_mask;
  Op.set_attr_int op "ellipsis_mask" ellipsis_mask;
  Op.set_attr_int op "new_axis_mask" new_axis_mask;
  Op.set_attr_int op "shrink_axis_mask" shrink_axis_mask;
  Op.execute1 op

let stridedSliceAssign
    ?(begin_mask=0)
    ?(end_mask=0)
    ?(ellipsis_mask=0)
    ?(new_axis_mask=0)
    ?(shrink_axis_mask=0)
    (ref : 't t)
    (begin__ : ([< `int32 | `int64 ] as 'index) t)
    (end__ : ([< `int32 | `int64 ] as 'index) t)
    (strides : ([< `int32 | `int64 ] as 'index) t)
    (value : 't t)
  =
  let op =
    Op.create context "StridedSliceAssign"
    |> fun op -> Op.add_input op ref
    |> fun op -> Op.add_input op begin__
    |> fun op -> Op.add_input op end__
    |> fun op -> Op.add_input op strides
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type ref);
  Op.set_attr_data_type op "Index" (Op.Tensor_handle.data_type begin__);
  Op.set_attr_int op "begin_mask" begin_mask;
  Op.set_attr_int op "end_mask" end_mask;
  Op.set_attr_int op "ellipsis_mask" ellipsis_mask;
  Op.set_attr_int op "new_axis_mask" new_axis_mask;
  Op.set_attr_int op "shrink_axis_mask" shrink_axis_mask;
  Op.execute1 op

let stridedSliceGrad
    ?(begin_mask=0)
    ?(end_mask=0)
    ?(ellipsis_mask=0)
    ?(new_axis_mask=0)
    ?(shrink_axis_mask=0)
    (shape : ([< `int32 | `int64 ] as 'index) t)
    (begin__ : ([< `int32 | `int64 ] as 'index) t)
    (end__ : ([< `int32 | `int64 ] as 'index) t)
    (strides : ([< `int32 | `int64 ] as 'index) t)
    (dy : 't t)
  =
  let op =
    Op.create context "StridedSliceGrad"
    |> fun op -> Op.add_input op shape
    |> fun op -> Op.add_input op begin__
    |> fun op -> Op.add_input op end__
    |> fun op -> Op.add_input op strides
    |> fun op -> Op.add_input op dy
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type dy);
  Op.set_attr_data_type op "Index" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "begin_mask" begin_mask;
  Op.set_attr_int op "end_mask" end_mask;
  Op.set_attr_int op "ellipsis_mask" ellipsis_mask;
  Op.set_attr_int op "new_axis_mask" new_axis_mask;
  Op.set_attr_int op "shrink_axis_mask" shrink_axis_mask;
  Op.execute1 op

let stringJoin
    ?(separator="")
    (inputs__ : [ `string ] t list)
  =
  let op =
    Op.create context "StringJoin"
    |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  in
  Op.set_attr_int op "N" (List.length inputs__);
  Op.set_attr_string op "separator" separator;
  Op.execute1 op

let stringSplit
    ?(skip_empty=true)
    (input : [ `string ] t)
    (delimiter : [ `string ] t)
  =
  let op =
    Op.create context "StringSplit"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op delimiter
  in
  Op.set_attr_bool op "skip_empty" skip_empty;
  Op.execute3 op

let stringToHashBucket
    ~num_buckets
    (string_tensor : [ `string ] t)
  =
  let op =
    Op.create context "StringToHashBucket"
    |> fun op -> Op.add_input op string_tensor
  in
  Op.set_attr_int op "num_buckets" num_buckets;
  Op.execute1 op

let stringToHashBucketFast
    ~num_buckets
    (input : [ `string ] t)
  =
  let op =
    Op.create context "StringToHashBucketFast"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_int op "num_buckets" num_buckets;
  Op.execute1 op

let stringToHashBucketStrong
    ~num_buckets
    ~key
    (input : [ `string ] t)
  =
  let op =
    Op.create context "StringToHashBucketStrong"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_int op "num_buckets" num_buckets;
  Op.set_attr_int_list op "key" key;
  Op.execute1 op

let stringToNumber
    ~type_out_type
    (string_tensor : [ `string ] t)
  =
  let op =
    Op.create context "StringToNumber"
    |> fun op -> Op.add_input op string_tensor
  in
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.execute1 op

let sub
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Sub"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let substr
    (input : [ `string ] t)
    (pos : ([< `int32 | `int64 ] as 't) t)
    (len : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "Substr"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op pos
    |> fun op -> Op.add_input op len
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type pos);
  Op.execute1 op

let sum
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op =
    Op.create context "Sum"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op reduction_indices
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tidx" (Op.Tensor_handle.data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let svd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Svd"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "compute_uv" compute_uv;
  Op.set_attr_bool op "full_matrices" full_matrices;
  Op.execute3 op

let switch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  let op =
    Op.create context "Switch"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op pred
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.execute2 op

let tFRecordDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op =
    Op.create context "TFRecordDataset"
    |> fun op -> Op.add_input op filenames
    |> fun op -> Op.add_input op compression_type
    |> fun op -> Op.add_input op buffer_size
  in
  Op.execute1 op

let tFRecordReader
    ?(container="")
    ?(shared_name="")
    ?(compression_type="")
    ()
  =
  let op =
    Op.create context "TFRecordReader"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_string op "compression_type" compression_type;
  Op.execute1 op

let tFRecordReaderV2
    ?(container="")
    ?(shared_name="")
    ?(compression_type="")
    ()
  =
  let op =
    Op.create context "TFRecordReaderV2"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_string op "compression_type" compression_type;
  Op.execute1 op

let takeDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let op =
    Op.create context "TakeDataset"
    |> fun op -> Op.add_input op input_dataset
    |> fun op -> Op.add_input op count
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let takeManySparseFromTensorsMap
    ~type_dtype
    ?(container="")
    ?(shared_name="")
    (sparse_handles : [ `int64 ] t)
  =
  let op =
    Op.create context "TakeManySparseFromTensorsMap"
    |> fun op -> Op.add_input op sparse_handles
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute3 op

let tan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Tan"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let tanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "Tanh"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let tanhGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "TanhGrad"
    |> fun op -> Op.add_input op y
    |> fun op -> Op.add_input op dy
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type y);
  Op.execute1 op

let temporaryVariable
    ~type_dtype
    ~shape
    ?(var_name="")
    ()
  =
  let op =
    Op.create context "TemporaryVariable"
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "var_name" var_name;
  Op.execute1 op

let tensorArray
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    ?(element_shape=[])
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "TensorArray"
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_bool op "dynamic_size" dynamic_size;
  Op.set_attr_bool op "clear_after_read" clear_after_read;
  Op.set_attr_string op "tensor_array_name" tensor_array_name;
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayClose
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "TensorArrayClose"
    |> fun op -> Op.add_input op handle
  in
  Op.execute0 op

let tensorArrayCloseV2
    (handle : [ `string ] t)
  =
  let op =
    Op.create context "TensorArrayCloseV2"
    |> fun op -> Op.add_input op handle
  in
  Op.execute0 op

let tensorArrayCloseV3
    (handle : [ `resource ] t)
  =
  let op =
    Op.create context "TensorArrayCloseV3"
    |> fun op -> Op.add_input op handle
  in
  Op.execute0 op

let tensorArrayConcat
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayConcat"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape_except0" element_shape_except0;
  Op.execute2 op

let tensorArrayConcatV2
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayConcatV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape_except0" element_shape_except0;
  Op.execute2 op

let tensorArrayConcatV3
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayConcatV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape_except0" element_shape_except0;
  Op.execute2 op

let tensorArrayGather
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayGather"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayGatherV2
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayGatherV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayGatherV3
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `resource ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayGatherV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayGrad
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayGrad"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_string op "source" source;
  Op.execute1 op

let tensorArrayGradV2
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayGradV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_string op "source" source;
  Op.execute1 op

let tensorArrayGradV3
    ~source
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayGradV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_string op "source" source;
  Op.execute2 op

let tensorArrayPack
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayPack"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayRead
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayRead"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op index
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let tensorArrayReadV2
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayReadV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op index
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let tensorArrayReadV3
    ~type_dtype
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayReadV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op index
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let tensorArrayScatter
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayScatter"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArrayScatterV2
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayScatterV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArrayScatterV3
    (handle : [ `resource ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayScatterV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op indices
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArraySize
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArraySize"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.execute1 op

let tensorArraySizeV2
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArraySizeV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.execute1 op

let tensorArraySizeV3
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArraySizeV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op flow_in
  in
  Op.execute1 op

let tensorArraySplit
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArraySplit"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op lengths
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArraySplitV2
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArraySplitV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op lengths
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArraySplitV3
    (handle : [ `resource ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArraySplitV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op lengths
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArrayUnpack
    (handle : [ `string ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayUnpack"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArrayV2
    ?(element_shape=[])
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "TensorArrayV2"
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_shape op "element_shape" element_shape;
  Op.set_attr_bool op "dynamic_size" dynamic_size;
  Op.set_attr_bool op "clear_after_read" clear_after_read;
  Op.set_attr_string op "tensor_array_name" tensor_array_name;
  Op.execute1 op

let tensorArrayV3
    ?(element_shape=[])
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    (size : [ `int32 ] t)
  =
  let op =
    Op.create context "TensorArrayV3"
    |> fun op -> Op.add_input op size
  in
  Op.set_attr_shape op "element_shape" element_shape;
  Op.set_attr_bool op "dynamic_size" dynamic_size;
  Op.set_attr_bool op "clear_after_read" clear_after_read;
  Op.set_attr_string op "tensor_array_name" tensor_array_name;
  Op.execute2 op

let tensorArrayWrite
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayWrite"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op index
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArrayWriteV2
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayWriteV2"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op index
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorArrayWriteV3
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op =
    Op.create context "TensorArrayWriteV3"
    |> fun op -> Op.add_input op handle
    |> fun op -> Op.add_input op index
    |> fun op -> Op.add_input op value
    |> fun op -> Op.add_input op flow_in
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.execute1 op

let tensorSummary
    ?(description="")
    ?(display_name="")
    (tensor : 't t)
  =
  let op =
    Op.create context "TensorSummary"
    |> fun op -> Op.add_input op tensor
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.set_attr_string op "description" description;
  Op.set_attr_string op "display_name" display_name;
  Op.execute1 op

let tensorSummaryV2
    (tag : [ `string ] t)
    (tensor : 't t)
    (serialized_summary_metadata : [ `string ] t)
  =
  let op =
    Op.create context "TensorSummaryV2"
    |> fun op -> Op.add_input op tag
    |> fun op -> Op.add_input op tensor
    |> fun op -> Op.add_input op serialized_summary_metadata
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type tensor);
  Op.execute1 op

let textLineDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op =
    Op.create context "TextLineDataset"
    |> fun op -> Op.add_input op filenames
    |> fun op -> Op.add_input op compression_type
    |> fun op -> Op.add_input op buffer_size
  in
  Op.execute1 op

let textLineReader
    ?(skip_header_lines=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "TextLineReader"
  in
  Op.set_attr_int op "skip_header_lines" skip_header_lines;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let textLineReaderV2
    ?(skip_header_lines=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "TextLineReaderV2"
  in
  Op.set_attr_int op "skip_header_lines" skip_header_lines;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let threadUnsafeUnigramCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let op =
    Op.create context "ThreadUnsafeUnigramCandidateSampler"
    |> fun op -> Op.add_input op true_classes
  in
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "num_sampled" num_sampled;
  Op.set_attr_bool op "unique" unique;
  Op.set_attr_int op "range_max" range_max;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let tile
    (input : 't t)
    (multiples : ([< `int32 | `int64 ] as 'tmultiples) t)
  =
  let op =
    Op.create context "Tile"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op multiples
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_data_type op "Tmultiples" (Op.Tensor_handle.data_type multiples);
  Op.execute1 op

let tileGrad
    (input : 't t)
    (multiples : [ `int32 ] t)
  =
  let op =
    Op.create context "TileGrad"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op multiples
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.execute1 op

let topK
    ~k
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op =
    Op.create context "TopK"
    |> fun op -> Op.add_input op input
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_int op "k" k;
  Op.set_attr_bool op "sorted" sorted;
  Op.execute2 op

let topKV2
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (k : [ `int32 ] t)
  =
  let op =
    Op.create context "TopKV2"
    |> fun op -> Op.add_input op input
    |> fun op -> Op.add_input op k
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type input);
  Op.set_attr_bool op "sorted" sorted;
  Op.execute2 op

let transpose
    (x : 't t)
    (perm : ([< `int32 | `int64 ] as 'tperm) t)
  =
  let op =
    Op.create context "Transpose"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op perm
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "Tperm" (Op.Tensor_handle.data_type perm);
  Op.execute1 op

let truncateDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op =
    Op.create context "TruncateDiv"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let truncateMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op =
    Op.create context "TruncateMod"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op y
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let truncatedNormal
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let op =
    Op.create context "TruncatedNormal"
    |> fun op -> Op.add_input op shape
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let uniformCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let op =
    Op.create context "UniformCandidateSampler"
    |> fun op -> Op.add_input op true_classes
  in
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "num_sampled" num_sampled;
  Op.set_attr_bool op "unique" unique;
  Op.set_attr_int op "range_max" range_max;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let unique
    ~type_out_idx
    (x : 't t)
  =
  let op =
    Op.create context "Unique"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "out_idx" Operation.Type.(to_data_type (P type_out_idx));
  Op.execute2 op

let uniqueWithCounts
    ~type_out_idx
    (x : 't t)
  =
  let op =
    Op.create context "UniqueWithCounts"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.set_attr_data_type op "out_idx" Operation.Type.(to_data_type (P type_out_idx));
  Op.execute3 op

let unpack
    ~num
    ?(axis=0)
    (value : 't t)
  =
  let op =
    Op.create context "Unpack"
    |> fun op -> Op.add_input op value
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type value);
  Op.set_attr_int op "num" num;
  Op.set_attr_int op "axis" axis;
  Op.execute op ~output_len:num

let unsortedSegmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  let op =
    Op.create context "UnsortedSegmentMax"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op segment_ids
    |> fun op -> Op.add_input op num_segments
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type segment_ids);
  Op.execute1 op

let unsortedSegmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  let op =
    Op.create context "UnsortedSegmentSum"
    |> fun op -> Op.add_input op data
    |> fun op -> Op.add_input op segment_ids
    |> fun op -> Op.add_input op num_segments
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type data);
  Op.set_attr_data_type op "Tindices" (Op.Tensor_handle.data_type segment_ids);
  Op.execute1 op

let variable
    ~type_dtype
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "Variable"
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let variableV2
    ~type_dtype
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "VariableV2"
  in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let where
    (input : [ `bool ] t)
  =
  let op =
    Op.create context "Where"
    |> fun op -> Op.add_input op input
  in
  Op.execute1 op

let wholeFileReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "WholeFileReader"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let wholeFileReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op =
    Op.create context "WholeFileReaderV2"
  in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let writeFile
    (filename : [ `string ] t)
    (contents : [ `string ] t)
  =
  let op =
    Op.create context "WriteFile"
    |> fun op -> Op.add_input op filename
    |> fun op -> Op.add_input op contents
  in
  Op.execute0 op

let zerosLike
    (x : 't t)
  =
  let op =
    Op.create context "ZerosLike"
    |> fun op -> Op.add_input op x
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let zeta
    (x : ([< `float | `double ] as 't) t)
    (q : ([< `float | `double ] as 't) t)
  =
  let op =
    Op.create context "Zeta"
    |> fun op -> Op.add_input op x
    |> fun op -> Op.add_input op q
  in
  Op.set_attr_data_type op "T" (Op.Tensor_handle.data_type x);
  Op.execute1 op

let zipDataset
    ~output_types
    ~output_shapes
    (input_datasets : [ `variant ] t list)
  =
  let op =
    Op.create context "ZipDataset"
    |> fun init -> List.fold input_datasets ~init ~f:Op.add_input
  in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.set_attr_int op "N" (List.length input_datasets);
  Op.execute1 op

