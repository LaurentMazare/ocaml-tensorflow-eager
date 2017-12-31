(* THIS FILE HAS BEEN AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND! *)
open Base
open Tf_core

type 'a t = 'a Op.tensor_handle
module Dim = Operation.Dim
module Type = Operation.Type

let context = Op.default_context ()

let abort
    ?(error_msg="")
    ?(exit_without_error=false)
    ()
  =
  let op = Op.create context "Abort" in
  Op.set_attr_string op "error_msg" error_msg;
  Op.set_attr_bool op "exit_without_error" exit_without_error;
  Op.execute0 op

let abs
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "Abs" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let accumulatorApplyGradient
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
  =
  let op = Op.create context "AccumulatorApplyGradient" in
  Op.add_input op handle;
  Op.add_input op local_step;
  Op.add_input op gradient;
  Op.set_attr_data_type op "dtype" (Op.tensor_handle_data_type gradient);
  Op.execute0 op

let accumulatorNumAccumulated
    (handle : [ `string ] t)
  =
  let op = Op.create context "AccumulatorNumAccumulated" in
  Op.add_input op handle;
  Op.execute1 op

let accumulatorSetGlobalStep
    (handle : [ `string ] t)
    (new_global_step : [ `int64 ] t)
  =
  let op = Op.create context "AccumulatorSetGlobalStep" in
  Op.add_input op handle;
  Op.add_input op new_global_step;
  Op.execute0 op

let accumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  let op = Op.create context "AccumulatorTakeGradient" in
  Op.add_input op handle;
  Op.add_input op num_required;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let acos
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Acos" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let acosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Acosh" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let add
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
  =
  let op = Op.create context "Add" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let addManySparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op = Op.create context "AddManySparseToTensorsMap" in
  Op.add_input op sparse_indices;
  Op.add_input op sparse_values;
  Op.add_input op sparse_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sparse_values);
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let addN
    (inputs__ : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 | `variant ] as 't) t list)
  =
  let op = Op.create context "AddN" in
  List.iter inputs__ ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute1 op

let addSparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op = Op.create context "AddSparseToTensorsMap" in
  Op.add_input op sparse_indices;
  Op.add_input op sparse_values;
  Op.add_input op sparse_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sparse_values);
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let adjustContrast
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (contrast_factor : [ `float ] t)
    (min_value : [ `float ] t)
    (max_value : [ `float ] t)
  =
  let op = Op.create context "AdjustContrast" in
  Op.add_input op images;
  Op.add_input op contrast_factor;
  Op.add_input op min_value;
  Op.add_input op max_value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.execute1 op

let adjustContrastv2
    (images : [ `float ] t)
    (contrast_factor : [ `float ] t)
  =
  let op = Op.create context "AdjustContrastv2" in
  Op.add_input op images;
  Op.add_input op contrast_factor;
  Op.execute1 op

let adjustHue
    (images : [ `float ] t)
    (delta : [ `float ] t)
  =
  let op = Op.create context "AdjustHue" in
  Op.add_input op images;
  Op.add_input op delta;
  Op.execute1 op

let adjustSaturation
    (images : [ `float ] t)
    (scale : [ `float ] t)
  =
  let op = Op.create context "AdjustSaturation" in
  Op.add_input op images;
  Op.add_input op scale;
  Op.execute1 op

let all
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "All" in
  Op.add_input op input;
  Op.add_input op reduction_indices;
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type reduction_indices);
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
  let op = Op.create context "AllCandidateSampler" in
  Op.add_input op true_classes;
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
  let op = Op.create context "Angle" in
  Op.add_input op input;
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let any
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "Any" in
  Op.add_input op input;
  Op.add_input op reduction_indices;
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type reduction_indices);
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
  let op = Op.create context "ApplyAdadelta" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op accum_update;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ApplyAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyAdagradDA" in
  Op.add_input op var;
  Op.add_input op gradient_accumulator;
  Op.add_input op gradient_squared_accumulator;
  Op.add_input op grad;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op global_step;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyAdam" in
  Op.add_input op var;
  Op.add_input op m;
  Op.add_input op v;
  Op.add_input op beta1_power;
  Op.add_input op beta2_power;
  Op.add_input op lr;
  Op.add_input op beta1;
  Op.add_input op beta2;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyCenteredRMSProp" in
  Op.add_input op var;
  Op.add_input op mg;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyFtrl" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyFtrlV2" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op l2_shrinkage;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let applyGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ApplyGradientDescent" in
  Op.add_input op var;
  Op.add_input op alpha;
  Op.add_input op delta;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyMomentum" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.add_input op momentum;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyProximalAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyProximalGradientDescent" in
  Op.add_input op var;
  Op.add_input op alpha;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op delta;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
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
  let op = Op.create context "ApplyRMSProp" in
  Op.add_input op var;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let approximateEqual
    ?(tolerance=9.9999997473787516e-06)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ApproximateEqual" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_float op "tolerance" tolerance;
  Op.execute1 op

let argMax
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "ArgMax" in
  Op.add_input op input;
  Op.add_input op dimension;
  Op.set_attr_data_type op "output_type" Operation.Type.(to_data_type (P type_output_type));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type dimension);
  Op.execute1 op

let argMin
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "ArgMin" in
  Op.add_input op input;
  Op.add_input op dimension;
  Op.set_attr_data_type op "output_type" Operation.Type.(to_data_type (P type_output_type));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type dimension);
  Op.execute1 op

let asString
    ?(precision=(-1))
    ?(scientific=false)
    ?(shortest=false)
    ?(width=(-1))
    ?(fill="")
    (input : ([< `int32 | `int64 | `complex64 | `float | `double | `bool ] as 't) t)
  =
  let op = Op.create context "AsString" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_int op "precision" precision;
  Op.set_attr_bool op "scientific" scientific;
  Op.set_attr_bool op "shortest" shortest;
  Op.set_attr_int op "width" width;
  Op.set_attr_string op "fill" fill;
  Op.execute1 op

let asin
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Asin" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let asinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Asinh" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let assign
    ?(validate_shape=true)
    ?(use_locking=true)
    (ref : 't t)
    (value : 't t)
  =
  let op = Op.create context "Assign" in
  Op.add_input op ref;
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_bool op "validate_shape" validate_shape;
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let assignAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "AssignAdd" in
  Op.add_input op ref;
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let assignSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "AssignSub" in
  Op.add_input op ref;
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let atan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Atan" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let atan2
    (y : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Atan2" in
  Op.add_input op y;
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y);
  Op.execute1 op

let atanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Atanh" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let audioSpectrogram
    ~window_size
    ~stride
    ?(magnitude_squared=false)
    (input : [ `float ] t)
  =
  let op = Op.create context "AudioSpectrogram" in
  Op.add_input op input;
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
  let op = Op.create context "AudioSummary" in
  Op.add_input op tag;
  Op.add_input op tensor;
  Op.set_attr_float op "sample_rate" sample_rate;
  Op.set_attr_int op "max_outputs" max_outputs;
  Op.execute1 op

let audioSummaryV2
    ?(max_outputs=3)
    (tag : [ `string ] t)
    (tensor : [ `float ] t)
    (sample_rate : [ `float ] t)
  =
  let op = Op.create context "AudioSummaryV2" in
  Op.add_input op tag;
  Op.add_input op tensor;
  Op.add_input op sample_rate;
  Op.set_attr_int op "max_outputs" max_outputs;
  Op.execute1 op

let avgPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (value : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "AvgPool" in
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
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
  let op = Op.create context "AvgPool3D" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "AvgPool3DGrad" in
  Op.add_input op orig_input_shape;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
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
  let op = Op.create context "AvgPoolGrad" in
  Op.add_input op orig_input_shape;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
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
  let op = Op.create context "Barrier" in
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
  let op = Op.create context "BarrierClose" in
  Op.add_input op handle;
  Op.set_attr_bool op "cancel_pending_enqueues" cancel_pending_enqueues;
  Op.execute0 op

let barrierIncompleteSize
    (handle : [ `string ] t)
  =
  let op = Op.create context "BarrierIncompleteSize" in
  Op.add_input op handle;
  Op.execute1 op

let barrierInsertMany
    ~component_index
    (handle : [ `string ] t)
    (keys : [ `string ] t)
    (values : 't t)
  =
  let op = Op.create context "BarrierInsertMany" in
  Op.add_input op handle;
  Op.add_input op keys;
  Op.add_input op values;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type values);
  Op.set_attr_int op "component_index" component_index;
  Op.execute0 op

let barrierReadySize
    (handle : [ `string ] t)
  =
  let op = Op.create context "BarrierReadySize" in
  Op.add_input op handle;
  Op.execute1 op

let batchCholesky
    (input : ([< `double | `float ] as 't) t)
  =
  let op = Op.create context "BatchCholesky" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let batchCholeskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "BatchCholeskyGrad" in
  Op.add_input op l;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type l);
  Op.execute1 op

let batchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (batch_size : [ `int64 ] t)
  =
  let op = Op.create context "BatchDataset" in
  Op.add_input op input_dataset;
  Op.add_input op batch_size;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let batchFFT
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "BatchFFT" in
  Op.add_input op input;
  Op.execute1 op

let batchFFT2D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "BatchFFT2D" in
  Op.add_input op input;
  Op.execute1 op

let batchFFT3D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "BatchFFT3D" in
  Op.add_input op input;
  Op.execute1 op

let batchIFFT
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "BatchIFFT" in
  Op.add_input op input;
  Op.execute1 op

let batchIFFT2D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "BatchIFFT2D" in
  Op.add_input op input;
  Op.execute1 op

let batchIFFT3D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "BatchIFFT3D" in
  Op.add_input op input;
  Op.execute1 op

let batchMatMul
    ?(adj_x=false)
    ?(adj_y=false)
    (x : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  let op = Op.create context "BatchMatMul" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_bool op "adj_x" adj_x;
  Op.set_attr_bool op "adj_y" adj_y;
  Op.execute1 op

let batchMatrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  let op = Op.create context "BatchMatrixBandPart" in
  Op.add_input op input;
  Op.add_input op num_lower;
  Op.add_input op num_upper;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let batchMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "BatchMatrixDeterminant" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let batchMatrixDiag
    (diagonal : 't t)
  =
  let op = Op.create context "BatchMatrixDiag" in
  Op.add_input op diagonal;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type diagonal);
  Op.execute1 op

let batchMatrixDiagPart
    (input : 't t)
  =
  let op = Op.create context "BatchMatrixDiagPart" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let batchMatrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float ] as 't) t)
  =
  let op = Op.create context "BatchMatrixInverse" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let batchMatrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  let op = Op.create context "BatchMatrixSetDiag" in
  Op.add_input op input;
  Op.add_input op diagonal;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let batchMatrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  let op = Op.create context "BatchMatrixSolve" in
  Op.add_input op matrix;
  Op.add_input op rhs;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type matrix);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let batchMatrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  let op = Op.create context "BatchMatrixSolveLs" in
  Op.add_input op matrix;
  Op.add_input op rhs;
  Op.add_input op l2_regularizer;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type matrix);
  Op.set_attr_bool op "fast" fast;
  Op.execute1 op

let batchMatrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  let op = Op.create context "BatchMatrixTriangularSolve" in
  Op.add_input op matrix;
  Op.add_input op rhs;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type matrix);
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
  let op = Op.create context "BatchNormWithGlobalNormalization" in
  Op.add_input op t;
  Op.add_input op m;
  Op.add_input op v;
  Op.add_input op beta;
  Op.add_input op gamma;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type t);
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
  let op = Op.create context "BatchNormWithGlobalNormalizationGrad" in
  Op.add_input op t;
  Op.add_input op m;
  Op.add_input op v;
  Op.add_input op gamma;
  Op.add_input op backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type t);
  Op.set_attr_float op "variance_epsilon" variance_epsilon;
  Op.set_attr_bool op "scale_after_normalization" scale_after_normalization;
  Op.execute5 op

let batchSelfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  let op = Op.create context "BatchSelfAdjointEig" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let batchSelfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float ] as 't) t)
  =
  let op = Op.create context "BatchSelfAdjointEigV2" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "compute_v" compute_v;
  Op.execute2 op

let batchSvd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "BatchSvd" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "compute_uv" compute_uv;
  Op.set_attr_bool op "full_matrices" full_matrices;
  Op.execute3 op

let batchToSpace
    ~block_size
    (input : 't t)
    (crops : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "BatchToSpace" in
  Op.add_input op input;
  Op.add_input op crops;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type crops);
  Op.set_attr_int op "block_size" block_size;
  Op.execute1 op

let batchToSpaceND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (crops : ([< `int32 | `int64 ] as 'tcrops) t)
  =
  let op = Op.create context "BatchToSpaceND" in
  Op.add_input op input;
  Op.add_input op block_shape;
  Op.add_input op crops;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tblock_shape" (Op.tensor_handle_data_type block_shape);
  Op.set_attr_data_type op "Tcrops" (Op.tensor_handle_data_type crops);
  Op.execute1 op

let betainc
    (a : ([< `float | `double ] as 't) t)
    (b : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Betainc" in
  Op.add_input op a;
  Op.add_input op b;
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a);
  Op.execute1 op

let biasAdd
    ?(data_format="NHWC")
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "BiasAdd" in
  Op.add_input op value;
  Op.add_input op bias;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let biasAddGrad
    ?(data_format="NHWC")
    (out_backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "BiasAddGrad" in
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type out_backprop);
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let biasAddV1
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "BiasAddV1" in
  Op.add_input op value;
  Op.add_input op bias;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let bincount
    (arr : [ `int32 ] t)
    (size : [ `int32 ] t)
    (weights : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op = Op.create context "Bincount" in
  Op.add_input op arr;
  Op.add_input op size;
  Op.add_input op weights;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type weights);
  Op.execute1 op

let bitcast
    ~type_type__
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Bitcast" in
  Op.add_input op input;
  Op.set_attr_data_type op "type" Operation.Type.(to_data_type (P type_type__));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let bitwiseAnd
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "BitwiseAnd" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let bitwiseOr
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "BitwiseOr" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let bitwiseXor
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "BitwiseXor" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let broadcastArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "BroadcastArgs" in
  Op.add_input op s0;
  Op.add_input op s1;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type s0);
  Op.execute1 op

let broadcastGradientArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "BroadcastGradientArgs" in
  Op.add_input op s0;
  Op.add_input op s1;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type s0);
  Op.execute2 op

let bucketize
    ~boundaries
    (input : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op = Op.create context "Bucketize" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_float_list op "boundaries" boundaries;
  Op.execute1 op

let cTCGreedyDecoder
    ?(merge_repeated=false)
    (inputs__ : [ `float ] t)
    (sequence_length : [ `int32 ] t)
  =
  let op = Op.create context "CTCGreedyDecoder" in
  Op.add_input op inputs__;
  Op.add_input op sequence_length;
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
  let op = Op.create context "CTCLoss" in
  Op.add_input op inputs__;
  Op.add_input op labels_indices;
  Op.add_input op labels_values;
  Op.add_input op sequence_length;
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
  let op = Op.create context "CacheDataset" in
  Op.add_input op input_dataset;
  Op.add_input op filename;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let cast
    ~type_dstT
    (x : 'srcT t)
  =
  let op = Op.create context "Cast" in
  Op.add_input op x;
  Op.set_attr_data_type op "DstT" Operation.Type.(to_data_type (P type_dstT));
  Op.set_attr_data_type op "SrcT" (Op.tensor_handle_data_type x);
  Op.execute1 op

let ceil
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Ceil" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let checkNumerics
    ~message
    (tensor : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "CheckNumerics" in
  Op.add_input op tensor;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.set_attr_string op "message" message;
  Op.execute1 op

let cholesky
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "Cholesky" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let choleskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "CholeskyGrad" in
  Op.add_input op l;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type l);
  Op.execute1 op

let compareAndBitpack
    (input : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
    (threshold : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "CompareAndBitpack" in
  Op.add_input op input;
  Op.add_input op threshold;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let complex
    ~type_tout
    (real : ([< `float | `double ] as 't) t)
    (imag : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Complex" in
  Op.add_input op real;
  Op.add_input op imag;
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type real);
  Op.execute1 op

let complexAbs
    ~type_tout
    (x : ([< `complex64 ] as 't) t)
  =
  let op = Op.create context "ComplexAbs" in
  Op.add_input op x;
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let computeAccidentalHits
    ~num_true
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
    (sampled_candidates : [ `int64 ] t)
  =
  let op = Op.create context "ComputeAccidentalHits" in
  Op.add_input op true_classes;
  Op.add_input op sampled_candidates;
  Op.set_attr_int op "num_true" num_true;
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute3 op

let concat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
  =
  let op = Op.create context "Concat" in
  Op.add_input op concat_dim;
  List.iter values ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn values));
  Op.set_attr_int op "N" (List.length values);
  Op.execute1 op

let concatOffset
    (concat_dim : [ `int32 ] t)
    (shape : [ `int32 ] t list)
  =
  let op = Op.create context "ConcatOffset" in
  Op.add_input op concat_dim;
  List.iter shape ~f:(Op.add_input op);
  Op.set_attr_int op "N" (List.length shape);
  Op.execute op ~output_len:(List.length shape)

let concatV2
    (values : 't t list)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "ConcatV2" in
  List.iter values ~f:(Op.add_input op);
  Op.add_input op axis;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn values));
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type axis);
  Op.set_attr_int op "N" (List.length values);
  Op.execute1 op

let concatenateDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (another_dataset : [ `variant ] t)
  =
  let op = Op.create context "ConcatenateDataset" in
  Op.add_input op input_dataset;
  Op.add_input op another_dataset;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let conditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "ConditionalAccumulator" in
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let conj
    (input : ([< `complex64 | `variant ] as 't) t)
  =
  let op = Op.create context "Conj" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let controlTrigger
    ()
  =
  let op = Op.create context "ControlTrigger" in
  Op.execute0 op

let conv2D
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter : ([< `float ] as 't) t)
  =
  let op = Op.create context "Conv2D" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Conv2DBackpropFilter" in
  Op.add_input op input;
  Op.add_input op filter_sizes;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Conv2DBackpropInput" in
  Op.add_input op input_sizes;
  Op.add_input op filter;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type filter);
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
  let op = Op.create context "Conv3D" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Conv3DBackpropFilter" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Conv3DBackpropFilterV2" in
  Op.add_input op input;
  Op.add_input op filter_sizes;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Conv3DBackpropInput" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Conv3DBackpropInputV2" in
  Op.add_input op input_sizes;
  Op.add_input op filter;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type filter);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.set_attr_string op "data_format" data_format;
  Op.execute1 op

let copy
    ?(tensor_name="")
    (input : 't t)
  =
  let op = Op.create context "Copy" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_string op "tensor_name" tensor_name;
  Op.execute1 op

let copyHost
    ?(tensor_name="")
    (input : 't t)
  =
  let op = Op.create context "CopyHost" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_string op "tensor_name" tensor_name;
  Op.execute1 op

let cos
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Cos" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let cosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Cosh" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let countUpTo
    ~limit
    (ref : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "CountUpTo" in
  Op.add_input op ref;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
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
  let op = Op.create context "CropAndResize" in
  Op.add_input op image;
  Op.add_input op boxes;
  Op.add_input op box_ind;
  Op.add_input op crop_size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type image);
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
  let op = Op.create context "CropAndResizeGradBoxes" in
  Op.add_input op grads;
  Op.add_input op image;
  Op.add_input op boxes;
  Op.add_input op box_ind;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type image);
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
  let op = Op.create context "CropAndResizeGradImage" in
  Op.add_input op grads;
  Op.add_input op boxes;
  Op.add_input op box_ind;
  Op.add_input op image_size;
  Op.set_attr_data_type op "T" Operation.Type.(to_data_type (P type_t));
  Op.set_attr_string op "method" method_;
  Op.execute1 op

let cross
    (a : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Cross" in
  Op.add_input op a;
  Op.add_input op b;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a);
  Op.execute1 op

let cumprod
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "Cumprod" in
  Op.add_input op x;
  Op.add_input op axis;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type axis);
  Op.set_attr_bool op "exclusive" exclusive;
  Op.set_attr_bool op "reverse" reverse;
  Op.execute1 op

let cumsum
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "Cumsum" in
  Op.add_input op x;
  Op.add_input op axis;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type axis);
  Op.set_attr_bool op "exclusive" exclusive;
  Op.set_attr_bool op "reverse" reverse;
  Op.execute1 op

let debugGradientIdentity
    (input : 't t)
  =
  let op = Op.create context "DebugGradientIdentity" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let debugIdentity
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  let op = Op.create context "DebugIdentity" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "DebugNanCount" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "DebugNumericSummary" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "DecodeAndCropJpeg" in
  Op.add_input op contents;
  Op.add_input op crop_window;
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
  let op = Op.create context "DecodeBase64" in
  Op.add_input op input;
  Op.execute1 op

let decodeBmp
    ?(channels=0)
    (contents : [ `string ] t)
  =
  let op = Op.create context "DecodeBmp" in
  Op.add_input op contents;
  Op.set_attr_int op "channels" channels;
  Op.execute1 op

let decodeGif
    (contents : [ `string ] t)
  =
  let op = Op.create context "DecodeGif" in
  Op.add_input op contents;
  Op.execute1 op

let decodeJSONExample
    (json_examples : [ `string ] t)
  =
  let op = Op.create context "DecodeJSONExample" in
  Op.add_input op json_examples;
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
  let op = Op.create context "DecodeJpeg" in
  Op.add_input op contents;
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
  let op = Op.create context "DecodePng" in
  Op.add_input op contents;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_int op "channels" channels;
  Op.execute1 op

let decodeRaw
    ~type_out_type
    ?(little_endian=true)
    (bytes : [ `string ] t)
  =
  let op = Op.create context "DecodeRaw" in
  Op.add_input op bytes;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_bool op "little_endian" little_endian;
  Op.execute1 op

let decodeWav
    ?(desired_channels=(-1))
    ?(desired_samples=(-1))
    (contents : [ `string ] t)
  =
  let op = Op.create context "DecodeWav" in
  Op.add_input op contents;
  Op.set_attr_int op "desired_channels" desired_channels;
  Op.set_attr_int op "desired_samples" desired_samples;
  Op.execute2 op

let deleteSessionTensor
    (handle : [ `string ] t)
  =
  let op = Op.create context "DeleteSessionTensor" in
  Op.add_input op handle;
  Op.execute0 op

let denseToDenseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
  =
  let op = Op.create context "DenseToDenseSetOperation" in
  Op.add_input op set1;
  Op.add_input op set2;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type set1);
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
  let op = Op.create context "DenseToSparseBatchDataset" in
  Op.add_input op input_dataset;
  Op.add_input op batch_size;
  Op.add_input op row_shape;
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
  let op = Op.create context "DenseToSparseSetOperation" in
  Op.add_input op set1;
  Op.add_input op set2_indices;
  Op.add_input op set2_values;
  Op.add_input op set2_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type set1);
  Op.set_attr_string op "set_operation" set_operation;
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute3 op

let depthToSpace
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  let op = Op.create context "DepthToSpace" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "DepthwiseConv2dNative" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "DepthwiseConv2dNativeBackpropFilter" in
  Op.add_input op input;
  Op.add_input op filter_sizes;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "DepthwiseConv2dNativeBackpropInput" in
  Op.add_input op input_sizes;
  Op.add_input op filter;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type filter);
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
  let op = Op.create context "Dequantize" in
  Op.add_input op input;
  Op.add_input op min_range;
  Op.add_input op max_range;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_string op "mode" mode;
  Op.execute1 op

let deserializeManySparse
    ~type_dtype
    (serialized_sparse : [ `string ] t)
  =
  let op = Op.create context "DeserializeManySparse" in
  Op.add_input op serialized_sparse;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute3 op

let destroyTemporaryVariable
    ~var_name
    (ref : 't t)
  =
  let op = Op.create context "DestroyTemporaryVariable" in
  Op.add_input op ref;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_string op "var_name" var_name;
  Op.execute1 op

let diag
    (diagonal : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Diag" in
  Op.add_input op diagonal;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type diagonal);
  Op.execute1 op

let diagPart
    (input : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "DiagPart" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let digamma
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Digamma" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let dilation2D
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Dilation2D" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Dilation2DBackpropFilter" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Dilation2DBackpropInput" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.add_input op out_backprop;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_int_list op "rates" rates;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let div
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Div" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let drawBoundingBoxes
    (images : ([< `float ] as 't) t)
    (boxes : [ `float ] t)
  =
  let op = Op.create context "DrawBoundingBoxes" in
  Op.add_input op images;
  Op.add_input op boxes;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.execute1 op

let dynamicPartition
    ~num_partitions
    (data : 't t)
    (partitions : [ `int32 ] t)
  =
  let op = Op.create context "DynamicPartition" in
  Op.add_input op data;
  Op.add_input op partitions;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_int op "num_partitions" num_partitions;
  Op.execute op ~output_len:num_partitions

let dynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  let op = Op.create context "DynamicStitch" in
  List.iter indices ~f:(Op.add_input op);
  List.iter data ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn data));
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
  let op = Op.create context "EditDistance" in
  Op.add_input op hypothesis_indices;
  Op.add_input op hypothesis_values;
  Op.add_input op hypothesis_shape;
  Op.add_input op truth_indices;
  Op.add_input op truth_values;
  Op.add_input op truth_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type hypothesis_values);
  Op.set_attr_bool op "normalize" normalize;
  Op.execute1 op

let elu
    (features : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Elu" in
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.execute1 op

let eluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "EluGrad" in
  Op.add_input op gradients;
  Op.add_input op outputs;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type gradients);
  Op.execute1 op

let encodeBase64
    ?(pad=false)
    (input : [ `string ] t)
  =
  let op = Op.create context "EncodeBase64" in
  Op.add_input op input;
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
  let op = Op.create context "EncodeJpeg" in
  Op.add_input op image;
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
  let op = Op.create context "EncodePng" in
  Op.add_input op image;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type image);
  Op.set_attr_int op "compression" compression;
  Op.execute1 op

let encodeWav
    (audio : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  let op = Op.create context "EncodeWav" in
  Op.add_input op audio;
  Op.add_input op sample_rate;
  Op.execute1 op

let enter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  let op = Op.create context "Enter" in
  Op.add_input op data;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_string op "frame_name" frame_name;
  Op.set_attr_bool op "is_constant" is_constant;
  Op.set_attr_int op "parallel_iterations" parallel_iterations;
  Op.execute1 op

let equal
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  let op = Op.create context "Equal" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let erf
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Erf" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let erfc
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Erfc" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let exit
    (data : 't t)
  =
  let op = Op.create context "Exit" in
  Op.add_input op data;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.execute1 op

let exp
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Exp" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let expandDims
    (input : 't t)
    (dim : ([< `int32 | `int64 ] as 'tdim) t)
  =
  let op = Op.create context "ExpandDims" in
  Op.add_input op input;
  Op.add_input op dim;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tdim" (Op.tensor_handle_data_type dim);
  Op.execute1 op

let expm1
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Expm1" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let extractGlimpse
    ?(centered=true)
    ?(normalized=true)
    ?(uniform_noise=true)
    (input : [ `float ] t)
    (size : [ `int32 ] t)
    (offsets : [ `float ] t)
  =
  let op = Op.create context "ExtractGlimpse" in
  Op.add_input op input;
  Op.add_input op size;
  Op.add_input op offsets;
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
  let op = Op.create context "ExtractImagePatches" in
  Op.add_input op images;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.set_attr_int_list op "ksizes" ksizes;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_int_list op "rates" rates;
  Op.set_attr_string op "padding" padding;
  Op.execute1 op

let extractJpegShape
    ~type_output_type
    (contents : [ `string ] t)
  =
  let op = Op.create context "ExtractJpegShape" in
  Op.add_input op contents;
  Op.set_attr_data_type op "output_type" Operation.Type.(to_data_type (P type_output_type));
  Op.execute1 op

let fFT
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "FFT" in
  Op.add_input op input;
  Op.execute1 op

let fFT2D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "FFT2D" in
  Op.add_input op input;
  Op.execute1 op

let fFT3D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "FFT3D" in
  Op.add_input op input;
  Op.execute1 op

let fIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "FIFOQueue" in
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
  let op = Op.create context "FIFOQueueV2" in
  Op.set_attr_type_list op "component_types" component_types;
  Op.set_attr_shape_list op "shapes" shapes;
  Op.set_attr_int op "capacity" capacity;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let fact
    ()
  =
  let op = Op.create context "Fact" in
  Op.execute1 op

let fakeQuantWithMinMaxArgs
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
  =
  let op = Op.create context "FakeQuantWithMinMaxArgs" in
  Op.add_input op inputs__;
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
  let op = Op.create context "FakeQuantWithMinMaxArgsGradient" in
  Op.add_input op gradients;
  Op.add_input op inputs__;
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
  let op = Op.create context "FakeQuantWithMinMaxVars" in
  Op.add_input op inputs__;
  Op.add_input op min;
  Op.add_input op max;
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
  let op = Op.create context "FakeQuantWithMinMaxVarsGradient" in
  Op.add_input op gradients;
  Op.add_input op inputs__;
  Op.add_input op min;
  Op.add_input op max;
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
  let op = Op.create context "FakeQuantWithMinMaxVarsPerChannel" in
  Op.add_input op inputs__;
  Op.add_input op min;
  Op.add_input op max;
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
  let op = Op.create context "FakeQuantWithMinMaxVarsPerChannelGradient" in
  Op.add_input op gradients;
  Op.add_input op inputs__;
  Op.add_input op min;
  Op.add_input op max;
  Op.set_attr_int op "num_bits" num_bits;
  Op.set_attr_bool op "narrow_range" narrow_range;
  Op.execute3 op

let fakeQueue
    (resource : [ `resource ] t)
  =
  let op = Op.create context "FakeQueue" in
  Op.add_input op resource;
  Op.execute1 op

let fill
    (dims : [ `int32 ] t)
    (value : 't t)
  =
  let op = Op.create context "Fill" in
  Op.add_input op dims;
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let fixedLengthRecordDataset
    (filenames : [ `string ] t)
    (header_bytes : [ `int64 ] t)
    (record_bytes : [ `int64 ] t)
    (footer_bytes : [ `int64 ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op = Op.create context "FixedLengthRecordDataset" in
  Op.add_input op filenames;
  Op.add_input op header_bytes;
  Op.add_input op record_bytes;
  Op.add_input op footer_bytes;
  Op.add_input op buffer_size;
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
  let op = Op.create context "FixedLengthRecordReader" in
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
  let op = Op.create context "FixedLengthRecordReaderV2" in
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
  let op = Op.create context "FixedUnigramCandidateSampler" in
  Op.add_input op true_classes;
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
  let op = Op.create context "Floor" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let floorDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "FloorDiv" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let floorMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op = Op.create context "FloorMod" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
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
  let op = Op.create context "FractionalAvgPool" in
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
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
  let op = Op.create context "FractionalAvgPoolGrad" in
  Op.add_input op orig_input_tensor_shape;
  Op.add_input op out_backprop;
  Op.add_input op row_pooling_sequence;
  Op.add_input op col_pooling_sequence;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type out_backprop);
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
  let op = Op.create context "FractionalMaxPool" in
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
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
  let op = Op.create context "FractionalMaxPoolGrad" in
  Op.add_input op orig_input;
  Op.add_input op orig_output;
  Op.add_input op out_backprop;
  Op.add_input op row_pooling_sequence;
  Op.add_input op col_pooling_sequence;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type orig_input);
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
  let op = Op.create context "FusedBatchNorm" in
  Op.add_input op x;
  Op.add_input op scale;
  Op.add_input op offset;
  Op.add_input op mean;
  Op.add_input op variance;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
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
  let op = Op.create context "FusedBatchNormGrad" in
  Op.add_input op y_backprop;
  Op.add_input op x;
  Op.add_input op scale;
  Op.add_input op reserve_space_1;
  Op.add_input op reserve_space_2;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y_backprop);
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
  let op = Op.create context "FusedBatchNormGradV2" in
  Op.add_input op y_backprop;
  Op.add_input op x;
  Op.add_input op scale;
  Op.add_input op reserve_space_1;
  Op.add_input op reserve_space_2;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y_backprop);
  Op.set_attr_data_type op "U" (Op.tensor_handle_data_type reserve_space_1);
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
  let op = Op.create context "FusedBatchNormV2" in
  Op.add_input op x;
  Op.add_input op scale;
  Op.add_input op offset;
  Op.add_input op mean;
  Op.add_input op variance;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "U" (Op.tensor_handle_data_type scale);
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
  let op = Op.create context "FusedPadConv2D" in
  Op.add_input op input;
  Op.add_input op paddings;
  Op.add_input op filter;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "FusedResizeAndPadConv2D" in
  Op.add_input op input;
  Op.add_input op size;
  Op.add_input op paddings;
  Op.add_input op filter;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "Gather" in
  Op.add_input op params;
  Op.add_input op indices;
  Op.set_attr_data_type op "Tparams" (Op.tensor_handle_data_type params);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute1 op

let gatherNd
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op = Op.create context "GatherNd" in
  Op.add_input op params;
  Op.add_input op indices;
  Op.set_attr_data_type op "Tparams" (Op.tensor_handle_data_type params);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let gatherV2
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (axis : ([< `int32 | `int64 ] as 'taxis) t)
  =
  let op = Op.create context "GatherV2" in
  Op.add_input op params;
  Op.add_input op indices;
  Op.add_input op axis;
  Op.set_attr_data_type op "Tparams" (Op.tensor_handle_data_type params);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_data_type op "Taxis" (Op.tensor_handle_data_type axis);
  Op.execute1 op

let generateVocabRemapping
    ~new_vocab_offset
    ~num_new_vocab
    (new_vocab_file : [ `string ] t)
    (old_vocab_file : [ `string ] t)
  =
  let op = Op.create context "GenerateVocabRemapping" in
  Op.add_input op new_vocab_file;
  Op.add_input op old_vocab_file;
  Op.set_attr_int op "new_vocab_offset" new_vocab_offset;
  Op.set_attr_int op "num_new_vocab" num_new_vocab;
  Op.execute2 op

let getSessionHandle
    (value : 't t)
  =
  let op = Op.create context "GetSessionHandle" in
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let getSessionHandleV2
    (value : 't t)
  =
  let op = Op.create context "GetSessionHandleV2" in
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let getSessionTensor
    ~type_dtype
    (handle : [ `string ] t)
  =
  let op = Op.create context "GetSessionTensor" in
  Op.add_input op handle;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let greater
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Greater" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let greaterEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "GreaterEqual" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let hSVToRGB
    (images : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "HSVToRGB" in
  Op.add_input op images;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.execute1 op

let hashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let op = Op.create context "HashTable" in
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
  let op = Op.create context "HashTableV2" in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.execute1 op

let histogramSummary
    (tag : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "HistogramSummary" in
  Op.add_input op tag;
  Op.add_input op values;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type values);
  Op.execute1 op

let iFFT
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "IFFT" in
  Op.add_input op input;
  Op.execute1 op

let iFFT2D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "IFFT2D" in
  Op.add_input op input;
  Op.execute1 op

let iFFT3D
    (input : [ `complex64 ] t)
  =
  let op = Op.create context "IFFT3D" in
  Op.add_input op input;
  Op.execute1 op

let iRFFT
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let op = Op.create context "IRFFT" in
  Op.add_input op input;
  Op.add_input op fft_length;
  Op.execute1 op

let iRFFT2D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let op = Op.create context "IRFFT2D" in
  Op.add_input op input;
  Op.add_input op fft_length;
  Op.execute1 op

let iRFFT3D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let op = Op.create context "IRFFT3D" in
  Op.add_input op input;
  Op.add_input op fft_length;
  Op.execute1 op

let identity
    (input : 't t)
  =
  let op = Op.create context "Identity" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let identityReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "IdentityReader" in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let identityReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "IdentityReaderV2" in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let igamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Igamma" in
  Op.add_input op a;
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a);
  Op.execute1 op

let igammac
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Igammac" in
  Op.add_input op a;
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a);
  Op.execute1 op

let ignoreErrorsDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
  =
  let op = Op.create context "IgnoreErrorsDataset" in
  Op.add_input op input_dataset;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let imag
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let op = Op.create context "Imag" in
  Op.add_input op input;
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let imageSummary
    ?(max_images=3)
    (tag : [ `string ] t)
    (tensor : ([< `uInt8 | `float | `double ] as 't) t)
  =
  let op = Op.create context "ImageSummary" in
  Op.add_input op tag;
  Op.add_input op tensor;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.set_attr_int op "max_images" max_images;
  Op.execute1 op

let immutableConst
    ~type_dtype
    ~shape
    ~memory_region_name
    ()
  =
  let op = Op.create context "ImmutableConst" in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "memory_region_name" memory_region_name;
  Op.execute1 op

let inTopK
    ~k
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "InTopK" in
  Op.add_input op predictions;
  Op.add_input op targets;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type targets);
  Op.set_attr_int op "k" k;
  Op.execute1 op

let inTopKV2
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
    (k : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "InTopKV2" in
  Op.add_input op predictions;
  Op.add_input op targets;
  Op.add_input op k;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type targets);
  Op.execute1 op

let initializeTable
    (table_handle : [ `string ] t)
    (keys : 'tkey t)
    (values : 'tval t)
  =
  let op = Op.create context "InitializeTable" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op values;
  Op.set_attr_data_type op "Tkey" (Op.tensor_handle_data_type keys);
  Op.set_attr_data_type op "Tval" (Op.tensor_handle_data_type values);
  Op.execute0 op

let initializeTableFromTextFile
    ~key_index
    ~value_index
    ?(vocab_size=(-1))
    ?(delimiter="	")
    (table_handle : [ `string ] t)
    (filename : [ `string ] t)
  =
  let op = Op.create context "InitializeTableFromTextFile" in
  Op.add_input op table_handle;
  Op.add_input op filename;
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
  let op = Op.create context "InitializeTableFromTextFileV2" in
  Op.add_input op table_handle;
  Op.add_input op filename;
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
  let op = Op.create context "InitializeTableV2" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op values;
  Op.set_attr_data_type op "Tkey" (Op.tensor_handle_data_type keys);
  Op.set_attr_data_type op "Tval" (Op.tensor_handle_data_type values);
  Op.execute0 op

let inv
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Inv" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let invGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "InvGrad" in
  Op.add_input op y;
  Op.add_input op dy;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y);
  Op.execute1 op

let invert
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Invert" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let invertPermutation
    (x : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "InvertPermutation" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let isFinite
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "IsFinite" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let isInf
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "IsInf" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let isNan
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "IsNan" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let isVariableInitialized
    (ref : 'dtype t)
  =
  let op = Op.create context "IsVariableInitialized" in
  Op.add_input op ref;
  Op.set_attr_data_type op "dtype" (Op.tensor_handle_data_type ref);
  Op.execute1 op

let iterator
    ~shared_name
    ~container
    ~output_types
    ~output_shapes
    ()
  =
  let op = Op.create context "Iterator" in
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
  let op = Op.create context "IteratorFromStringHandle" in
  Op.add_input op string_handle;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let iteratorToStringHandle
    (resource_handle : [ `resource ] t)
  =
  let op = Op.create context "IteratorToStringHandle" in
  Op.add_input op resource_handle;
  Op.execute1 op

let l2Loss
    (t : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "L2Loss" in
  Op.add_input op t;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type t);
  Op.execute1 op

let lMDBReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "LMDBReader" in
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
  let op = Op.create context "LRN" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "LRNGrad" in
  Op.add_input op input_grads;
  Op.add_input op input_image;
  Op.add_input op output_image;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input_grads);
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
  let op = Op.create context "LearnedUnigramCandidateSampler" in
  Op.add_input op true_classes;
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
  let op = Op.create context "Less" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let lessEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "LessEqual" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let lgamma
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Lgamma" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let linSpace
    (start : ([< `float | `double ] as 't) t)
    (stop : ([< `float | `double ] as 't) t)
    (num : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "LinSpace" in
  Op.add_input op start;
  Op.add_input op stop;
  Op.add_input op num;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type start);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type num);
  Op.execute1 op

let listDiff
    ~type_out_idx
    (x : 't t)
    (y : 't t)
  =
  let op = Op.create context "ListDiff" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
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
  let op = Op.create context "LoadAndRemapMatrix" in
  Op.add_input op ckpt_path;
  Op.add_input op old_tensor_name;
  Op.add_input op row_remapping;
  Op.add_input op col_remapping;
  Op.add_input op initializing_values;
  Op.set_attr_int op "num_rows" num_rows;
  Op.set_attr_int op "num_cols" num_cols;
  Op.set_attr_int op "max_rows_in_memory" max_rows_in_memory;
  Op.execute1 op

let log
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Log" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let log1p
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Log1p" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let logMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "LogMatrixDeterminant" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute2 op

let logSoftmax
    (logits : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "LogSoftmax" in
  Op.add_input op logits;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type logits);
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
  let op = Op.create context "LogUniformCandidateSampler" in
  Op.add_input op true_classes;
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
  let op = Op.create context "LogicalAnd" in
  Op.add_input op x;
  Op.add_input op y;
  Op.execute1 op

let logicalNot
    (x : [ `bool ] t)
  =
  let op = Op.create context "LogicalNot" in
  Op.add_input op x;
  Op.execute1 op

let logicalOr
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  let op = Op.create context "LogicalOr" in
  Op.add_input op x;
  Op.add_input op y;
  Op.execute1 op

let lookupTableExport
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `string ] t)
  =
  let op = Op.create context "LookupTableExport" in
  Op.add_input op table_handle;
  Op.set_attr_data_type op "Tkeys" Operation.Type.(to_data_type (P type_tkeys));
  Op.set_attr_data_type op "Tvalues" Operation.Type.(to_data_type (P type_tvalues));
  Op.execute2 op

let lookupTableExportV2
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `resource ] t)
  =
  let op = Op.create context "LookupTableExportV2" in
  Op.add_input op table_handle;
  Op.set_attr_data_type op "Tkeys" Operation.Type.(to_data_type (P type_tkeys));
  Op.set_attr_data_type op "Tvalues" Operation.Type.(to_data_type (P type_tvalues));
  Op.execute2 op

let lookupTableFind
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  let op = Op.create context "LookupTableFind" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op default_value;
  Op.set_attr_data_type op "Tout" (Op.tensor_handle_data_type default_value);
  Op.set_attr_data_type op "Tin" (Op.tensor_handle_data_type keys);
  Op.execute1 op

let lookupTableFindV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  let op = Op.create context "LookupTableFindV2" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op default_value;
  Op.set_attr_data_type op "Tout" (Op.tensor_handle_data_type default_value);
  Op.set_attr_data_type op "Tin" (Op.tensor_handle_data_type keys);
  Op.execute1 op

let lookupTableImport
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op = Op.create context "LookupTableImport" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op values;
  Op.set_attr_data_type op "Tin" (Op.tensor_handle_data_type keys);
  Op.set_attr_data_type op "Tout" (Op.tensor_handle_data_type values);
  Op.execute0 op

let lookupTableImportV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op = Op.create context "LookupTableImportV2" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op values;
  Op.set_attr_data_type op "Tin" (Op.tensor_handle_data_type keys);
  Op.set_attr_data_type op "Tout" (Op.tensor_handle_data_type values);
  Op.execute0 op

let lookupTableInsert
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op = Op.create context "LookupTableInsert" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op values;
  Op.set_attr_data_type op "Tin" (Op.tensor_handle_data_type keys);
  Op.set_attr_data_type op "Tout" (Op.tensor_handle_data_type values);
  Op.execute0 op

let lookupTableInsertV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let op = Op.create context "LookupTableInsertV2" in
  Op.add_input op table_handle;
  Op.add_input op keys;
  Op.add_input op values;
  Op.set_attr_data_type op "Tin" (Op.tensor_handle_data_type keys);
  Op.set_attr_data_type op "Tout" (Op.tensor_handle_data_type values);
  Op.execute0 op

let lookupTableSize
    (table_handle : [ `string ] t)
  =
  let op = Op.create context "LookupTableSize" in
  Op.add_input op table_handle;
  Op.execute1 op

let lookupTableSizeV2
    (table_handle : [ `resource ] t)
  =
  let op = Op.create context "LookupTableSizeV2" in
  Op.add_input op table_handle;
  Op.execute1 op

let loopCond
    (input : [ `bool ] t)
  =
  let op = Op.create context "LoopCond" in
  Op.add_input op input;
  Op.execute1 op

let makeIterator
    (dataset : [ `variant ] t)
    (iterator : [ `resource ] t)
  =
  let op = Op.create context "MakeIterator" in
  Op.add_input op dataset;
  Op.add_input op iterator;
  Op.execute0 op

let mapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "MapClear" in
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
  let op = Op.create context "MapIncompleteSize" in
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
  let op = Op.create context "MapSize" in
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
  let op = Op.create context "MatMul" in
  Op.add_input op a;
  Op.add_input op b;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a);
  Op.set_attr_bool op "transpose_a" transpose_a;
  Op.set_attr_bool op "transpose_b" transpose_b;
  Op.execute1 op

let matchingFiles
    (pattern : [ `string ] t)
  =
  let op = Op.create context "MatchingFiles" in
  Op.add_input op pattern;
  Op.execute1 op

let matrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  let op = Op.create context "MatrixBandPart" in
  Op.add_input op input;
  Op.add_input op num_lower;
  Op.add_input op num_upper;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let matrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "MatrixDeterminant" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let matrixDiag
    (diagonal : 't t)
  =
  let op = Op.create context "MatrixDiag" in
  Op.add_input op diagonal;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type diagonal);
  Op.execute1 op

let matrixDiagPart
    (input : 't t)
  =
  let op = Op.create context "MatrixDiagPart" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let matrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "MatrixInverse" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let matrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  let op = Op.create context "MatrixSetDiag" in
  Op.add_input op input;
  Op.add_input op diagonal;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let matrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "MatrixSolve" in
  Op.add_input op matrix;
  Op.add_input op rhs;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type matrix);
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let matrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  let op = Op.create context "MatrixSolveLs" in
  Op.add_input op matrix;
  Op.add_input op rhs;
  Op.add_input op l2_regularizer;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type matrix);
  Op.set_attr_bool op "fast" fast;
  Op.execute1 op

let matrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "MatrixTriangularSolve" in
  Op.add_input op matrix;
  Op.add_input op rhs;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type matrix);
  Op.set_attr_bool op "lower" lower;
  Op.set_attr_bool op "adjoint" adjoint;
  Op.execute1 op

let max
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "Max" in
  Op.add_input op input;
  Op.add_input op reduction_indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let maxPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "MaxPool" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "MaxPool3D" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "MaxPool3DGrad" in
  Op.add_input op orig_input;
  Op.add_input op orig_output;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
  Op.set_attr_data_type op "TInput" (Op.tensor_handle_data_type orig_input);
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
  let op = Op.create context "MaxPool3DGradGrad" in
  Op.add_input op orig_input;
  Op.add_input op orig_output;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type orig_input);
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
  let op = Op.create context "MaxPoolGrad" in
  Op.add_input op orig_input;
  Op.add_input op orig_output;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type orig_input);
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
  let op = Op.create context "MaxPoolGradGrad" in
  Op.add_input op orig_input;
  Op.add_input op orig_output;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type orig_input);
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
  let op = Op.create context "MaxPoolGradGradV2" in
  Op.add_input op orig_input;
  Op.add_input op orig_output;
  Op.add_input op grad;
  Op.add_input op ksize;
  Op.add_input op strides;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type orig_input);
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
  let op = Op.create context "MaxPoolGradGradWithArgmax" in
  Op.add_input op input;
  Op.add_input op grad;
  Op.add_input op argmax;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Targmax" (Op.tensor_handle_data_type argmax);
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
  let op = Op.create context "MaxPoolGradV2" in
  Op.add_input op orig_input;
  Op.add_input op orig_output;
  Op.add_input op grad;
  Op.add_input op ksize;
  Op.add_input op strides;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type orig_input);
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
  let op = Op.create context "MaxPoolGradWithArgmax" in
  Op.add_input op input;
  Op.add_input op grad;
  Op.add_input op argmax;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Targmax" (Op.tensor_handle_data_type argmax);
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
  let op = Op.create context "MaxPoolV2" in
  Op.add_input op input;
  Op.add_input op ksize;
  Op.add_input op strides;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "MaxPoolWithArgmax" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Targmax" Operation.Type.(to_data_type (P type_targmax));
  Op.set_attr_int_list op "ksize" ksize;
  Op.set_attr_int_list op "strides" strides;
  Op.set_attr_string op "padding" padding;
  Op.execute2 op

let maximum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "Maximum" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let mean
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "Mean" in
  Op.add_input op input;
  Op.add_input op reduction_indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let merge
    (inputs__ : 't t list)
  =
  let op = Op.create context "Merge" in
  List.iter inputs__ ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute2 op

let mergeSummary
    (inputs__ : [ `string ] t list)
  =
  let op = Op.create context "MergeSummary" in
  List.iter inputs__ ~f:(Op.add_input op);
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute1 op

let mergeV2Checkpoints
    ?(delete_old_dirs=true)
    (checkpoint_prefixes : [ `string ] t)
    (destination_prefix : [ `string ] t)
  =
  let op = Op.create context "MergeV2Checkpoints" in
  Op.add_input op checkpoint_prefixes;
  Op.add_input op destination_prefix;
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
  let op = Op.create context "Mfcc" in
  Op.add_input op spectrogram;
  Op.add_input op sample_rate;
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
  let op = Op.create context "Min" in
  Op.add_input op input;
  Op.add_input op reduction_indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let minimum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "Minimum" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let mirrorPad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op = Op.create context "MirrorPad" in
  Op.add_input op input;
  Op.add_input op paddings;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.tensor_handle_data_type paddings);
  Op.set_attr_string op "mode" mode;
  Op.execute1 op

let mirrorPadGrad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op = Op.create context "MirrorPadGrad" in
  Op.add_input op input;
  Op.add_input op paddings;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.tensor_handle_data_type paddings);
  Op.set_attr_string op "mode" mode;
  Op.execute1 op

let mod_
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op = Op.create context "Mod" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let mul
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Mul" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let multinomial
    ?(seed=0)
    ?(seed2=0)
    (logits : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (num_samples : [ `int32 ] t)
  =
  let op = Op.create context "Multinomial" in
  Op.add_input op logits;
  Op.add_input op num_samples;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type logits);
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
  let op = Op.create context "MutableDenseHashTable" in
  Op.add_input op empty_key;
  Op.set_attr_data_type op "key_dtype" (Op.tensor_handle_data_type empty_key);
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
  let op = Op.create context "MutableDenseHashTableV2" in
  Op.add_input op empty_key;
  Op.set_attr_data_type op "key_dtype" (Op.tensor_handle_data_type empty_key);
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
  let op = Op.create context "MutableHashTable" in
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
  let op = Op.create context "MutableHashTableOfTensors" in
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
  let op = Op.create context "MutableHashTableOfTensorsV2" in
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
  let op = Op.create context "MutableHashTableV2" in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.set_attr_bool op "use_node_name_sharing" use_node_name_sharing;
  Op.execute1 op

let neg
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Neg" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
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
  let op = Op.create context "NegTrain" in
  Op.add_input op w_in;
  Op.add_input op w_out;
  Op.add_input op examples;
  Op.add_input op labels;
  Op.add_input op lr;
  Op.set_attr_int_list op "vocab_count" vocab_count;
  Op.set_attr_int op "num_negative_samples" num_negative_samples;
  Op.execute0 op

let nextIteration
    (data : 't t)
  =
  let op = Op.create context "NextIteration" in
  Op.add_input op data;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.execute1 op

let noOp
    ()
  =
  let op = Op.create context "NoOp" in
  Op.execute0 op

let nonMaxSuppression
    ?(iou_threshold=0.5)
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
  =
  let op = Op.create context "NonMaxSuppression" in
  Op.add_input op boxes;
  Op.add_input op scores;
  Op.add_input op max_output_size;
  Op.set_attr_float op "iou_threshold" iou_threshold;
  Op.execute1 op

let nonMaxSuppressionV2
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
    (iou_threshold : [ `float ] t)
  =
  let op = Op.create context "NonMaxSuppressionV2" in
  Op.add_input op boxes;
  Op.add_input op scores;
  Op.add_input op max_output_size;
  Op.add_input op iou_threshold;
  Op.execute1 op

let notEqual
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  let op = Op.create context "NotEqual" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let oneHot
    ?(axis=(-1))
    (indices : ([< `uInt8 | `int32 | `int64 ] as 'tI) t)
    (depth : [ `int32 ] t)
    (on_value : 't t)
    (off_value : 't t)
  =
  let op = Op.create context "OneHot" in
  Op.add_input op indices;
  Op.add_input op depth;
  Op.add_input op on_value;
  Op.add_input op off_value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type on_value);
  Op.set_attr_data_type op "TI" (Op.tensor_handle_data_type indices);
  Op.set_attr_int op "axis" axis;
  Op.execute1 op

let oneShotIterator
    ~output_types
    ~output_shapes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "OneShotIterator" in
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let onesLike
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "OnesLike" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let orderedMapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "OrderedMapClear" in
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
  let op = Op.create context "OrderedMapIncompleteSize" in
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
  let op = Op.create context "OrderedMapSize" in
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
  let op = Op.create context "Pack" in
  List.iter values ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn values));
  Op.set_attr_int op "N" (List.length values);
  Op.set_attr_int op "axis" axis;
  Op.execute1 op

let pad
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op = Op.create context "Pad" in
  Op.add_input op input;
  Op.add_input op paddings;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.tensor_handle_data_type paddings);
  Op.execute1 op

let padV2
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
    (constant_values : 't t)
  =
  let op = Op.create context "PadV2" in
  Op.add_input op input;
  Op.add_input op paddings;
  Op.add_input op constant_values;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.tensor_handle_data_type paddings);
  Op.execute1 op

let paddingFIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "PaddingFIFOQueue" in
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
  let op = Op.create context "PaddingFIFOQueueV2" in
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
  let op = Op.create context "ParallelConcat" in
  List.iter values ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn values));
  Op.set_attr_int op "N" (List.length values);
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let parallelDynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  let op = Op.create context "ParallelDynamicStitch" in
  List.iter indices ~f:(Op.add_input op);
  List.iter data ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn data));
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
  let op = Op.create context "ParameterizedTruncatedNormal" in
  Op.add_input op shape;
  Op.add_input op means;
  Op.add_input op stdevs;
  Op.add_input op minvals;
  Op.add_input op maxvals;
  Op.set_attr_data_type op "dtype" (Op.tensor_handle_data_type means);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let parseTensor
    ~type_out_type
    (serialized : [ `string ] t)
  =
  let op = Op.create context "ParseTensor" in
  Op.add_input op serialized;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.execute1 op

let placeholder
    ~type_dtype
    ?(shape=[])
    ()
  =
  let op = Op.create context "Placeholder" in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let placeholderV2
    ~type_dtype
    ~shape
    ()
  =
  let op = Op.create context "PlaceholderV2" in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let placeholderWithDefault
    ~shape
    (input : 'dtype t)
  =
  let op = Op.create context "PlaceholderWithDefault" in
  Op.add_input op input;
  Op.set_attr_data_type op "dtype" (Op.tensor_handle_data_type input);
  Op.set_attr_shape op "shape" shape;
  Op.execute1 op

let polygamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Polygamma" in
  Op.add_input op a;
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a);
  Op.execute1 op

let populationCount
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "PopulationCount" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let pow
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Pow" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let prefetchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op = Op.create context "PrefetchDataset" in
  Op.add_input op input_dataset;
  Op.add_input op buffer_size;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let preventGradient
    ?(message="")
    (input : 't t)
  =
  let op = Op.create context "PreventGradient" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "PriorityQueue" in
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
  let op = Op.create context "PriorityQueueV2" in
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
  let op = Op.create context "Prod" in
  Op.add_input op input;
  Op.add_input op reduction_indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let qr
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "Qr" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "QuantizeAndDequantize" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "QuantizeAndDequantizeV2" in
  Op.add_input op input;
  Op.add_input op input_min;
  Op.add_input op input_max;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "QuantizeAndDequantizeV3" in
  Op.add_input op input;
  Op.add_input op input_min;
  Op.add_input op input_max;
  Op.add_input op num_bits;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "signed_input" signed_input;
  Op.set_attr_bool op "range_given" range_given;
  Op.execute1 op

let quantizeDownAndShrinkRange
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let op = Op.create context "QuantizeDownAndShrinkRange" in
  Op.add_input op input;
  Op.add_input op input_min;
  Op.add_input op input_max;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type input);
  Op.execute3 op

let quantizeV2
    ~type_t
    ?(mode="MIN_COMBINED")
    (input : [ `float ] t)
    (min_range : [ `float ] t)
    (max_range : [ `float ] t)
  =
  let op = Op.create context "QuantizeV2" in
  Op.add_input op input;
  Op.add_input op min_range;
  Op.add_input op max_range;
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
  let op = Op.create context "QuantizedAdd" in
  Op.add_input op x;
  Op.add_input op y;
  Op.add_input op min_x;
  Op.add_input op max_x;
  Op.add_input op min_y;
  Op.add_input op max_y;
  Op.set_attr_data_type op "Toutput" Operation.Type.(to_data_type (P type_toutput));
  Op.set_attr_data_type op "T1" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "T2" (Op.tensor_handle_data_type y);
  Op.execute3 op

let quantizedAvgPool
    ~ksize
    ~strides
    ~padding
    (input : 't t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
  =
  let op = Op.create context "QuantizedAvgPool" in
  Op.add_input op input;
  Op.add_input op min_input;
  Op.add_input op max_input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "QuantizedBatchNormWithGlobalNormalization" in
  Op.add_input op t;
  Op.add_input op t_min;
  Op.add_input op t_max;
  Op.add_input op m;
  Op.add_input op m_min;
  Op.add_input op m_max;
  Op.add_input op v;
  Op.add_input op v_min;
  Op.add_input op v_max;
  Op.add_input op beta;
  Op.add_input op beta_min;
  Op.add_input op beta_max;
  Op.add_input op gamma;
  Op.add_input op gamma_min;
  Op.add_input op gamma_max;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type t);
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
  let op = Op.create context "QuantizedBiasAdd" in
  Op.add_input op input;
  Op.add_input op bias;
  Op.add_input op min_input;
  Op.add_input op max_input;
  Op.add_input op min_bias;
  Op.add_input op max_bias;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T1" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "T2" (Op.tensor_handle_data_type bias);
  Op.execute3 op

let quantizedConcat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
    (input_mins : [ `float ] t list)
    (input_maxes : [ `float ] t list)
  =
  let op = Op.create context "QuantizedConcat" in
  Op.add_input op concat_dim;
  List.iter values ~f:(Op.add_input op);
  List.iter input_mins ~f:(Op.add_input op);
  List.iter input_maxes ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn values));
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
  let op = Op.create context "QuantizedConv2D" in
  Op.add_input op input;
  Op.add_input op filter;
  Op.add_input op min_input;
  Op.add_input op max_input;
  Op.add_input op min_filter;
  Op.add_input op max_filter;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tfilter" (Op.tensor_handle_data_type filter);
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
  let op = Op.create context "QuantizedInstanceNorm" in
  Op.add_input op x;
  Op.add_input op x_min;
  Op.add_input op x_max;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
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
  let op = Op.create context "QuantizedMatMul" in
  Op.add_input op a;
  Op.add_input op b;
  Op.add_input op min_a;
  Op.add_input op max_a;
  Op.add_input op min_b;
  Op.add_input op max_b;
  Op.set_attr_data_type op "Toutput" Operation.Type.(to_data_type (P type_toutput));
  Op.set_attr_data_type op "T1" (Op.tensor_handle_data_type a);
  Op.set_attr_data_type op "T2" (Op.tensor_handle_data_type b);
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
  let op = Op.create context "QuantizedMaxPool" in
  Op.add_input op input;
  Op.add_input op min_input;
  Op.add_input op max_input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "QuantizedMul" in
  Op.add_input op x;
  Op.add_input op y;
  Op.add_input op min_x;
  Op.add_input op max_x;
  Op.add_input op min_y;
  Op.add_input op max_y;
  Op.set_attr_data_type op "Toutput" Operation.Type.(to_data_type (P type_toutput));
  Op.set_attr_data_type op "T1" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "T2" (Op.tensor_handle_data_type y);
  Op.execute3 op

let quantizedRelu
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let op = Op.create context "QuantizedRelu" in
  Op.add_input op features;
  Op.add_input op min_features;
  Op.add_input op max_features;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type features);
  Op.execute3 op

let quantizedRelu6
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let op = Op.create context "QuantizedRelu6" in
  Op.add_input op features;
  Op.add_input op min_features;
  Op.add_input op max_features;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type features);
  Op.execute3 op

let quantizedReluX
    ~type_out_type
    (features : 'tinput t)
    (max_value : [ `float ] t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let op = Op.create context "QuantizedReluX" in
  Op.add_input op features;
  Op.add_input op max_value;
  Op.add_input op min_features;
  Op.add_input op max_features;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type features);
  Op.execute3 op

let quantizedReshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let op = Op.create context "QuantizedReshape" in
  Op.add_input op tensor;
  Op.add_input op shape;
  Op.add_input op input_min;
  Op.add_input op input_max;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.set_attr_data_type op "Tshape" (Op.tensor_handle_data_type shape);
  Op.execute3 op

let quantizedResizeBilinear
    ?(align_corners=false)
    (images : ([< `float ] as 't) t)
    (size : [ `int32 ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let op = Op.create context "QuantizedResizeBilinear" in
  Op.add_input op images;
  Op.add_input op size;
  Op.add_input op min;
  Op.add_input op max;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute3 op

let queueClose
    ?(cancel_pending_enqueues=false)
    (handle : [ `string ] t)
  =
  let op = Op.create context "QueueClose" in
  Op.add_input op handle;
  Op.set_attr_bool op "cancel_pending_enqueues" cancel_pending_enqueues;
  Op.execute0 op

let queueCloseV2
    ?(cancel_pending_enqueues=false)
    (handle : [ `resource ] t)
  =
  let op = Op.create context "QueueCloseV2" in
  Op.add_input op handle;
  Op.set_attr_bool op "cancel_pending_enqueues" cancel_pending_enqueues;
  Op.execute0 op

let queueIsClosed
    (handle : [ `string ] t)
  =
  let op = Op.create context "QueueIsClosed" in
  Op.add_input op handle;
  Op.execute1 op

let queueIsClosedV2
    (handle : [ `resource ] t)
  =
  let op = Op.create context "QueueIsClosedV2" in
  Op.add_input op handle;
  Op.execute1 op

let queueSize
    (handle : [ `string ] t)
  =
  let op = Op.create context "QueueSize" in
  Op.add_input op handle;
  Op.execute1 op

let queueSizeV2
    (handle : [ `resource ] t)
  =
  let op = Op.create context "QueueSizeV2" in
  Op.add_input op handle;
  Op.execute1 op

let rFFT
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let op = Op.create context "RFFT" in
  Op.add_input op input;
  Op.add_input op fft_length;
  Op.execute1 op

let rFFT2D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let op = Op.create context "RFFT2D" in
  Op.add_input op input;
  Op.add_input op fft_length;
  Op.execute1 op

let rFFT3D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let op = Op.create context "RFFT3D" in
  Op.add_input op input;
  Op.add_input op fft_length;
  Op.execute1 op

let rGBToHSV
    (images : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "RGBToHSV" in
  Op.add_input op images;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.execute1 op

let randomCrop
    ?(seed=0)
    ?(seed2=0)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int64 ] t)
  =
  let op = Op.create context "RandomCrop" in
  Op.add_input op image;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type image);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomGamma
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (alpha : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "RandomGamma" in
  Op.add_input op shape;
  Op.add_input op alpha;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type alpha);
  Op.set_attr_data_type op "S" (Op.tensor_handle_data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomPoisson
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (rate : ([< `float | `double ] as 'dtype) t)
  =
  let op = Op.create context "RandomPoisson" in
  Op.add_input op shape;
  Op.add_input op rate;
  Op.set_attr_data_type op "dtype" (Op.tensor_handle_data_type rate);
  Op.set_attr_data_type op "S" (Op.tensor_handle_data_type shape);
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
  let op = Op.create context "RandomPoissonV2" in
  Op.add_input op shape;
  Op.add_input op rate;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "S" (Op.tensor_handle_data_type shape);
  Op.set_attr_data_type op "R" (Op.tensor_handle_data_type rate);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomShuffle
    ?(seed=0)
    ?(seed2=0)
    (value : 't t)
  =
  let op = Op.create context "RandomShuffle" in
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
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
  let op = Op.create context "RandomShuffleQueue" in
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
  let op = Op.create context "RandomShuffleQueueV2" in
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
  let op = Op.create context "RandomStandardNormal" in
  Op.add_input op shape;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let randomUniform
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "RandomUniform" in
  Op.add_input op shape;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
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
  let op = Op.create context "RandomUniformInt" in
  Op.add_input op shape;
  Op.add_input op minval;
  Op.add_input op maxval;
  Op.set_attr_data_type op "Tout" (Op.tensor_handle_data_type minval);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
  Op.set_attr_int op "seed" seed;
  Op.set_attr_int op "seed2" seed2;
  Op.execute1 op

let range
    (start : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (limit : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (delta : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "Range" in
  Op.add_input op start;
  Op.add_input op limit;
  Op.add_input op delta;
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type start);
  Op.execute1 op

let rangeDataset
    ~output_types
    ~output_shapes
    (start : [ `int64 ] t)
    (stop : [ `int64 ] t)
    (step : [ `int64 ] t)
  =
  let op = Op.create context "RangeDataset" in
  Op.add_input op start;
  Op.add_input op stop;
  Op.add_input op step;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let rank
    (input : 't t)
  =
  let op = Op.create context "Rank" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let readFile
    (filename : [ `string ] t)
  =
  let op = Op.create context "ReadFile" in
  Op.add_input op filename;
  Op.execute1 op

let readerNumRecordsProduced
    (reader_handle : [ `string ] t)
  =
  let op = Op.create context "ReaderNumRecordsProduced" in
  Op.add_input op reader_handle;
  Op.execute1 op

let readerNumRecordsProducedV2
    (reader_handle : [ `resource ] t)
  =
  let op = Op.create context "ReaderNumRecordsProducedV2" in
  Op.add_input op reader_handle;
  Op.execute1 op

let readerNumWorkUnitsCompleted
    (reader_handle : [ `string ] t)
  =
  let op = Op.create context "ReaderNumWorkUnitsCompleted" in
  Op.add_input op reader_handle;
  Op.execute1 op

let readerNumWorkUnitsCompletedV2
    (reader_handle : [ `resource ] t)
  =
  let op = Op.create context "ReaderNumWorkUnitsCompletedV2" in
  Op.add_input op reader_handle;
  Op.execute1 op

let readerRead
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
  =
  let op = Op.create context "ReaderRead" in
  Op.add_input op reader_handle;
  Op.add_input op queue_handle;
  Op.execute2 op

let readerReadUpTo
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
    (num_records : [ `int64 ] t)
  =
  let op = Op.create context "ReaderReadUpTo" in
  Op.add_input op reader_handle;
  Op.add_input op queue_handle;
  Op.add_input op num_records;
  Op.execute2 op

let readerReadUpToV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
    (num_records : [ `int64 ] t)
  =
  let op = Op.create context "ReaderReadUpToV2" in
  Op.add_input op reader_handle;
  Op.add_input op queue_handle;
  Op.add_input op num_records;
  Op.execute2 op

let readerReadV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
  =
  let op = Op.create context "ReaderReadV2" in
  Op.add_input op reader_handle;
  Op.add_input op queue_handle;
  Op.execute2 op

let readerReset
    (reader_handle : [ `string ] t)
  =
  let op = Op.create context "ReaderReset" in
  Op.add_input op reader_handle;
  Op.execute0 op

let readerResetV2
    (reader_handle : [ `resource ] t)
  =
  let op = Op.create context "ReaderResetV2" in
  Op.add_input op reader_handle;
  Op.execute0 op

let readerRestoreState
    (reader_handle : [ `string ] t)
    (state : [ `string ] t)
  =
  let op = Op.create context "ReaderRestoreState" in
  Op.add_input op reader_handle;
  Op.add_input op state;
  Op.execute0 op

let readerRestoreStateV2
    (reader_handle : [ `resource ] t)
    (state : [ `string ] t)
  =
  let op = Op.create context "ReaderRestoreStateV2" in
  Op.add_input op reader_handle;
  Op.add_input op state;
  Op.execute0 op

let readerSerializeState
    (reader_handle : [ `string ] t)
  =
  let op = Op.create context "ReaderSerializeState" in
  Op.add_input op reader_handle;
  Op.execute1 op

let readerSerializeStateV2
    (reader_handle : [ `resource ] t)
  =
  let op = Op.create context "ReaderSerializeStateV2" in
  Op.add_input op reader_handle;
  Op.execute1 op

let real
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let op = Op.create context "Real" in
  Op.add_input op input;
  Op.set_attr_data_type op "Tout" Operation.Type.(to_data_type (P type_tout));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let realDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "RealDiv" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let reciprocal
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Reciprocal" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let reciprocalGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "ReciprocalGrad" in
  Op.add_input op y;
  Op.add_input op dy;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y);
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
  let op = Op.create context "RecordInput" in
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
  let op = Op.create context "ReduceJoin" in
  Op.add_input op inputs__;
  Op.add_input op reduction_indices;
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.set_attr_string op "separator" separator;
  Op.execute1 op

let refEnter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  let op = Op.create context "RefEnter" in
  Op.add_input op data;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_string op "frame_name" frame_name;
  Op.set_attr_bool op "is_constant" is_constant;
  Op.set_attr_int op "parallel_iterations" parallel_iterations;
  Op.execute1 op

let refExit
    (data : 't t)
  =
  let op = Op.create context "RefExit" in
  Op.add_input op data;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.execute1 op

let refIdentity
    (input : 't t)
  =
  let op = Op.create context "RefIdentity" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let refMerge
    (inputs__ : 't t list)
  =
  let op = Op.create context "RefMerge" in
  List.iter inputs__ ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute2 op

let refNextIteration
    (data : 't t)
  =
  let op = Op.create context "RefNextIteration" in
  Op.add_input op data;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.execute1 op

let refSelect
    (index : [ `int32 ] t)
    (inputs__ : 't t list)
  =
  let op = Op.create context "RefSelect" in
  Op.add_input op index;
  List.iter inputs__ ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn inputs__));
  Op.set_attr_int op "N" (List.length inputs__);
  Op.execute1 op

let refSwitch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  let op = Op.create context "RefSwitch" in
  Op.add_input op data;
  Op.add_input op pred;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.execute2 op

let relu
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Relu" in
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.execute1 op

let relu6
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Relu6" in
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.execute1 op

let relu6Grad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Relu6Grad" in
  Op.add_input op gradients;
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type gradients);
  Op.execute1 op

let reluGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "ReluGrad" in
  Op.add_input op gradients;
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type gradients);
  Op.execute1 op

let repeatDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let op = Op.create context "RepeatDataset" in
  Op.add_input op input_dataset;
  Op.add_input op count;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let requantizationRange
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let op = Op.create context "RequantizationRange" in
  Op.add_input op input;
  Op.add_input op input_min;
  Op.add_input op input_max;
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type input);
  Op.execute2 op

let requantize
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
    (requested_output_min : [ `float ] t)
    (requested_output_max : [ `float ] t)
  =
  let op = Op.create context "Requantize" in
  Op.add_input op input;
  Op.add_input op input_min;
  Op.add_input op input_max;
  Op.add_input op requested_output_min;
  Op.add_input op requested_output_max;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "Tinput" (Op.tensor_handle_data_type input);
  Op.execute3 op

let reshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
  =
  let op = Op.create context "Reshape" in
  Op.add_input op tensor;
  Op.add_input op shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.set_attr_data_type op "Tshape" (Op.tensor_handle_data_type shape);
  Op.execute1 op

let resizeArea
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op = Op.create context "ResizeArea" in
  Op.add_input op images;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBicubic
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op = Op.create context "ResizeBicubic" in
  Op.add_input op images;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBicubicGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "ResizeBicubicGrad" in
  Op.add_input op grads;
  Op.add_input op original_image;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type original_image);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBilinear
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op = Op.create context "ResizeBilinear" in
  Op.add_input op images;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeBilinearGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "ResizeBilinearGrad" in
  Op.add_input op grads;
  Op.add_input op original_image;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type original_image);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeNearestNeighbor
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op = Op.create context "ResizeNearestNeighbor" in
  Op.add_input op images;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type images);
  Op.set_attr_bool op "align_corners" align_corners;
  Op.execute1 op

let resizeNearestNeighborGrad
    ?(align_corners=false)
    (grads : ([< `uInt8 | `int32 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let op = Op.create context "ResizeNearestNeighborGrad" in
  Op.add_input op grads;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grads);
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
  let op = Op.create context "ResourceApplyAdadelta" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op accum_update;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ResourceApplyAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
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
  let op = Op.create context "ResourceApplyAdagradDA" in
  Op.add_input op var;
  Op.add_input op gradient_accumulator;
  Op.add_input op gradient_squared_accumulator;
  Op.add_input op grad;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op global_step;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
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
  let op = Op.create context "ResourceApplyAdam" in
  Op.add_input op var;
  Op.add_input op m;
  Op.add_input op v;
  Op.add_input op beta1_power;
  Op.add_input op beta2_power;
  Op.add_input op lr;
  Op.add_input op beta1;
  Op.add_input op beta2;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type beta1_power);
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
  let op = Op.create context "ResourceApplyCenteredRMSProp" in
  Op.add_input op var;
  Op.add_input op mg;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
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
  let op = Op.create context "ResourceApplyFtrl" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
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
  let op = Op.create context "ResourceApplyFtrlV2" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op l2_shrinkage;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute0 op

let resourceApplyGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ResourceApplyGradientDescent" in
  Op.add_input op var;
  Op.add_input op alpha;
  Op.add_input op delta;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type alpha);
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
  let op = Op.create context "ResourceApplyMomentum" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.add_input op momentum;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
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
  let op = Op.create context "ResourceApplyProximalAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
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
  let op = Op.create context "ResourceApplyProximalGradientDescent" in
  Op.add_input op var;
  Op.add_input op alpha;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op delta;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type alpha);
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
  let op = Op.create context "ResourceApplyRMSProp" in
  Op.add_input op var;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
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
  let op = Op.create context "ResourceSparseApplyAdadelta" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op accum_update;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyAdagradDA" in
  Op.add_input op var;
  Op.add_input op gradient_accumulator;
  Op.add_input op gradient_squared_accumulator;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op global_step;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyCenteredRMSProp" in
  Op.add_input op var;
  Op.add_input op mg;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyFtrl" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyFtrlV2" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op l2_shrinkage;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyMomentum" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op momentum;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyProximalAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyProximalGradientDescent" in
  Op.add_input op var;
  Op.add_input op alpha;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type alpha);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceSparseApplyRMSProp" in
  Op.add_input op var;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type lr);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "ResourceStridedSliceAssign" in
  Op.add_input op ref;
  Op.add_input op begin__;
  Op.add_input op end__;
  Op.add_input op strides;
  Op.add_input op value;
  Op.set_attr_data_type op "Index" (Op.tensor_handle_data_type begin__);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
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
  let op = Op.create context "Restore" in
  Op.add_input op file_pattern;
  Op.add_input op tensor_name;
  Op.set_attr_data_type op "dt" Operation.Type.(to_data_type (P type_dt));
  Op.set_attr_int op "preferred_shard" preferred_shard;
  Op.execute1 op

let restoreIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  let op = Op.create context "RestoreIterator" in
  Op.add_input op iterator;
  Op.add_input op path;
  Op.execute0 op

let restoreSlice
    ~type_dt
    ?(preferred_shard=(-1))
    (file_pattern : [ `string ] t)
    (tensor_name : [ `string ] t)
    (shape_and_slice : [ `string ] t)
  =
  let op = Op.create context "RestoreSlice" in
  Op.add_input op file_pattern;
  Op.add_input op tensor_name;
  Op.add_input op shape_and_slice;
  Op.set_attr_data_type op "dt" Operation.Type.(to_data_type (P type_dt));
  Op.set_attr_int op "preferred_shard" preferred_shard;
  Op.execute1 op

let reverse
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (dims : [ `bool ] t)
  =
  let op = Op.create context "Reverse" in
  Op.add_input op tensor;
  Op.add_input op dims;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.execute1 op

let reverseSequence
    ~seq_dim
    ?(batch_dim=0)
    (input : 't t)
    (seq_lengths : ([< `int32 | `int64 ] as 'tlen) t)
  =
  let op = Op.create context "ReverseSequence" in
  Op.add_input op input;
  Op.add_input op seq_lengths;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tlen" (Op.tensor_handle_data_type seq_lengths);
  Op.set_attr_int op "seq_dim" seq_dim;
  Op.set_attr_int op "batch_dim" batch_dim;
  Op.execute1 op

let reverseV2
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "ReverseV2" in
  Op.add_input op tensor;
  Op.add_input op axis;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type axis);
  Op.execute1 op

let rint
    (x : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Rint" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let round
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Round" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let rsqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Rsqrt" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let rsqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "RsqrtGrad" in
  Op.add_input op y;
  Op.add_input op dy;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y);
  Op.execute1 op

let saveIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  let op = Op.create context "SaveIterator" in
  Op.add_input op iterator;
  Op.add_input op path;
  Op.execute0 op

let scalarSummary
    (tags : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "ScalarSummary" in
  Op.add_input op tags;
  Op.add_input op values;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type values);
  Op.execute1 op

let scatterAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ScatterAdd" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterDiv
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ScatterDiv" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterMul
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ScatterMul" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterNd
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
    (shape : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op = Op.create context "ScatterNd" in
  Op.add_input op indices;
  Op.add_input op updates;
  Op.add_input op shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type updates);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let scatterNdAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ScatterNdAdd" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterNdNonAliasingAdd
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ScatterNdNonAliasingAdd" in
  Op.add_input op input;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let scatterNdSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ScatterNdSub" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterNdUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  let op = Op.create context "ScatterNdUpdate" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "ScatterSub" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let scatterUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  let op = Op.create context "ScatterUpdate" in
  Op.add_input op ref;
  Op.add_input op indices;
  Op.add_input op updates;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sdcaFprint
    (input : [ `string ] t)
  =
  let op = Op.create context "SdcaFprint" in
  Op.add_input op input;
  Op.execute1 op

let sdcaShrinkL1
    ~l1
    ~l2
    (weights : [ `float ] t list)
  =
  let op = Op.create context "SdcaShrinkL1" in
  List.iter weights ~f:(Op.add_input op);
  Op.set_attr_int op "num_features" (List.length weights);
  Op.set_attr_float op "l1" l1;
  Op.set_attr_float op "l2" l2;
  Op.execute0 op

let segmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op = Op.create context "SegmentMax" in
  Op.add_input op data;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type segment_ids);
  Op.execute1 op

let segmentMean
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op = Op.create context "SegmentMean" in
  Op.add_input op data;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type segment_ids);
  Op.execute1 op

let segmentMin
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op = Op.create context "SegmentMin" in
  Op.add_input op data;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type segment_ids);
  Op.execute1 op

let segmentProd
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op = Op.create context "SegmentProd" in
  Op.add_input op data;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type segment_ids);
  Op.execute1 op

let segmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let op = Op.create context "SegmentSum" in
  Op.add_input op data;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type segment_ids);
  Op.execute1 op

let select
    (condition : [ `bool ] t)
    (t : 't t)
    (e : 't t)
  =
  let op = Op.create context "Select" in
  Op.add_input op condition;
  Op.add_input op t;
  Op.add_input op e;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type t);
  Op.execute1 op

let selfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  let op = Op.create context "SelfAdjointEig" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let selfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "SelfAdjointEigV2" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "compute_v" compute_v;
  Op.execute2 op

let selu
    (features : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Selu" in
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.execute1 op

let seluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "SeluGrad" in
  Op.add_input op gradients;
  Op.add_input op outputs;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type gradients);
  Op.execute1 op

let serializeManySparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op = Op.create context "SerializeManySparse" in
  Op.add_input op sparse_indices;
  Op.add_input op sparse_values;
  Op.add_input op sparse_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sparse_values);
  Op.execute1 op

let serializeSparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let op = Op.create context "SerializeSparse" in
  Op.add_input op sparse_indices;
  Op.add_input op sparse_values;
  Op.add_input op sparse_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sparse_values);
  Op.execute1 op

let serializeTensor
    (tensor : 't t)
  =
  let op = Op.create context "SerializeTensor" in
  Op.add_input op tensor;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.execute1 op

let setSize
    ?(validate_indices=true)
    (set_indices : [ `int64 ] t)
    (set_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set_shape : [ `int64 ] t)
  =
  let op = Op.create context "SetSize" in
  Op.add_input op set_indices;
  Op.add_input op set_values;
  Op.add_input op set_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type set_values);
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute1 op

let shape
    ~type_out_type
    (input : 't t)
  =
  let op = Op.create context "Shape" in
  Op.add_input op input;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let shapeN
    ~type_out_type
    (input : 't t list)
  =
  let op = Op.create context "ShapeN" in
  List.iter input ~f:(Op.add_input op);
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn input));
  Op.set_attr_int op "N" (List.length input);
  Op.execute op ~output_len:(List.length input)

let shardedFilename
    (basename : [ `string ] t)
    (shard : [ `int32 ] t)
    (num_shards : [ `int32 ] t)
  =
  let op = Op.create context "ShardedFilename" in
  Op.add_input op basename;
  Op.add_input op shard;
  Op.add_input op num_shards;
  Op.execute1 op

let shardedFilespec
    (basename : [ `string ] t)
    (num_shards : [ `int32 ] t)
  =
  let op = Op.create context "ShardedFilespec" in
  Op.add_input op basename;
  Op.add_input op num_shards;
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
  let op = Op.create context "ShuffleDataset" in
  Op.add_input op input_dataset;
  Op.add_input op buffer_size;
  Op.add_input op seed;
  Op.add_input op seed2;
  Op.set_attr_bool op "reshuffle_each_iteration" reshuffle_each_iteration;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let sigmoid
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Sigmoid" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let sigmoidGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "SigmoidGrad" in
  Op.add_input op y;
  Op.add_input op dy;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y);
  Op.execute1 op

let sign
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Sign" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let sin
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Sin" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let sinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Sinh" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let size
    ~type_out_type
    (input : 't t)
  =
  let op = Op.create context "Size" in
  Op.add_input op input;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let skipDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let op = Op.create context "SkipDataset" in
  Op.add_input op input_dataset;
  Op.add_input op count;
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
  let op = Op.create context "Skipgram" in
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
  let op = Op.create context "Slice" in
  Op.add_input op input;
  Op.add_input op begin__;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Index" (Op.tensor_handle_data_type begin__);
  Op.execute1 op

let softmax
    (logits : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Softmax" in
  Op.add_input op logits;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type logits);
  Op.execute1 op

let softmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "SoftmaxCrossEntropyWithLogits" in
  Op.add_input op features;
  Op.add_input op labels;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.execute2 op

let softplus
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Softplus" in
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.execute1 op

let softplusGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "SoftplusGrad" in
  Op.add_input op gradients;
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type gradients);
  Op.execute1 op

let softsign
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "Softsign" in
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.execute1 op

let softsignGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "SoftsignGrad" in
  Op.add_input op gradients;
  Op.add_input op features;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type gradients);
  Op.execute1 op

let spaceToBatch
    ~block_size
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op = Op.create context "SpaceToBatch" in
  Op.add_input op input;
  Op.add_input op paddings;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tpaddings" (Op.tensor_handle_data_type paddings);
  Op.set_attr_int op "block_size" block_size;
  Op.execute1 op

let spaceToBatchND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let op = Op.create context "SpaceToBatchND" in
  Op.add_input op input;
  Op.add_input op block_shape;
  Op.add_input op paddings;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tblock_shape" (Op.tensor_handle_data_type block_shape);
  Op.set_attr_data_type op "Tpaddings" (Op.tensor_handle_data_type paddings);
  Op.execute1 op

let spaceToDepth
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  let op = Op.create context "SpaceToDepth" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "SparseAccumulatorApplyGradient" in
  Op.add_input op handle;
  Op.add_input op local_step;
  Op.add_input op gradient_indices;
  Op.add_input op gradient_values;
  Op.add_input op gradient_shape;
  Op.set_attr_data_type op "dtype" (Op.tensor_handle_data_type gradient_values);
  Op.set_attr_bool op "has_known_shape" has_known_shape;
  Op.execute0 op

let sparseAccumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  let op = Op.create context "SparseAccumulatorTakeGradient" in
  Op.add_input op handle;
  Op.add_input op num_required;
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
  let op = Op.create context "SparseAdd" in
  Op.add_input op a_indices;
  Op.add_input op a_values;
  Op.add_input op a_shape;
  Op.add_input op b_indices;
  Op.add_input op b_values;
  Op.add_input op b_shape;
  Op.add_input op thresh;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a_values);
  Op.set_attr_data_type op "Treal" (Op.tensor_handle_data_type thresh);
  Op.execute3 op

let sparseAddGrad
    (backprop_val_grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_indices : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (sum_indices : [ `int64 ] t)
  =
  let op = Op.create context "SparseAddGrad" in
  Op.add_input op backprop_val_grad;
  Op.add_input op a_indices;
  Op.add_input op b_indices;
  Op.add_input op sum_indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type backprop_val_grad);
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
  let op = Op.create context "SparseApplyAdadelta" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op accum_update;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyAdagradDA" in
  Op.add_input op var;
  Op.add_input op gradient_accumulator;
  Op.add_input op gradient_squared_accumulator;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op global_step;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyCenteredRMSProp" in
  Op.add_input op var;
  Op.add_input op mg;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyFtrl" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyFtrlV2" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op linear;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op l2_shrinkage;
  Op.add_input op lr_power;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyMomentum" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op momentum;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyProximalAdagrad" in
  Op.add_input op var;
  Op.add_input op accum;
  Op.add_input op lr;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyProximalGradientDescent" in
  Op.add_input op var;
  Op.add_input op alpha;
  Op.add_input op l1;
  Op.add_input op l2;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
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
  let op = Op.create context "SparseApplyRMSProp" in
  Op.add_input op var;
  Op.add_input op ms;
  Op.add_input op mom;
  Op.add_input op lr;
  Op.add_input op rho;
  Op.add_input op momentum;
  Op.add_input op epsilon;
  Op.add_input op grad;
  Op.add_input op indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type var);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type indices);
  Op.set_attr_bool op "use_locking" use_locking;
  Op.execute1 op

let sparseConcat
    ~concat_dim
    (indices : [ `int64 ] t list)
    (values : 't t list)
    (shapes : [ `int64 ] t list)
  =
  let op = Op.create context "SparseConcat" in
  List.iter indices ~f:(Op.add_input op);
  List.iter values ~f:(Op.add_input op);
  List.iter shapes ~f:(Op.add_input op);
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type (List.hd_exn values));
  Op.set_attr_int op "concat_dim" concat_dim;
  Op.set_attr_int op "N" (List.length indices);
  Op.execute3 op

let sparseConditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "SparseConditionalAccumulator" in
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
  let op = Op.create context "SparseDenseCwiseAdd" in
  Op.add_input op sp_indices;
  Op.add_input op sp_values;
  Op.add_input op sp_shape;
  Op.add_input op dense;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sp_values);
  Op.execute1 op

let sparseDenseCwiseDiv
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "SparseDenseCwiseDiv" in
  Op.add_input op sp_indices;
  Op.add_input op sp_values;
  Op.add_input op sp_shape;
  Op.add_input op dense;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sp_values);
  Op.execute1 op

let sparseDenseCwiseMul
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "SparseDenseCwiseMul" in
  Op.add_input op sp_indices;
  Op.add_input op sp_values;
  Op.add_input op sp_shape;
  Op.add_input op dense;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sp_values);
  Op.execute1 op

let sparseFillEmptyRows
    (indices : [ `int64 ] t)
    (values : 't t)
    (dense_shape : [ `int64 ] t)
    (default_value : 't t)
  =
  let op = Op.create context "SparseFillEmptyRows" in
  Op.add_input op indices;
  Op.add_input op values;
  Op.add_input op dense_shape;
  Op.add_input op default_value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type values);
  Op.execute4 op

let sparseFillEmptyRowsGrad
    (reverse_index_map : [ `int64 ] t)
    (grad_values : 't t)
  =
  let op = Op.create context "SparseFillEmptyRowsGrad" in
  Op.add_input op reverse_index_map;
  Op.add_input op grad_values;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad_values);
  Op.execute2 op

let sparseMatMul
    ?(transpose_a=false)
    ?(transpose_b=false)
    ?(a_is_sparse=false)
    ?(b_is_sparse=false)
    (a : ([< `float ] as 'ta) t)
    (b : ([< `float ] as 'tb) t)
  =
  let op = Op.create context "SparseMatMul" in
  Op.add_input op a;
  Op.add_input op b;
  Op.set_attr_data_type op "Ta" (Op.tensor_handle_data_type a);
  Op.set_attr_data_type op "Tb" (Op.tensor_handle_data_type b);
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
  let op = Op.create context "SparseReduceMax" in
  Op.add_input op input_indices;
  Op.add_input op input_values;
  Op.add_input op input_shape;
  Op.add_input op reduction_axes;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let sparseReduceMaxSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let op = Op.create context "SparseReduceMaxSparse" in
  Op.add_input op input_indices;
  Op.add_input op input_values;
  Op.add_input op input_shape;
  Op.add_input op reduction_axes;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute3 op

let sparseReduceSum
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let op = Op.create context "SparseReduceSum" in
  Op.add_input op input_indices;
  Op.add_input op input_values;
  Op.add_input op input_shape;
  Op.add_input op reduction_axes;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let sparseReduceSumSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let op = Op.create context "SparseReduceSumSparse" in
  Op.add_input op input_indices;
  Op.add_input op input_values;
  Op.add_input op input_shape;
  Op.add_input op reduction_axes;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input_values);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute3 op

let sparseReorder
    (input_indices : [ `int64 ] t)
    (input_values : 't t)
    (input_shape : [ `int64 ] t)
  =
  let op = Op.create context "SparseReorder" in
  Op.add_input op input_indices;
  Op.add_input op input_values;
  Op.add_input op input_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input_values);
  Op.execute2 op

let sparseReshape
    (input_indices : [ `int64 ] t)
    (input_shape : [ `int64 ] t)
    (new_shape : [ `int64 ] t)
  =
  let op = Op.create context "SparseReshape" in
  Op.add_input op input_indices;
  Op.add_input op input_shape;
  Op.add_input op new_shape;
  Op.execute2 op

let sparseSegmentMean
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let op = Op.create context "SparseSegmentMean" in
  Op.add_input op data;
  Op.add_input op indices;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let sparseSegmentMeanGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  let op = Op.create context "SparseSegmentMeanGrad" in
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op segment_ids;
  Op.add_input op output_dim0;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let sparseSegmentSqrtN
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let op = Op.create context "SparseSegmentSqrtN" in
  Op.add_input op data;
  Op.add_input op indices;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let sparseSegmentSqrtNGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  let op = Op.create context "SparseSegmentSqrtNGrad" in
  Op.add_input op grad;
  Op.add_input op indices;
  Op.add_input op segment_ids;
  Op.add_input op output_dim0;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type grad);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let sparseSegmentSum
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let op = Op.create context "SparseSegmentSum" in
  Op.add_input op data;
  Op.add_input op indices;
  Op.add_input op segment_ids;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type indices);
  Op.execute1 op

let sparseSlice
    (indices : [ `int64 ] t)
    (values : 't t)
    (shape : [ `int64 ] t)
    (start : [ `int64 ] t)
    (size : [ `int64 ] t)
  =
  let op = Op.create context "SparseSlice" in
  Op.add_input op indices;
  Op.add_input op values;
  Op.add_input op shape;
  Op.add_input op start;
  Op.add_input op size;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type values);
  Op.execute3 op

let sparseSoftmax
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double ] as 't) t)
    (sp_shape : [ `int64 ] t)
  =
  let op = Op.create context "SparseSoftmax" in
  Op.add_input op sp_indices;
  Op.add_input op sp_values;
  Op.add_input op sp_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sp_values);
  Op.execute1 op

let sparseSoftmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `int32 | `int64 ] as 'tlabels) t)
  =
  let op = Op.create context "SparseSoftmaxCrossEntropyWithLogits" in
  Op.add_input op features;
  Op.add_input op labels;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type features);
  Op.set_attr_data_type op "Tlabels" (Op.tensor_handle_data_type labels);
  Op.execute2 op

let sparseSparseMaximum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  let op = Op.create context "SparseSparseMaximum" in
  Op.add_input op a_indices;
  Op.add_input op a_values;
  Op.add_input op a_shape;
  Op.add_input op b_indices;
  Op.add_input op b_values;
  Op.add_input op b_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a_values);
  Op.execute2 op

let sparseSparseMinimum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  let op = Op.create context "SparseSparseMinimum" in
  Op.add_input op a_indices;
  Op.add_input op a_values;
  Op.add_input op a_shape;
  Op.add_input op b_indices;
  Op.add_input op b_values;
  Op.add_input op b_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a_values);
  Op.execute2 op

let sparseTensorDenseAdd
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (b : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let op = Op.create context "SparseTensorDenseAdd" in
  Op.add_input op a_indices;
  Op.add_input op a_values;
  Op.add_input op a_shape;
  Op.add_input op b;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a_values);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type a_indices);
  Op.execute1 op

let sparseTensorDenseMatMul
    ?(adjoint_a=false)
    ?(adjoint_b=false)
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : 't t)
    (a_shape : [ `int64 ] t)
    (b : 't t)
  =
  let op = Op.create context "SparseTensorDenseMatMul" in
  Op.add_input op a_indices;
  Op.add_input op a_values;
  Op.add_input op a_shape;
  Op.add_input op b;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type a_values);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type a_indices);
  Op.set_attr_bool op "adjoint_a" adjoint_a;
  Op.set_attr_bool op "adjoint_b" adjoint_b;
  Op.execute1 op

let sparseTensorSliceDataset
    (indices : [ `int64 ] t)
    (values : 'tvalues t)
    (dense_shape : [ `int64 ] t)
  =
  let op = Op.create context "SparseTensorSliceDataset" in
  Op.add_input op indices;
  Op.add_input op values;
  Op.add_input op dense_shape;
  Op.set_attr_data_type op "Tvalues" (Op.tensor_handle_data_type values);
  Op.execute1 op

let sparseToDense
    ?(validate_indices=true)
    (sparse_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (output_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (sparse_values : 't t)
    (default_value : 't t)
  =
  let op = Op.create context "SparseToDense" in
  Op.add_input op sparse_indices;
  Op.add_input op output_shape;
  Op.add_input op sparse_values;
  Op.add_input op default_value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type sparse_values);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type sparse_indices);
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
  let op = Op.create context "SparseToSparseSetOperation" in
  Op.add_input op set1_indices;
  Op.add_input op set1_values;
  Op.add_input op set1_shape;
  Op.add_input op set2_indices;
  Op.add_input op set2_values;
  Op.add_input op set2_shape;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type set1_values);
  Op.set_attr_string op "set_operation" set_operation;
  Op.set_attr_bool op "validate_indices" validate_indices;
  Op.execute3 op

let split
    ~num_split
    (split_dim : [ `int32 ] t)
    (value : 't t)
  =
  let op = Op.create context "Split" in
  Op.add_input op split_dim;
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.set_attr_int op "num_split" num_split;
  Op.execute op ~output_len:num_split

let splitV
    ~num_split
    (value : 't t)
    (size_splits : ([< `int32 | `int64 ] as 'tlen) t)
    (split_dim : [ `int32 ] t)
  =
  let op = Op.create context "SplitV" in
  Op.add_input op value;
  Op.add_input op size_splits;
  Op.add_input op split_dim;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.set_attr_data_type op "Tlen" (Op.tensor_handle_data_type size_splits);
  Op.set_attr_int op "num_split" num_split;
  Op.execute op ~output_len:num_split

let sqlDataset
    ~output_types
    ~output_shapes
    (driver_name : [ `string ] t)
    (data_source_name : [ `string ] t)
    (query : [ `string ] t)
  =
  let op = Op.create context "SqlDataset" in
  Op.add_input op driver_name;
  Op.add_input op data_source_name;
  Op.add_input op query;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let sqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Sqrt" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let sqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "SqrtGrad" in
  Op.add_input op y;
  Op.add_input op dy;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y);
  Op.execute1 op

let square
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Square" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let squaredDifference
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "SquaredDifference" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let squeeze
    ?(squeeze_dims=[])
    (input : 't t)
  =
  let op = Op.create context "Squeeze" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_int_list op "squeeze_dims" squeeze_dims;
  Op.execute1 op

let stack
    ?(stack_name="")
    ()
  =
  let op = Op.create context "Stack" in
  Op.set_attr_string op "stack_name" stack_name;
  Op.execute1 op

let stackClose
    (handle : [ `string ] t)
  =
  let op = Op.create context "StackClose" in
  Op.add_input op handle;
  Op.execute0 op

let stackCloseV2
    (handle : [ `resource ] t)
  =
  let op = Op.create context "StackCloseV2" in
  Op.add_input op handle;
  Op.execute0 op

let stackPop
    ~type_elem_type
    (handle : [ `string ] t)
  =
  let op = Op.create context "StackPop" in
  Op.add_input op handle;
  Op.set_attr_data_type op "elem_type" Operation.Type.(to_data_type (P type_elem_type));
  Op.execute1 op

let stackPopV2
    ~type_elem_type
    (handle : [ `resource ] t)
  =
  let op = Op.create context "StackPopV2" in
  Op.add_input op handle;
  Op.set_attr_data_type op "elem_type" Operation.Type.(to_data_type (P type_elem_type));
  Op.execute1 op

let stackPush
    ?(swap_memory=false)
    (handle : [ `string ] t)
    (elem : 't t)
  =
  let op = Op.create context "StackPush" in
  Op.add_input op handle;
  Op.add_input op elem;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type elem);
  Op.set_attr_bool op "swap_memory" swap_memory;
  Op.execute1 op

let stackPushV2
    ?(swap_memory=false)
    (handle : [ `resource ] t)
    (elem : 't t)
  =
  let op = Op.create context "StackPushV2" in
  Op.add_input op handle;
  Op.add_input op elem;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type elem);
  Op.set_attr_bool op "swap_memory" swap_memory;
  Op.execute1 op

let stackV2
    ?(stack_name="")
    (max_size : [ `int32 ] t)
  =
  let op = Op.create context "StackV2" in
  Op.add_input op max_size;
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
  let op = Op.create context "StageClear" in
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
  let op = Op.create context "StageSize" in
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
  let op = Op.create context "StatelessRandomNormal" in
  Op.add_input op shape;
  Op.add_input op seed;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
  Op.execute1 op

let statelessRandomUniform
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let op = Op.create context "StatelessRandomUniform" in
  Op.add_input op shape;
  Op.add_input op seed;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
  Op.execute1 op

let statelessTruncatedNormal
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let op = Op.create context "StatelessTruncatedNormal" in
  Op.add_input op shape;
  Op.add_input op seed;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
  Op.execute1 op

let stopGradient
    (input : 't t)
  =
  let op = Op.create context "StopGradient" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
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
  let op = Op.create context "StridedSlice" in
  Op.add_input op input;
  Op.add_input op begin__;
  Op.add_input op end__;
  Op.add_input op strides;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Index" (Op.tensor_handle_data_type begin__);
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
  let op = Op.create context "StridedSliceAssign" in
  Op.add_input op ref;
  Op.add_input op begin__;
  Op.add_input op end__;
  Op.add_input op strides;
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type ref);
  Op.set_attr_data_type op "Index" (Op.tensor_handle_data_type begin__);
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
  let op = Op.create context "StridedSliceGrad" in
  Op.add_input op shape;
  Op.add_input op begin__;
  Op.add_input op end__;
  Op.add_input op strides;
  Op.add_input op dy;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type dy);
  Op.set_attr_data_type op "Index" (Op.tensor_handle_data_type shape);
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
  let op = Op.create context "StringJoin" in
  List.iter inputs__ ~f:(Op.add_input op);
  Op.set_attr_int op "N" (List.length inputs__);
  Op.set_attr_string op "separator" separator;
  Op.execute1 op

let stringSplit
    ?(skip_empty=true)
    (input : [ `string ] t)
    (delimiter : [ `string ] t)
  =
  let op = Op.create context "StringSplit" in
  Op.add_input op input;
  Op.add_input op delimiter;
  Op.set_attr_bool op "skip_empty" skip_empty;
  Op.execute3 op

let stringToHashBucket
    ~num_buckets
    (string_tensor : [ `string ] t)
  =
  let op = Op.create context "StringToHashBucket" in
  Op.add_input op string_tensor;
  Op.set_attr_int op "num_buckets" num_buckets;
  Op.execute1 op

let stringToHashBucketFast
    ~num_buckets
    (input : [ `string ] t)
  =
  let op = Op.create context "StringToHashBucketFast" in
  Op.add_input op input;
  Op.set_attr_int op "num_buckets" num_buckets;
  Op.execute1 op

let stringToHashBucketStrong
    ~num_buckets
    ~key
    (input : [ `string ] t)
  =
  let op = Op.create context "StringToHashBucketStrong" in
  Op.add_input op input;
  Op.set_attr_int op "num_buckets" num_buckets;
  Op.set_attr_int_list op "key" key;
  Op.execute1 op

let stringToNumber
    ~type_out_type
    (string_tensor : [ `string ] t)
  =
  let op = Op.create context "StringToNumber" in
  Op.add_input op string_tensor;
  Op.set_attr_data_type op "out_type" Operation.Type.(to_data_type (P type_out_type));
  Op.execute1 op

let sub
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Sub" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let substr
    (input : [ `string ] t)
    (pos : ([< `int32 | `int64 ] as 't) t)
    (len : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "Substr" in
  Op.add_input op input;
  Op.add_input op pos;
  Op.add_input op len;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type pos);
  Op.execute1 op

let sum
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let op = Op.create context "Sum" in
  Op.add_input op input;
  Op.add_input op reduction_indices;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tidx" (Op.tensor_handle_data_type reduction_indices);
  Op.set_attr_bool op "keep_dims" keep_dims;
  Op.execute1 op

let svd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let op = Op.create context "Svd" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "compute_uv" compute_uv;
  Op.set_attr_bool op "full_matrices" full_matrices;
  Op.execute3 op

let switch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  let op = Op.create context "Switch" in
  Op.add_input op data;
  Op.add_input op pred;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.execute2 op

let tFRecordDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op = Op.create context "TFRecordDataset" in
  Op.add_input op filenames;
  Op.add_input op compression_type;
  Op.add_input op buffer_size;
  Op.execute1 op

let tFRecordReader
    ?(container="")
    ?(shared_name="")
    ?(compression_type="")
    ()
  =
  let op = Op.create context "TFRecordReader" in
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
  let op = Op.create context "TFRecordReaderV2" in
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
  let op = Op.create context "TakeDataset" in
  Op.add_input op input_dataset;
  Op.add_input op count;
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.execute1 op

let takeManySparseFromTensorsMap
    ~type_dtype
    ?(container="")
    ?(shared_name="")
    (sparse_handles : [ `int64 ] t)
  =
  let op = Op.create context "TakeManySparseFromTensorsMap" in
  Op.add_input op sparse_handles;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute3 op

let tan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "Tan" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let tanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "Tanh" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let tanhGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let op = Op.create context "TanhGrad" in
  Op.add_input op y;
  Op.add_input op dy;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type y);
  Op.execute1 op

let temporaryVariable
    ~type_dtype
    ~shape
    ?(var_name="")
    ()
  =
  let op = Op.create context "TemporaryVariable" in
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
  let op = Op.create context "TensorArray" in
  Op.add_input op size;
  Op.set_attr_bool op "dynamic_size" dynamic_size;
  Op.set_attr_bool op "clear_after_read" clear_after_read;
  Op.set_attr_string op "tensor_array_name" tensor_array_name;
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayClose
    (handle : [ `string ] t)
  =
  let op = Op.create context "TensorArrayClose" in
  Op.add_input op handle;
  Op.execute0 op

let tensorArrayCloseV2
    (handle : [ `string ] t)
  =
  let op = Op.create context "TensorArrayCloseV2" in
  Op.add_input op handle;
  Op.execute0 op

let tensorArrayCloseV3
    (handle : [ `resource ] t)
  =
  let op = Op.create context "TensorArrayCloseV3" in
  Op.add_input op handle;
  Op.execute0 op

let tensorArrayConcat
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayConcat" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape_except0" element_shape_except0;
  Op.execute2 op

let tensorArrayConcatV2
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayConcatV2" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape_except0" element_shape_except0;
  Op.execute2 op

let tensorArrayConcatV3
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayConcatV3" in
  Op.add_input op handle;
  Op.add_input op flow_in;
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
  let op = Op.create context "TensorArrayGather" in
  Op.add_input op handle;
  Op.add_input op indices;
  Op.add_input op flow_in;
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
  let op = Op.create context "TensorArrayGatherV2" in
  Op.add_input op handle;
  Op.add_input op indices;
  Op.add_input op flow_in;
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
  let op = Op.create context "TensorArrayGatherV3" in
  Op.add_input op handle;
  Op.add_input op indices;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayGrad
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayGrad" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.set_attr_string op "source" source;
  Op.execute1 op

let tensorArrayGradV2
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayGradV2" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.set_attr_string op "source" source;
  Op.execute1 op

let tensorArrayGradV3
    ~source
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayGradV3" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.set_attr_string op "source" source;
  Op.execute2 op

let tensorArrayPack
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayPack" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "element_shape" element_shape;
  Op.execute1 op

let tensorArrayRead
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayRead" in
  Op.add_input op handle;
  Op.add_input op index;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let tensorArrayReadV2
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayReadV2" in
  Op.add_input op handle;
  Op.add_input op index;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let tensorArrayReadV3
    ~type_dtype
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayReadV3" in
  Op.add_input op handle;
  Op.add_input op index;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.execute1 op

let tensorArrayScatter
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayScatter" in
  Op.add_input op handle;
  Op.add_input op indices;
  Op.add_input op value;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArrayScatterV2
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayScatterV2" in
  Op.add_input op handle;
  Op.add_input op indices;
  Op.add_input op value;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArrayScatterV3
    (handle : [ `resource ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayScatterV3" in
  Op.add_input op handle;
  Op.add_input op indices;
  Op.add_input op value;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArraySize
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArraySize" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.execute1 op

let tensorArraySizeV2
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArraySizeV2" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.execute1 op

let tensorArraySizeV3
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArraySizeV3" in
  Op.add_input op handle;
  Op.add_input op flow_in;
  Op.execute1 op

let tensorArraySplit
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArraySplit" in
  Op.add_input op handle;
  Op.add_input op value;
  Op.add_input op lengths;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArraySplitV2
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArraySplitV2" in
  Op.add_input op handle;
  Op.add_input op value;
  Op.add_input op lengths;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArraySplitV3
    (handle : [ `resource ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArraySplitV3" in
  Op.add_input op handle;
  Op.add_input op value;
  Op.add_input op lengths;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArrayUnpack
    (handle : [ `string ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayUnpack" in
  Op.add_input op handle;
  Op.add_input op value;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArrayV2
    ?(element_shape=[])
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    (size : [ `int32 ] t)
  =
  let op = Op.create context "TensorArrayV2" in
  Op.add_input op size;
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
  let op = Op.create context "TensorArrayV3" in
  Op.add_input op size;
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
  let op = Op.create context "TensorArrayWrite" in
  Op.add_input op handle;
  Op.add_input op index;
  Op.add_input op value;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArrayWriteV2
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayWriteV2" in
  Op.add_input op handle;
  Op.add_input op index;
  Op.add_input op value;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorArrayWriteV3
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let op = Op.create context "TensorArrayWriteV3" in
  Op.add_input op handle;
  Op.add_input op index;
  Op.add_input op value;
  Op.add_input op flow_in;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.execute1 op

let tensorSummary
    ?(description="")
    ?(display_name="")
    (tensor : 't t)
  =
  let op = Op.create context "TensorSummary" in
  Op.add_input op tensor;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.set_attr_string op "description" description;
  Op.set_attr_string op "display_name" display_name;
  Op.execute1 op

let tensorSummaryV2
    (tag : [ `string ] t)
    (tensor : 't t)
    (serialized_summary_metadata : [ `string ] t)
  =
  let op = Op.create context "TensorSummaryV2" in
  Op.add_input op tag;
  Op.add_input op tensor;
  Op.add_input op serialized_summary_metadata;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type tensor);
  Op.execute1 op

let textLineDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  let op = Op.create context "TextLineDataset" in
  Op.add_input op filenames;
  Op.add_input op compression_type;
  Op.add_input op buffer_size;
  Op.execute1 op

let textLineReader
    ?(skip_header_lines=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "TextLineReader" in
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
  let op = Op.create context "TextLineReaderV2" in
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
  let op = Op.create context "ThreadUnsafeUnigramCandidateSampler" in
  Op.add_input op true_classes;
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
  let op = Op.create context "Tile" in
  Op.add_input op input;
  Op.add_input op multiples;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_data_type op "Tmultiples" (Op.tensor_handle_data_type multiples);
  Op.execute1 op

let tileGrad
    (input : 't t)
    (multiples : [ `int32 ] t)
  =
  let op = Op.create context "TileGrad" in
  Op.add_input op input;
  Op.add_input op multiples;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.execute1 op

let topK
    ~k
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let op = Op.create context "TopK" in
  Op.add_input op input;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_int op "k" k;
  Op.set_attr_bool op "sorted" sorted;
  Op.execute2 op

let topKV2
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (k : [ `int32 ] t)
  =
  let op = Op.create context "TopKV2" in
  Op.add_input op input;
  Op.add_input op k;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type input);
  Op.set_attr_bool op "sorted" sorted;
  Op.execute2 op

let transpose
    (x : 't t)
    (perm : ([< `int32 | `int64 ] as 'tperm) t)
  =
  let op = Op.create context "Transpose" in
  Op.add_input op x;
  Op.add_input op perm;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "Tperm" (Op.tensor_handle_data_type perm);
  Op.execute1 op

let truncateDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let op = Op.create context "TruncateDiv" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let truncateMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let op = Op.create context "TruncateMod" in
  Op.add_input op x;
  Op.add_input op y;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let truncatedNormal
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let op = Op.create context "TruncatedNormal" in
  Op.add_input op shape;
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type shape);
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
  let op = Op.create context "UniformCandidateSampler" in
  Op.add_input op true_classes;
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
  let op = Op.create context "Unique" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "out_idx" Operation.Type.(to_data_type (P type_out_idx));
  Op.execute2 op

let uniqueWithCounts
    ~type_out_idx
    (x : 't t)
  =
  let op = Op.create context "UniqueWithCounts" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.set_attr_data_type op "out_idx" Operation.Type.(to_data_type (P type_out_idx));
  Op.execute3 op

let unpack
    ~num
    ?(axis=0)
    (value : 't t)
  =
  let op = Op.create context "Unpack" in
  Op.add_input op value;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type value);
  Op.set_attr_int op "num" num;
  Op.set_attr_int op "axis" axis;
  Op.execute op ~output_len:num

let unsortedSegmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  let op = Op.create context "UnsortedSegmentMax" in
  Op.add_input op data;
  Op.add_input op segment_ids;
  Op.add_input op num_segments;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type segment_ids);
  Op.execute1 op

let unsortedSegmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  let op = Op.create context "UnsortedSegmentSum" in
  Op.add_input op data;
  Op.add_input op segment_ids;
  Op.add_input op num_segments;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type data);
  Op.set_attr_data_type op "Tindices" (Op.tensor_handle_data_type segment_ids);
  Op.execute1 op

let variable
    ~type_dtype
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "Variable" in
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
  let op = Op.create context "VariableV2" in
  Op.set_attr_data_type op "dtype" Operation.Type.(to_data_type (P type_dtype));
  Op.set_attr_shape op "shape" shape;
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let where
    (input : [ `bool ] t)
  =
  let op = Op.create context "Where" in
  Op.add_input op input;
  Op.execute1 op

let wholeFileReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "WholeFileReader" in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let wholeFileReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  let op = Op.create context "WholeFileReaderV2" in
  Op.set_attr_string op "container" container;
  Op.set_attr_string op "shared_name" shared_name;
  Op.execute1 op

let writeFile
    (filename : [ `string ] t)
    (contents : [ `string ] t)
  =
  let op = Op.create context "WriteFile" in
  Op.add_input op filename;
  Op.add_input op contents;
  Op.execute0 op

let zerosLike
    (x : 't t)
  =
  let op = Op.create context "ZerosLike" in
  Op.add_input op x;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let zeta
    (x : ([< `float | `double ] as 't) t)
    (q : ([< `float | `double ] as 't) t)
  =
  let op = Op.create context "Zeta" in
  Op.add_input op x;
  Op.add_input op q;
  Op.set_attr_data_type op "T" (Op.tensor_handle_data_type x);
  Op.execute1 op

let zipDataset
    ~output_types
    ~output_shapes
    (input_datasets : [ `variant ] t list)
  =
  let op = Op.create context "ZipDataset" in
  List.iter input_datasets ~f:(Op.add_input op);
  Op.set_attr_type_list op "output_types" output_types;
  Op.set_attr_shape_list op "output_shapes" output_shapes;
  Op.set_attr_int op "N" (List.length input_datasets);
  Op.execute1 op

