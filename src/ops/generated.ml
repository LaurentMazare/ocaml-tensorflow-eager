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
  Op.create context "Abort"
  |> Op.set_attr_string ~name:"error_msg" ~value:error_msg
  |> Op.set_attr_bool ~name:"exit_without_error" ~value:exit_without_error
  |> Op.execute0

let abs
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context "Abs"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let accumulatorApplyGradient
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
  =
  Op.create context "AccumulatorApplyGradient"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op local_step
  |> fun op -> Op.add_input op gradient
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type gradient)
  |> Op.execute0

let accumulatorNumAccumulated
    (handle : [ `string ] t)
  =
  Op.create context "AccumulatorNumAccumulated"
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let accumulatorSetGlobalStep
    (handle : [ `string ] t)
    (new_global_step : [ `int64 ] t)
  =
  Op.create context "AccumulatorSetGlobalStep"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op new_global_step
  |> Op.execute0

let accumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  Op.create context "AccumulatorTakeGradient"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op num_required
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute1

let acos
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Acos"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let acosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Acosh"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let add
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
  =
  Op.create context "Add"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let addManySparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  Op.create context "AddManySparseToTensorsMap"
  |> fun op -> Op.add_input op sparse_indices
  |> fun op -> Op.add_input op sparse_values
  |> fun op -> Op.add_input op sparse_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sparse_values)
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let addN
    (inputs__ : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 | `variant ] as 't) t list)
  =
  Op.create context "AddN"
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn inputs__))
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute1

let addSparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  Op.create context "AddSparseToTensorsMap"
  |> fun op -> Op.add_input op sparse_indices
  |> fun op -> Op.add_input op sparse_values
  |> fun op -> Op.add_input op sparse_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sparse_values)
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let adjustContrast
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (contrast_factor : [ `float ] t)
    (min_value : [ `float ] t)
    (max_value : [ `float ] t)
  =
  Op.create context "AdjustContrast"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op contrast_factor
  |> fun op -> Op.add_input op min_value
  |> fun op -> Op.add_input op max_value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.execute1

let adjustContrastv2
    (images : [ `float ] t)
    (contrast_factor : [ `float ] t)
  =
  Op.create context "AdjustContrastv2"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op contrast_factor
  |> Op.execute1

let adjustHue
    (images : [ `float ] t)
    (delta : [ `float ] t)
  =
  Op.create context "AdjustHue"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op delta
  |> Op.execute1

let adjustSaturation
    (images : [ `float ] t)
    (scale : [ `float ] t)
  =
  Op.create context "AdjustSaturation"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op scale
  |> Op.execute1

let all
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "All"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let allCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  Op.create context "AllCandidateSampler"
  |> fun op -> Op.add_input op true_classes
  |> Op.set_attr_int ~name:"num_true" ~value:num_true
  |> Op.set_attr_int ~name:"num_sampled" ~value:num_sampled
  |> Op.set_attr_bool ~name:"unique" ~value:unique
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let angle
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  Op.create context "Angle"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let any
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Any"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

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
  Op.create context "ApplyAdadelta"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op accum_update
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op rho
  |> fun op -> Op.add_input op epsilon
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let applyAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ApplyAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  Op.create context "ApplyAdagradDA"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op gradient_accumulator
  |> fun op -> Op.add_input op gradient_squared_accumulator
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op global_step
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.set_attr_bool ~name:"use_nesterov" ~value:use_nesterov
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  Op.create context "ApplyFtrl"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op linear
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op lr_power
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let applyGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ApplyGradientDescent"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op alpha
  |> fun op -> Op.add_input op delta
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let applyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ApplyMomentum"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op momentum
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.set_attr_bool ~name:"use_nesterov" ~value:use_nesterov
  |> Op.execute1

let applyProximalAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ApplyProximalAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let applyProximalGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ApplyProximalGradientDescent"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op alpha
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op delta
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  Op.create context "ApplyRMSProp"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op ms
  |> fun op -> Op.add_input op mom
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op rho
  |> fun op -> Op.add_input op momentum
  |> fun op -> Op.add_input op epsilon
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let approximateEqual
    ?(tolerance=9.9999997473787516e-06)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ApproximateEqual"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_float ~name:"tolerance" ~value:tolerance
  |> Op.execute1

let argMax
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "ArgMax"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op dimension
  |> Op.set_attr_data_type ~name:"output_type" ~value:Operation.Type.(to_data_type (P type_output_type))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type dimension)
  |> Op.execute1

let argMin
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "ArgMin"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op dimension
  |> Op.set_attr_data_type ~name:"output_type" ~value:Operation.Type.(to_data_type (P type_output_type))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type dimension)
  |> Op.execute1

let asString
    ?(precision=(-1))
    ?(scientific=false)
    ?(shortest=false)
    ?(width=(-1))
    ?(fill="")
    (input : ([< `int32 | `int64 | `complex64 | `float | `double | `bool ] as 't) t)
  =
  Op.create context "AsString"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int ~name:"precision" ~value:precision
  |> Op.set_attr_bool ~name:"scientific" ~value:scientific
  |> Op.set_attr_bool ~name:"shortest" ~value:shortest
  |> Op.set_attr_int ~name:"width" ~value:width
  |> Op.set_attr_string ~name:"fill" ~value:fill
  |> Op.execute1

let asin
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Asin"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let asinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Asinh"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let assign
    ?(validate_shape=true)
    ?(use_locking=true)
    (ref : 't t)
    (value : 't t)
  =
  Op.create context "Assign"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_bool ~name:"validate_shape" ~value:validate_shape
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let assignAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "AssignAdd"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let assignSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "AssignSub"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let atan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Atan"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let atan2
    (y : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Atan2"
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let atanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Atanh"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let audioSpectrogram
    ~window_size
    ~stride
    ?(magnitude_squared=false)
    (input : [ `float ] t)
  =
  Op.create context "AudioSpectrogram"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_int ~name:"window_size" ~value:window_size
  |> Op.set_attr_int ~name:"stride" ~value:stride
  |> Op.set_attr_bool ~name:"magnitude_squared" ~value:magnitude_squared
  |> Op.execute1

let audioSummary
    ~sample_rate
    ?(max_outputs=3)
    (tag : [ `string ] t)
    (tensor : [ `float ] t)
  =
  Op.create context "AudioSummary"
  |> fun op -> Op.add_input op tag
  |> fun op -> Op.add_input op tensor
  |> Op.set_attr_float ~name:"sample_rate" ~value:sample_rate
  |> Op.set_attr_int ~name:"max_outputs" ~value:max_outputs
  |> Op.execute1

let audioSummaryV2
    ?(max_outputs=3)
    (tag : [ `string ] t)
    (tensor : [ `float ] t)
    (sample_rate : [ `float ] t)
  =
  Op.create context "AudioSummaryV2"
  |> fun op -> Op.add_input op tag
  |> fun op -> Op.add_input op tensor
  |> fun op -> Op.add_input op sample_rate
  |> Op.set_attr_int ~name:"max_outputs" ~value:max_outputs
  |> Op.execute1

let avgPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (value : ([< `float | `double ] as 't) t)
  =
  Op.create context "AvgPool"
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let avgPool3D
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
  =
  Op.create context "AvgPool3D"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let avgPool3DGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input_shape : [ `int32 ] t)
    (grad : ([< `float | `double ] as 't) t)
  =
  Op.create context "AvgPool3DGrad"
  |> fun op -> Op.add_input op orig_input_shape
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let avgPoolGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input_shape : [ `int32 ] t)
    (grad : ([< `float | `double ] as 't) t)
  =
  Op.create context "AvgPoolGrad"
  |> fun op -> Op.add_input op orig_input_shape
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let barrier
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "Barrier"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let barrierClose
    ?(cancel_pending_enqueues=false)
    (handle : [ `string ] t)
  =
  Op.create context "BarrierClose"
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_bool ~name:"cancel_pending_enqueues" ~value:cancel_pending_enqueues
  |> Op.execute0

let barrierIncompleteSize
    (handle : [ `string ] t)
  =
  Op.create context "BarrierIncompleteSize"
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let barrierInsertMany
    ~component_index
    (handle : [ `string ] t)
    (keys : [ `string ] t)
    (values : 't t)
  =
  Op.create context "BarrierInsertMany"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type values)
  |> Op.set_attr_int ~name:"component_index" ~value:component_index
  |> Op.execute0

let barrierReadySize
    (handle : [ `string ] t)
  =
  Op.create context "BarrierReadySize"
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let batchCholesky
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context "BatchCholesky"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchCholeskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  Op.create context "BatchCholeskyGrad"
  |> fun op -> Op.add_input op l
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type l)
  |> Op.execute1

let batchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (batch_size : [ `int64 ] t)
  =
  Op.create context "BatchDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op batch_size
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let batchFFT
    (input : [ `complex64 ] t)
  =
  Op.create context "BatchFFT"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchFFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context "BatchFFT2D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchFFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context "BatchFFT3D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchIFFT
    (input : [ `complex64 ] t)
  =
  Op.create context "BatchIFFT"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchIFFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context "BatchIFFT2D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchIFFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context "BatchIFFT3D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchMatMul
    ?(adj_x=false)
    ?(adj_y=false)
    (x : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  Op.create context "BatchMatMul"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_bool ~name:"adj_x" ~value:adj_x
  |> Op.set_attr_bool ~name:"adj_y" ~value:adj_y
  |> Op.execute1

let batchMatrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  Op.create context "BatchMatrixBandPart"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op num_lower
  |> fun op -> Op.add_input op num_upper
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "BatchMatrixDeterminant"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixDiag
    (diagonal : 't t)
  =
  Op.create context "BatchMatrixDiag"
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type diagonal)
  |> Op.execute1

let batchMatrixDiagPart
    (input : 't t)
  =
  Op.create context "BatchMatrixDiagPart"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context "BatchMatrixInverse"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let batchMatrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  Op.create context "BatchMatrixSetDiag"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  Op.create context "BatchMatrixSolve"
  |> fun op -> Op.add_input op matrix
  |> fun op -> Op.add_input op rhs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type matrix)
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let batchMatrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  Op.create context "BatchMatrixSolveLs"
  |> fun op -> Op.add_input op matrix
  |> fun op -> Op.add_input op rhs
  |> fun op -> Op.add_input op l2_regularizer
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type matrix)
  |> Op.set_attr_bool ~name:"fast" ~value:fast
  |> Op.execute1

let batchMatrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  Op.create context "BatchMatrixTriangularSolve"
  |> fun op -> Op.add_input op matrix
  |> fun op -> Op.add_input op rhs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type matrix)
  |> Op.set_attr_bool ~name:"lower" ~value:lower
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let batchNormWithGlobalNormalization
    ~variance_epsilon
    ~scale_after_normalization
    (t : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (m : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (v : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gamma : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "BatchNormWithGlobalNormalization"
  |> fun op -> Op.add_input op t
  |> fun op -> Op.add_input op m
  |> fun op -> Op.add_input op v
  |> fun op -> Op.add_input op beta
  |> fun op -> Op.add_input op gamma
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type t)
  |> Op.set_attr_float ~name:"variance_epsilon" ~value:variance_epsilon
  |> Op.set_attr_bool ~name:"scale_after_normalization" ~value:scale_after_normalization
  |> Op.execute1

let batchNormWithGlobalNormalizationGrad
    ~variance_epsilon
    ~scale_after_normalization
    (t : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (m : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (v : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gamma : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "BatchNormWithGlobalNormalizationGrad"
  |> fun op -> Op.add_input op t
  |> fun op -> Op.add_input op m
  |> fun op -> Op.add_input op v
  |> fun op -> Op.add_input op gamma
  |> fun op -> Op.add_input op backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type t)
  |> Op.set_attr_float ~name:"variance_epsilon" ~value:variance_epsilon
  |> Op.set_attr_bool ~name:"scale_after_normalization" ~value:scale_after_normalization
  |> Op.execute5

let batchSelfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context "BatchSelfAdjointEig"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchSelfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context "BatchSelfAdjointEigV2"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"compute_v" ~value:compute_v
  |> Op.execute2

let batchSvd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "BatchSvd"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"compute_uv" ~value:compute_uv
  |> Op.set_attr_bool ~name:"full_matrices" ~value:full_matrices
  |> Op.execute3

let batchToSpace
    ~block_size
    (input : 't t)
    (crops : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "BatchToSpace"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op crops
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type crops)
  |> Op.set_attr_int ~name:"block_size" ~value:block_size
  |> Op.execute1

let batchToSpaceND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (crops : ([< `int32 | `int64 ] as 'tcrops) t)
  =
  Op.create context "BatchToSpaceND"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op block_shape
  |> fun op -> Op.add_input op crops
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tblock_shape" ~value:(Op.Tensor_handle.data_type block_shape)
  |> Op.set_attr_data_type ~name:"Tcrops" ~value:(Op.Tensor_handle.data_type crops)
  |> Op.execute1

let betainc
    (a : ([< `float | `double ] as 't) t)
    (b : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Betainc"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op b
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let biasAdd
    ?(data_format="NHWC")
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "BiasAdd"
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op bias
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let biasAddGrad
    ?(data_format="NHWC")
    (out_backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "BiasAddGrad"
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type out_backprop)
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let biasAddV1
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "BiasAddV1"
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op bias
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let bincount
    (arr : [ `int32 ] t)
    (size : [ `int32 ] t)
    (weights : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context "Bincount"
  |> fun op -> Op.add_input op arr
  |> fun op -> Op.add_input op size
  |> fun op -> Op.add_input op weights
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type weights)
  |> Op.execute1

let bitcast
    ~type_type__
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "Bitcast"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"type" ~value:Operation.Type.(to_data_type (P type_type__))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let bitwiseAnd
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "BitwiseAnd"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let bitwiseOr
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "BitwiseOr"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let bitwiseXor
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "BitwiseXor"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let broadcastArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "BroadcastArgs"
  |> fun op -> Op.add_input op s0
  |> fun op -> Op.add_input op s1
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type s0)
  |> Op.execute1

let broadcastGradientArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "BroadcastGradientArgs"
  |> fun op -> Op.add_input op s0
  |> fun op -> Op.add_input op s1
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type s0)
  |> Op.execute2

let bucketize
    ~boundaries
    (input : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context "Bucketize"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_float_list ~name:"boundaries" ~value:boundaries
  |> Op.execute1

let cTCGreedyDecoder
    ?(merge_repeated=false)
    (inputs__ : [ `float ] t)
    (sequence_length : [ `int32 ] t)
  =
  Op.create context "CTCGreedyDecoder"
  |> fun op -> Op.add_input op inputs__
  |> fun op -> Op.add_input op sequence_length
  |> Op.set_attr_bool ~name:"merge_repeated" ~value:merge_repeated
  |> Op.execute4

let cTCLoss
    ?(preprocess_collapse_repeated=false)
    ?(ctc_merge_repeated=true)
    ?(ignore_longer_outputs_than_inputs=false)
    (inputs__ : [ `float ] t)
    (labels_indices : [ `int64 ] t)
    (labels_values : [ `int32 ] t)
    (sequence_length : [ `int32 ] t)
  =
  Op.create context "CTCLoss"
  |> fun op -> Op.add_input op inputs__
  |> fun op -> Op.add_input op labels_indices
  |> fun op -> Op.add_input op labels_values
  |> fun op -> Op.add_input op sequence_length
  |> Op.set_attr_bool ~name:"preprocess_collapse_repeated" ~value:preprocess_collapse_repeated
  |> Op.set_attr_bool ~name:"ctc_merge_repeated" ~value:ctc_merge_repeated
  |> Op.set_attr_bool ~name:"ignore_longer_outputs_than_inputs" ~value:ignore_longer_outputs_than_inputs
  |> Op.execute2

let cacheDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (filename : [ `string ] t)
  =
  Op.create context "CacheDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op filename
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let cast
    ~type_dstT
    (x : 'srcT t)
  =
  Op.create context "Cast"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"DstT" ~value:Operation.Type.(to_data_type (P type_dstT))
  |> Op.set_attr_data_type ~name:"SrcT" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let ceil
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Ceil"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let checkNumerics
    ~message
    (tensor : ([< `float | `double ] as 't) t)
  =
  Op.create context "CheckNumerics"
  |> fun op -> Op.add_input op tensor
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_string ~name:"message" ~value:message
  |> Op.execute1

let cholesky
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "Cholesky"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let choleskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  Op.create context "CholeskyGrad"
  |> fun op -> Op.add_input op l
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type l)
  |> Op.execute1

let compareAndBitpack
    (input : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
    (threshold : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context "CompareAndBitpack"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op threshold
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let complex
    ~type_tout
    (real : ([< `float | `double ] as 't) t)
    (imag : ([< `float | `double ] as 't) t)
  =
  Op.create context "Complex"
  |> fun op -> Op.add_input op real
  |> fun op -> Op.add_input op imag
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type real)
  |> Op.execute1

let complexAbs
    ~type_tout
    (x : ([< `complex64 ] as 't) t)
  =
  Op.create context "ComplexAbs"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let computeAccidentalHits
    ~num_true
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
    (sampled_candidates : [ `int64 ] t)
  =
  Op.create context "ComputeAccidentalHits"
  |> fun op -> Op.add_input op true_classes
  |> fun op -> Op.add_input op sampled_candidates
  |> Op.set_attr_int ~name:"num_true" ~value:num_true
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let concat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
  =
  Op.create context "Concat"
  |> fun op -> Op.add_input op concat_dim
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.execute1

let concatOffset
    (concat_dim : [ `int32 ] t)
    (shape : [ `int32 ] t list)
  =
  Op.create context "ConcatOffset"
  |> fun op -> Op.add_input op concat_dim
  |> fun init -> List.fold shape ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"N" ~value:(List.length shape)
  |> Op.execute ~output_len:(List.length shape)

let concatV2
    (values : 't t list)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "ConcatV2"
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> fun op -> Op.add_input op axis
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type axis)
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.execute1

let concatenateDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (another_dataset : [ `variant ] t)
  =
  Op.create context "ConcatenateDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op another_dataset
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let conditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "ConditionalAccumulator"
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let conj
    (input : ([< `complex64 | `variant ] as 't) t)
  =
  Op.create context "Conj"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let controlTrigger
    ()
  =
  Op.create context "ControlTrigger"
  |> Op.execute0

let conv2D
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter : ([< `float ] as 't) t)
  =
  Op.create context "Conv2D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_bool ~name:"use_cudnn_on_gpu" ~value:use_cudnn_on_gpu
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let conv2DBackpropFilter
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float ] as 't) t)
  =
  Op.create context "Conv2DBackpropFilter"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter_sizes
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_bool ~name:"use_cudnn_on_gpu" ~value:use_cudnn_on_gpu
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let conv2DBackpropInput
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float ] as 't) t)
    (out_backprop : ([< `float ] as 't) t)
  =
  Op.create context "Conv2DBackpropInput"
  |> fun op -> Op.add_input op input_sizes
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type filter)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_bool ~name:"use_cudnn_on_gpu" ~value:use_cudnn_on_gpu
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let conv3D
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
  =
  Op.create context "Conv3D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let conv3DBackpropFilter
    ~strides
    ~padding
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  Op.create context "Conv3DBackpropFilter"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let conv3DBackpropFilterV2
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  Op.create context "Conv3DBackpropFilterV2"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter_sizes
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let conv3DBackpropInput
    ~strides
    ~padding
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  Op.create context "Conv3DBackpropInput"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let conv3DBackpropInputV2
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  Op.create context "Conv3DBackpropInputV2"
  |> fun op -> Op.add_input op input_sizes
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type filter)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let copy
    ?(tensor_name="")
    (input : 't t)
  =
  Op.create context "Copy"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"tensor_name" ~value:tensor_name
  |> Op.execute1

let copyHost
    ?(tensor_name="")
    (input : 't t)
  =
  Op.create context "CopyHost"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"tensor_name" ~value:tensor_name
  |> Op.execute1

let cos
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Cos"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let cosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Cosh"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let countUpTo
    ~limit
    (ref : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "CountUpTo"
  |> fun op -> Op.add_input op ref
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_int ~name:"limit" ~value:limit
  |> Op.execute1

let cropAndResize
    ?(method_="bilinear")
    ?(extrapolation_value=0.)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
    (crop_size : [ `int32 ] t)
  =
  Op.create context "CropAndResize"
  |> fun op -> Op.add_input op image
  |> fun op -> Op.add_input op boxes
  |> fun op -> Op.add_input op box_ind
  |> fun op -> Op.add_input op crop_size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type image)
  |> Op.set_attr_string ~name:"method" ~value:method_
  |> Op.set_attr_float ~name:"extrapolation_value" ~value:extrapolation_value
  |> Op.execute1

let cropAndResizeGradBoxes
    ?(method_="bilinear")
    (grads : [ `float ] t)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
  =
  Op.create context "CropAndResizeGradBoxes"
  |> fun op -> Op.add_input op grads
  |> fun op -> Op.add_input op image
  |> fun op -> Op.add_input op boxes
  |> fun op -> Op.add_input op box_ind
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type image)
  |> Op.set_attr_string ~name:"method" ~value:method_
  |> Op.execute1

let cropAndResizeGradImage
    ~type_t
    ?(method_="bilinear")
    (grads : [ `float ] t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
    (image_size : [ `int32 ] t)
  =
  Op.create context "CropAndResizeGradImage"
  |> fun op -> Op.add_input op grads
  |> fun op -> Op.add_input op boxes
  |> fun op -> Op.add_input op box_ind
  |> fun op -> Op.add_input op image_size
  |> Op.set_attr_data_type ~name:"T" ~value:Operation.Type.(to_data_type (P type_t))
  |> Op.set_attr_string ~name:"method" ~value:method_
  |> Op.execute1

let cross
    (a : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Cross"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op b
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let cumprod
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Cumprod"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op axis
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type axis)
  |> Op.set_attr_bool ~name:"exclusive" ~value:exclusive
  |> Op.set_attr_bool ~name:"reverse" ~value:reverse
  |> Op.execute1

let cumsum
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Cumsum"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op axis
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type axis)
  |> Op.set_attr_bool ~name:"exclusive" ~value:exclusive
  |> Op.set_attr_bool ~name:"reverse" ~value:reverse
  |> Op.execute1

let debugGradientIdentity
    (input : 't t)
  =
  Op.create context "DebugGradientIdentity"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let debugIdentity
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  Op.create context "DebugIdentity"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"device_name" ~value:device_name
  |> Op.set_attr_string ~name:"tensor_name" ~value:tensor_name
  |> Op.set_attr_bool ~name:"gated_grpc" ~value:gated_grpc
  |> Op.execute1

let debugNanCount
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  Op.create context "DebugNanCount"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"device_name" ~value:device_name
  |> Op.set_attr_string ~name:"tensor_name" ~value:tensor_name
  |> Op.set_attr_bool ~name:"gated_grpc" ~value:gated_grpc
  |> Op.execute1

let debugNumericSummary
    ?(device_name="")
    ?(tensor_name="")
    ?(lower_bound=(Float.neg_infinity))
    ?(upper_bound=Float.infinity)
    ?(mute_if_healthy=false)
    ?(gated_grpc=false)
    (input : 't t)
  =
  Op.create context "DebugNumericSummary"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"device_name" ~value:device_name
  |> Op.set_attr_string ~name:"tensor_name" ~value:tensor_name
  |> Op.set_attr_float ~name:"lower_bound" ~value:lower_bound
  |> Op.set_attr_float ~name:"upper_bound" ~value:upper_bound
  |> Op.set_attr_bool ~name:"mute_if_healthy" ~value:mute_if_healthy
  |> Op.set_attr_bool ~name:"gated_grpc" ~value:gated_grpc
  |> Op.execute1

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
  Op.create context "DecodeAndCropJpeg"
  |> fun op -> Op.add_input op contents
  |> fun op -> Op.add_input op crop_window
  |> Op.set_attr_int ~name:"channels" ~value:channels
  |> Op.set_attr_int ~name:"ratio" ~value:ratio
  |> Op.set_attr_bool ~name:"fancy_upscaling" ~value:fancy_upscaling
  |> Op.set_attr_bool ~name:"try_recover_truncated" ~value:try_recover_truncated
  |> Op.set_attr_float ~name:"acceptable_fraction" ~value:acceptable_fraction
  |> Op.set_attr_string ~name:"dct_method" ~value:dct_method
  |> Op.execute1

let decodeBase64
    (input : [ `string ] t)
  =
  Op.create context "DecodeBase64"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let decodeBmp
    ?(channels=0)
    (contents : [ `string ] t)
  =
  Op.create context "DecodeBmp"
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_int ~name:"channels" ~value:channels
  |> Op.execute1

let decodeGif
    (contents : [ `string ] t)
  =
  Op.create context "DecodeGif"
  |> fun op -> Op.add_input op contents
  |> Op.execute1

let decodeJSONExample
    (json_examples : [ `string ] t)
  =
  Op.create context "DecodeJSONExample"
  |> fun op -> Op.add_input op json_examples
  |> Op.execute1

let decodeJpeg
    ?(channels=0)
    ?(ratio=1)
    ?(fancy_upscaling=true)
    ?(try_recover_truncated=false)
    ?(acceptable_fraction=1.)
    ?(dct_method="")
    (contents : [ `string ] t)
  =
  Op.create context "DecodeJpeg"
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_int ~name:"channels" ~value:channels
  |> Op.set_attr_int ~name:"ratio" ~value:ratio
  |> Op.set_attr_bool ~name:"fancy_upscaling" ~value:fancy_upscaling
  |> Op.set_attr_bool ~name:"try_recover_truncated" ~value:try_recover_truncated
  |> Op.set_attr_float ~name:"acceptable_fraction" ~value:acceptable_fraction
  |> Op.set_attr_string ~name:"dct_method" ~value:dct_method
  |> Op.execute1

let decodePng
    ~type_dtype
    ?(channels=0)
    (contents : [ `string ] t)
  =
  Op.create context "DecodePng"
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_int ~name:"channels" ~value:channels
  |> Op.execute1

let decodeRaw
    ~type_out_type
    ?(little_endian=true)
    (bytes : [ `string ] t)
  =
  Op.create context "DecodeRaw"
  |> fun op -> Op.add_input op bytes
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_bool ~name:"little_endian" ~value:little_endian
  |> Op.execute1

let decodeWav
    ?(desired_channels=(-1))
    ?(desired_samples=(-1))
    (contents : [ `string ] t)
  =
  Op.create context "DecodeWav"
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_int ~name:"desired_channels" ~value:desired_channels
  |> Op.set_attr_int ~name:"desired_samples" ~value:desired_samples
  |> Op.execute2

let deleteSessionTensor
    (handle : [ `string ] t)
  =
  Op.create context "DeleteSessionTensor"
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let denseToDenseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
  =
  Op.create context "DenseToDenseSetOperation"
  |> fun op -> Op.add_input op set1
  |> fun op -> Op.add_input op set2
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type set1)
  |> Op.set_attr_string ~name:"set_operation" ~value:set_operation
  |> Op.set_attr_bool ~name:"validate_indices" ~value:validate_indices
  |> Op.execute3

let denseToSparseBatchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (batch_size : [ `int64 ] t)
    (row_shape : [ `int64 ] t)
  =
  Op.create context "DenseToSparseBatchDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op batch_size
  |> fun op -> Op.add_input op row_shape
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let denseToSparseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2_indices : [ `int64 ] t)
    (set2_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2_shape : [ `int64 ] t)
  =
  Op.create context "DenseToSparseSetOperation"
  |> fun op -> Op.add_input op set1
  |> fun op -> Op.add_input op set2_indices
  |> fun op -> Op.add_input op set2_values
  |> fun op -> Op.add_input op set2_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type set1)
  |> Op.set_attr_string ~name:"set_operation" ~value:set_operation
  |> Op.set_attr_bool ~name:"validate_indices" ~value:validate_indices
  |> Op.execute3

let depthToSpace
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  Op.create context "DepthToSpace"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int ~name:"block_size" ~value:block_size
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let depthwiseConv2dNative
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
  =
  Op.create context "DepthwiseConv2dNative"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let depthwiseConv2dNativeBackpropFilter
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  Op.create context "DepthwiseConv2dNativeBackpropFilter"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter_sizes
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let depthwiseConv2dNativeBackpropInput
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  Op.create context "DepthwiseConv2dNativeBackpropInput"
  |> fun op -> Op.add_input op input_sizes
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type filter)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let dequantize
    ?(mode="MIN_COMBINED")
    (input : 't t)
    (min_range : [ `float ] t)
    (max_range : [ `float ] t)
  =
  Op.create context "Dequantize"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op min_range
  |> fun op -> Op.add_input op max_range
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"mode" ~value:mode
  |> Op.execute1

let deserializeManySparse
    ~type_dtype
    (serialized_sparse : [ `string ] t)
  =
  Op.create context "DeserializeManySparse"
  |> fun op -> Op.add_input op serialized_sparse
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute3

let destroyTemporaryVariable
    ~var_name
    (ref : 't t)
  =
  Op.create context "DestroyTemporaryVariable"
  |> fun op -> Op.add_input op ref
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_string ~name:"var_name" ~value:var_name
  |> Op.execute1

let diag
    (diagonal : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Diag"
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type diagonal)
  |> Op.execute1

let diagPart
    (input : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "DiagPart"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let digamma
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Digamma"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let dilation2D
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Dilation2D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_int_list ~name:"rates" ~value:rates
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let dilation2DBackpropFilter
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Dilation2DBackpropFilter"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_int_list ~name:"rates" ~value:rates
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let dilation2DBackpropInput
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Dilation2DBackpropInput"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_int_list ~name:"rates" ~value:rates
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let div
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Div"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let drawBoundingBoxes
    (images : ([< `float ] as 't) t)
    (boxes : [ `float ] t)
  =
  Op.create context "DrawBoundingBoxes"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op boxes
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.execute1

let dynamicPartition
    ~num_partitions
    (data : 't t)
    (partitions : [ `int32 ] t)
  =
  Op.create context "DynamicPartition"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op partitions
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_int ~name:"num_partitions" ~value:num_partitions
  |> Op.execute ~output_len:num_partitions

let dynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  Op.create context "DynamicStitch"
  |> fun init -> List.fold indices ~init ~f:Op.add_input
  |> fun init -> List.fold data ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn data))
  |> Op.set_attr_int ~name:"N" ~value:(List.length indices)
  |> Op.execute1

let editDistance
    ?(normalize=true)
    (hypothesis_indices : [ `int64 ] t)
    (hypothesis_values : 't t)
    (hypothesis_shape : [ `int64 ] t)
    (truth_indices : [ `int64 ] t)
    (truth_values : 't t)
    (truth_shape : [ `int64 ] t)
  =
  Op.create context "EditDistance"
  |> fun op -> Op.add_input op hypothesis_indices
  |> fun op -> Op.add_input op hypothesis_values
  |> fun op -> Op.add_input op hypothesis_shape
  |> fun op -> Op.add_input op truth_indices
  |> fun op -> Op.add_input op truth_values
  |> fun op -> Op.add_input op truth_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type hypothesis_values)
  |> Op.set_attr_bool ~name:"normalize" ~value:normalize
  |> Op.execute1

let elu
    (features : ([< `float | `double ] as 't) t)
  =
  Op.create context "Elu"
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let eluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  Op.create context "EluGrad"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op outputs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let encodeBase64
    ?(pad=false)
    (input : [ `string ] t)
  =
  Op.create context "EncodeBase64"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_bool ~name:"pad" ~value:pad
  |> Op.execute1

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
  Op.create context "EncodeJpeg"
  |> fun op -> Op.add_input op image
  |> Op.set_attr_string ~name:"format" ~value:format
  |> Op.set_attr_int ~name:"quality" ~value:quality
  |> Op.set_attr_bool ~name:"progressive" ~value:progressive
  |> Op.set_attr_bool ~name:"optimize_size" ~value:optimize_size
  |> Op.set_attr_bool ~name:"chroma_downsampling" ~value:chroma_downsampling
  |> Op.set_attr_string ~name:"density_unit" ~value:density_unit
  |> Op.set_attr_int ~name:"x_density" ~value:x_density
  |> Op.set_attr_int ~name:"y_density" ~value:y_density
  |> Op.set_attr_string ~name:"xmp_metadata" ~value:xmp_metadata
  |> Op.execute1

let encodePng
    ?(compression=(-1))
    (image : ([< `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "EncodePng"
  |> fun op -> Op.add_input op image
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type image)
  |> Op.set_attr_int ~name:"compression" ~value:compression
  |> Op.execute1

let encodeWav
    (audio : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  Op.create context "EncodeWav"
  |> fun op -> Op.add_input op audio
  |> fun op -> Op.add_input op sample_rate
  |> Op.execute1

let enter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  Op.create context "Enter"
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_string ~name:"frame_name" ~value:frame_name
  |> Op.set_attr_bool ~name:"is_constant" ~value:is_constant
  |> Op.set_attr_int ~name:"parallel_iterations" ~value:parallel_iterations
  |> Op.execute1

let equal
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  Op.create context "Equal"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let erf
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Erf"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let erfc
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Erfc"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let exit
    (data : 't t)
  =
  Op.create context "Exit"
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let exp
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Exp"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let expandDims
    (input : 't t)
    (dim : ([< `int32 | `int64 ] as 'tdim) t)
  =
  Op.create context "ExpandDims"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op dim
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tdim" ~value:(Op.Tensor_handle.data_type dim)
  |> Op.execute1

let expm1
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Expm1"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let extractGlimpse
    ?(centered=true)
    ?(normalized=true)
    ?(uniform_noise=true)
    (input : [ `float ] t)
    (size : [ `int32 ] t)
    (offsets : [ `float ] t)
  =
  Op.create context "ExtractGlimpse"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op size
  |> fun op -> Op.add_input op offsets
  |> Op.set_attr_bool ~name:"centered" ~value:centered
  |> Op.set_attr_bool ~name:"normalized" ~value:normalized
  |> Op.set_attr_bool ~name:"uniform_noise" ~value:uniform_noise
  |> Op.execute1

let extractImagePatches
    ~ksizes
    ~strides
    ~rates
    ~padding
    (images : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "ExtractImagePatches"
  |> fun op -> Op.add_input op images
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.set_attr_int_list ~name:"ksizes" ~value:ksizes
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_int_list ~name:"rates" ~value:rates
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let extractJpegShape
    ~type_output_type
    (contents : [ `string ] t)
  =
  Op.create context "ExtractJpegShape"
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_data_type ~name:"output_type" ~value:Operation.Type.(to_data_type (P type_output_type))
  |> Op.execute1

let fFT
    (input : [ `complex64 ] t)
  =
  Op.create context "FFT"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let fFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context "FFT2D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let fFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context "FFT3D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let fIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "FIFOQueue"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let fIFOQueueV2
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "FIFOQueueV2"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let fact
    ()
  =
  Op.create context "Fact"
  |> Op.execute1

let fakeQuantWithMinMaxArgs
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
  =
  Op.create context "FakeQuantWithMinMaxArgs"
  |> fun op -> Op.add_input op inputs__
  |> Op.set_attr_float ~name:"min" ~value:min
  |> Op.set_attr_float ~name:"max" ~value:max
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"narrow_range" ~value:narrow_range
  |> Op.execute1

let fakeQuantWithMinMaxArgsGradient
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
  =
  Op.create context "FakeQuantWithMinMaxArgsGradient"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op inputs__
  |> Op.set_attr_float ~name:"min" ~value:min
  |> Op.set_attr_float ~name:"max" ~value:max
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"narrow_range" ~value:narrow_range
  |> Op.execute1

let fakeQuantWithMinMaxVars
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  Op.create context "FakeQuantWithMinMaxVars"
  |> fun op -> Op.add_input op inputs__
  |> fun op -> Op.add_input op min
  |> fun op -> Op.add_input op max
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"narrow_range" ~value:narrow_range
  |> Op.execute1

let fakeQuantWithMinMaxVarsGradient
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  Op.create context "FakeQuantWithMinMaxVarsGradient"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op inputs__
  |> fun op -> Op.add_input op min
  |> fun op -> Op.add_input op max
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"narrow_range" ~value:narrow_range
  |> Op.execute3

let fakeQuantWithMinMaxVarsPerChannel
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  Op.create context "FakeQuantWithMinMaxVarsPerChannel"
  |> fun op -> Op.add_input op inputs__
  |> fun op -> Op.add_input op min
  |> fun op -> Op.add_input op max
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"narrow_range" ~value:narrow_range
  |> Op.execute1

let fakeQuantWithMinMaxVarsPerChannelGradient
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  Op.create context "FakeQuantWithMinMaxVarsPerChannelGradient"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op inputs__
  |> fun op -> Op.add_input op min
  |> fun op -> Op.add_input op max
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"narrow_range" ~value:narrow_range
  |> Op.execute3

let fakeQueue
    (resource : [ `resource ] t)
  =
  Op.create context "FakeQueue"
  |> fun op -> Op.add_input op resource
  |> Op.execute1

let fill
    (dims : [ `int32 ] t)
    (value : 't t)
  =
  Op.create context "Fill"
  |> fun op -> Op.add_input op dims
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let fixedLengthRecordDataset
    (filenames : [ `string ] t)
    (header_bytes : [ `int64 ] t)
    (record_bytes : [ `int64 ] t)
    (footer_bytes : [ `int64 ] t)
    (buffer_size : [ `int64 ] t)
  =
  Op.create context "FixedLengthRecordDataset"
  |> fun op -> Op.add_input op filenames
  |> fun op -> Op.add_input op header_bytes
  |> fun op -> Op.add_input op record_bytes
  |> fun op -> Op.add_input op footer_bytes
  |> fun op -> Op.add_input op buffer_size
  |> Op.execute1

let fixedLengthRecordReader
    ?(header_bytes=0)
    ~record_bytes
    ?(footer_bytes=0)
    ?(hop_bytes=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "FixedLengthRecordReader"
  |> Op.set_attr_int ~name:"header_bytes" ~value:header_bytes
  |> Op.set_attr_int ~name:"record_bytes" ~value:record_bytes
  |> Op.set_attr_int ~name:"footer_bytes" ~value:footer_bytes
  |> Op.set_attr_int ~name:"hop_bytes" ~value:hop_bytes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

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
  Op.create context "FixedLengthRecordReaderV2"
  |> Op.set_attr_int ~name:"header_bytes" ~value:header_bytes
  |> Op.set_attr_int ~name:"record_bytes" ~value:record_bytes
  |> Op.set_attr_int ~name:"footer_bytes" ~value:footer_bytes
  |> Op.set_attr_int ~name:"hop_bytes" ~value:hop_bytes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_string ~name:"encoding" ~value:encoding
  |> Op.execute1

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
  Op.create context "FixedUnigramCandidateSampler"
  |> fun op -> Op.add_input op true_classes
  |> Op.set_attr_int ~name:"num_true" ~value:num_true
  |> Op.set_attr_int ~name:"num_sampled" ~value:num_sampled
  |> Op.set_attr_bool ~name:"unique" ~value:unique
  |> Op.set_attr_int ~name:"range_max" ~value:range_max
  |> Op.set_attr_string ~name:"vocab_file" ~value:vocab_file
  |> Op.set_attr_float ~name:"distortion" ~value:distortion
  |> Op.set_attr_int ~name:"num_reserved_ids" ~value:num_reserved_ids
  |> Op.set_attr_int ~name:"num_shards" ~value:num_shards
  |> Op.set_attr_int ~name:"shard" ~value:shard
  |> Op.set_attr_float_list ~name:"unigrams" ~value:unigrams
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let floor
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Floor"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let floorDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "FloorDiv"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let floorMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context "FloorMod"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let fractionalAvgPool
    ~pooling_ratio
    ?(pseudo_random=false)
    ?(overlapping=false)
    ?(deterministic=false)
    ?(seed=0)
    ?(seed2=0)
    (value : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context "FractionalAvgPool"
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_float_list ~name:"pooling_ratio" ~value:pooling_ratio
  |> Op.set_attr_bool ~name:"pseudo_random" ~value:pseudo_random
  |> Op.set_attr_bool ~name:"overlapping" ~value:overlapping
  |> Op.set_attr_bool ~name:"deterministic" ~value:deterministic
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let fractionalAvgPoolGrad
    ?(overlapping=false)
    (orig_input_tensor_shape : [ `int64 ] t)
    (out_backprop : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (row_pooling_sequence : [ `int64 ] t)
    (col_pooling_sequence : [ `int64 ] t)
  =
  Op.create context "FractionalAvgPoolGrad"
  |> fun op -> Op.add_input op orig_input_tensor_shape
  |> fun op -> Op.add_input op out_backprop
  |> fun op -> Op.add_input op row_pooling_sequence
  |> fun op -> Op.add_input op col_pooling_sequence
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type out_backprop)
  |> Op.set_attr_bool ~name:"overlapping" ~value:overlapping
  |> Op.execute1

let fractionalMaxPool
    ~pooling_ratio
    ?(pseudo_random=false)
    ?(overlapping=false)
    ?(deterministic=false)
    ?(seed=0)
    ?(seed2=0)
    (value : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context "FractionalMaxPool"
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_float_list ~name:"pooling_ratio" ~value:pooling_ratio
  |> Op.set_attr_bool ~name:"pseudo_random" ~value:pseudo_random
  |> Op.set_attr_bool ~name:"overlapping" ~value:overlapping
  |> Op.set_attr_bool ~name:"deterministic" ~value:deterministic
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let fractionalMaxPoolGrad
    ?(overlapping=false)
    (orig_input : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (row_pooling_sequence : [ `int64 ] t)
    (col_pooling_sequence : [ `int64 ] t)
  =
  Op.create context "FractionalMaxPoolGrad"
  |> fun op -> Op.add_input op orig_input
  |> fun op -> Op.add_input op orig_output
  |> fun op -> Op.add_input op out_backprop
  |> fun op -> Op.add_input op row_pooling_sequence
  |> fun op -> Op.add_input op col_pooling_sequence
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type orig_input)
  |> Op.set_attr_bool ~name:"overlapping" ~value:overlapping
  |> Op.execute1

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
  Op.create context "FusedBatchNorm"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op scale
  |> fun op -> Op.add_input op offset
  |> fun op -> Op.add_input op mean
  |> fun op -> Op.add_input op variance
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_float ~name:"epsilon" ~value:epsilon
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.set_attr_bool ~name:"is_training" ~value:is_training
  |> Op.execute5

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
  Op.create context "FusedBatchNormGrad"
  |> fun op -> Op.add_input op y_backprop
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op scale
  |> fun op -> Op.add_input op reserve_space_1
  |> fun op -> Op.add_input op reserve_space_2
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y_backprop)
  |> Op.set_attr_float ~name:"epsilon" ~value:epsilon
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.set_attr_bool ~name:"is_training" ~value:is_training
  |> Op.execute5

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
  Op.create context "FusedBatchNormGradV2"
  |> fun op -> Op.add_input op y_backprop
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op scale
  |> fun op -> Op.add_input op reserve_space_1
  |> fun op -> Op.add_input op reserve_space_2
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y_backprop)
  |> Op.set_attr_data_type ~name:"U" ~value:(Op.Tensor_handle.data_type reserve_space_1)
  |> Op.set_attr_float ~name:"epsilon" ~value:epsilon
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.set_attr_bool ~name:"is_training" ~value:is_training
  |> Op.execute5

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
  Op.create context "FusedBatchNormV2"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op scale
  |> fun op -> Op.add_input op offset
  |> fun op -> Op.add_input op mean
  |> fun op -> Op.add_input op variance
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"U" ~value:(Op.Tensor_handle.data_type scale)
  |> Op.set_attr_float ~name:"epsilon" ~value:epsilon
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.set_attr_bool ~name:"is_training" ~value:is_training
  |> Op.execute5

let fusedPadConv2D
    ~mode
    ~strides
    ~padding
    (input : ([< `float ] as 't) t)
    (paddings : [ `int32 ] t)
    (filter : ([< `float ] as 't) t)
  =
  Op.create context "FusedPadConv2D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op paddings
  |> fun op -> Op.add_input op filter
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"mode" ~value:mode
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

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
  Op.create context "FusedResizeAndPadConv2D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op size
  |> fun op -> Op.add_input op paddings
  |> fun op -> Op.add_input op filter
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"resize_align_corners" ~value:resize_align_corners
  |> Op.set_attr_string ~name:"mode" ~value:mode
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let gather
    ?(validate_indices=true)
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "Gather"
  |> fun op -> Op.add_input op params
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"Tparams" ~value:(Op.Tensor_handle.data_type params)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"validate_indices" ~value:validate_indices
  |> Op.execute1

let gatherNd
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "GatherNd"
  |> fun op -> Op.add_input op params
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"Tparams" ~value:(Op.Tensor_handle.data_type params)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let gatherV2
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (axis : ([< `int32 | `int64 ] as 'taxis) t)
  =
  Op.create context "GatherV2"
  |> fun op -> Op.add_input op params
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op axis
  |> Op.set_attr_data_type ~name:"Tparams" ~value:(Op.Tensor_handle.data_type params)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_data_type ~name:"Taxis" ~value:(Op.Tensor_handle.data_type axis)
  |> Op.execute1

let generateVocabRemapping
    ~new_vocab_offset
    ~num_new_vocab
    (new_vocab_file : [ `string ] t)
    (old_vocab_file : [ `string ] t)
  =
  Op.create context "GenerateVocabRemapping"
  |> fun op -> Op.add_input op new_vocab_file
  |> fun op -> Op.add_input op old_vocab_file
  |> Op.set_attr_int ~name:"new_vocab_offset" ~value:new_vocab_offset
  |> Op.set_attr_int ~name:"num_new_vocab" ~value:num_new_vocab
  |> Op.execute2

let getSessionHandle
    (value : 't t)
  =
  Op.create context "GetSessionHandle"
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let getSessionHandleV2
    (value : 't t)
  =
  Op.create context "GetSessionHandleV2"
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let getSessionTensor
    ~type_dtype
    (handle : [ `string ] t)
  =
  Op.create context "GetSessionTensor"
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute1

let greater
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Greater"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let greaterEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "GreaterEqual"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let hSVToRGB
    (images : ([< `float | `double ] as 't) t)
  =
  Op.create context "HSVToRGB"
  |> fun op -> Op.add_input op images
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.execute1

let hashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  Op.create context "HashTable"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.execute1

let hashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  Op.create context "HashTableV2"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.execute1

let histogramSummary
    (tag : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "HistogramSummary"
  |> fun op -> Op.add_input op tag
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute1

let iFFT
    (input : [ `complex64 ] t)
  =
  Op.create context "IFFT"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let iFFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context "IFFT2D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let iFFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context "IFFT3D"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let iRFFT
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context "IRFFT"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let iRFFT2D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context "IRFFT2D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let iRFFT3D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context "IRFFT3D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let identity
    (input : 't t)
  =
  Op.create context "Identity"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let identityReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "IdentityReader"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let identityReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "IdentityReaderV2"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let igamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Igamma"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let igammac
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Igammac"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let ignoreErrorsDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
  =
  Op.create context "IgnoreErrorsDataset"
  |> fun op -> Op.add_input op input_dataset
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let imag
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  Op.create context "Imag"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let imageSummary
    ?(max_images=3)
    (tag : [ `string ] t)
    (tensor : ([< `uInt8 | `float | `double ] as 't) t)
  =
  Op.create context "ImageSummary"
  |> fun op -> Op.add_input op tag
  |> fun op -> Op.add_input op tensor
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_int ~name:"max_images" ~value:max_images
  |> Op.execute1

let immutableConst
    ~type_dtype
    ~shape
    ~memory_region_name
    ()
  =
  Op.create context "ImmutableConst"
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"memory_region_name" ~value:memory_region_name
  |> Op.execute1

let inTopK
    ~k
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "InTopK"
  |> fun op -> Op.add_input op predictions
  |> fun op -> Op.add_input op targets
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type targets)
  |> Op.set_attr_int ~name:"k" ~value:k
  |> Op.execute1

let inTopKV2
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
    (k : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "InTopKV2"
  |> fun op -> Op.add_input op predictions
  |> fun op -> Op.add_input op targets
  |> fun op -> Op.add_input op k
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type targets)
  |> Op.execute1

let initializeTable
    (table_handle : [ `string ] t)
    (keys : 'tkey t)
    (values : 'tval t)
  =
  Op.create context "InitializeTable"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tkey" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tval" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let initializeTableFromTextFile
    ~key_index
    ~value_index
    ?(vocab_size=(-1))
    ?(delimiter="	")
    (table_handle : [ `string ] t)
    (filename : [ `string ] t)
  =
  Op.create context "InitializeTableFromTextFile"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op filename
  |> Op.set_attr_int ~name:"key_index" ~value:key_index
  |> Op.set_attr_int ~name:"value_index" ~value:value_index
  |> Op.set_attr_int ~name:"vocab_size" ~value:vocab_size
  |> Op.set_attr_string ~name:"delimiter" ~value:delimiter
  |> Op.execute0

let initializeTableFromTextFileV2
    ~key_index
    ~value_index
    ?(vocab_size=(-1))
    ?(delimiter="	")
    (table_handle : [ `resource ] t)
    (filename : [ `string ] t)
  =
  Op.create context "InitializeTableFromTextFileV2"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op filename
  |> Op.set_attr_int ~name:"key_index" ~value:key_index
  |> Op.set_attr_int ~name:"value_index" ~value:value_index
  |> Op.set_attr_int ~name:"vocab_size" ~value:vocab_size
  |> Op.set_attr_string ~name:"delimiter" ~value:delimiter
  |> Op.execute0

let initializeTableV2
    (table_handle : [ `resource ] t)
    (keys : 'tkey t)
    (values : 'tval t)
  =
  Op.create context "InitializeTableV2"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tkey" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tval" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let inv
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Inv"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let invGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "InvGrad"
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let invert
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Invert"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let invertPermutation
    (x : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "InvertPermutation"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isFinite
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "IsFinite"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isInf
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "IsInf"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isNan
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "IsNan"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isVariableInitialized
    (ref : 'dtype t)
  =
  Op.create context "IsVariableInitialized"
  |> fun op -> Op.add_input op ref
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.execute1

let iterator
    ~shared_name
    ~container
    ~output_types
    ~output_shapes
    ()
  =
  Op.create context "Iterator"
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let iteratorFromStringHandle
    ?(output_types=[])
    ?(output_shapes=[])
    (string_handle : [ `string ] t)
  =
  Op.create context "IteratorFromStringHandle"
  |> fun op -> Op.add_input op string_handle
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let iteratorToStringHandle
    (resource_handle : [ `resource ] t)
  =
  Op.create context "IteratorToStringHandle"
  |> fun op -> Op.add_input op resource_handle
  |> Op.execute1

let l2Loss
    (t : ([< `float | `double ] as 't) t)
  =
  Op.create context "L2Loss"
  |> fun op -> Op.add_input op t
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type t)
  |> Op.execute1

let lMDBReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "LMDBReader"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let lRN
    ?(depth_radius=5)
    ?(bias=1.)
    ?(alpha=1.)
    ?(beta=0.5)
    (input : ([< `float ] as 't) t)
  =
  Op.create context "LRN"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int ~name:"depth_radius" ~value:depth_radius
  |> Op.set_attr_float ~name:"bias" ~value:bias
  |> Op.set_attr_float ~name:"alpha" ~value:alpha
  |> Op.set_attr_float ~name:"beta" ~value:beta
  |> Op.execute1

let lRNGrad
    ?(depth_radius=5)
    ?(bias=1.)
    ?(alpha=1.)
    ?(beta=0.5)
    (input_grads : ([< `float ] as 't) t)
    (input_image : ([< `float ] as 't) t)
    (output_image : ([< `float ] as 't) t)
  =
  Op.create context "LRNGrad"
  |> fun op -> Op.add_input op input_grads
  |> fun op -> Op.add_input op input_image
  |> fun op -> Op.add_input op output_image
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input_grads)
  |> Op.set_attr_int ~name:"depth_radius" ~value:depth_radius
  |> Op.set_attr_float ~name:"bias" ~value:bias
  |> Op.set_attr_float ~name:"alpha" ~value:alpha
  |> Op.set_attr_float ~name:"beta" ~value:beta
  |> Op.execute1

let learnedUnigramCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  Op.create context "LearnedUnigramCandidateSampler"
  |> fun op -> Op.add_input op true_classes
  |> Op.set_attr_int ~name:"num_true" ~value:num_true
  |> Op.set_attr_int ~name:"num_sampled" ~value:num_sampled
  |> Op.set_attr_bool ~name:"unique" ~value:unique
  |> Op.set_attr_int ~name:"range_max" ~value:range_max
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let less
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Less"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let lessEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "LessEqual"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let lgamma
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Lgamma"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let linSpace
    (start : ([< `float | `double ] as 't) t)
    (stop : ([< `float | `double ] as 't) t)
    (num : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "LinSpace"
  |> fun op -> Op.add_input op start
  |> fun op -> Op.add_input op stop
  |> fun op -> Op.add_input op num
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type start)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type num)
  |> Op.execute1

let listDiff
    ~type_out_idx
    (x : 't t)
    (y : 't t)
  =
  Op.create context "ListDiff"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"out_idx" ~value:Operation.Type.(to_data_type (P type_out_idx))
  |> Op.execute2

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
  Op.create context "LoadAndRemapMatrix"
  |> fun op -> Op.add_input op ckpt_path
  |> fun op -> Op.add_input op old_tensor_name
  |> fun op -> Op.add_input op row_remapping
  |> fun op -> Op.add_input op col_remapping
  |> fun op -> Op.add_input op initializing_values
  |> Op.set_attr_int ~name:"num_rows" ~value:num_rows
  |> Op.set_attr_int ~name:"num_cols" ~value:num_cols
  |> Op.set_attr_int ~name:"max_rows_in_memory" ~value:max_rows_in_memory
  |> Op.execute1

let log
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Log"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let log1p
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Log1p"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let logMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "LogMatrixDeterminant"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute2

let logSoftmax
    (logits : ([< `float | `double ] as 't) t)
  =
  Op.create context "LogSoftmax"
  |> fun op -> Op.add_input op logits
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type logits)
  |> Op.execute1

let logUniformCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  Op.create context "LogUniformCandidateSampler"
  |> fun op -> Op.add_input op true_classes
  |> Op.set_attr_int ~name:"num_true" ~value:num_true
  |> Op.set_attr_int ~name:"num_sampled" ~value:num_sampled
  |> Op.set_attr_bool ~name:"unique" ~value:unique
  |> Op.set_attr_int ~name:"range_max" ~value:range_max
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let logicalAnd
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  Op.create context "LogicalAnd"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.execute1

let logicalNot
    (x : [ `bool ] t)
  =
  Op.create context "LogicalNot"
  |> fun op -> Op.add_input op x
  |> Op.execute1

let logicalOr
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  Op.create context "LogicalOr"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.execute1

let lookupTableExport
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `string ] t)
  =
  Op.create context "LookupTableExport"
  |> fun op -> Op.add_input op table_handle
  |> Op.set_attr_data_type ~name:"Tkeys" ~value:Operation.Type.(to_data_type (P type_tkeys))
  |> Op.set_attr_data_type ~name:"Tvalues" ~value:Operation.Type.(to_data_type (P type_tvalues))
  |> Op.execute2

let lookupTableExportV2
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `resource ] t)
  =
  Op.create context "LookupTableExportV2"
  |> fun op -> Op.add_input op table_handle
  |> Op.set_attr_data_type ~name:"Tkeys" ~value:Operation.Type.(to_data_type (P type_tkeys))
  |> Op.set_attr_data_type ~name:"Tvalues" ~value:Operation.Type.(to_data_type (P type_tvalues))
  |> Op.execute2

let lookupTableFind
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  Op.create context "LookupTableFind"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op default_value
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type default_value)
  |> Op.set_attr_data_type ~name:"Tin" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.execute1

let lookupTableFindV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  Op.create context "LookupTableFindV2"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op default_value
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type default_value)
  |> Op.set_attr_data_type ~name:"Tin" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.execute1

let lookupTableImport
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  Op.create context "LookupTableImport"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tin" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let lookupTableImportV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  Op.create context "LookupTableImportV2"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tin" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let lookupTableInsert
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  Op.create context "LookupTableInsert"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tin" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let lookupTableInsertV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  Op.create context "LookupTableInsertV2"
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tin" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let lookupTableSize
    (table_handle : [ `string ] t)
  =
  Op.create context "LookupTableSize"
  |> fun op -> Op.add_input op table_handle
  |> Op.execute1

let lookupTableSizeV2
    (table_handle : [ `resource ] t)
  =
  Op.create context "LookupTableSizeV2"
  |> fun op -> Op.add_input op table_handle
  |> Op.execute1

let loopCond
    (input : [ `bool ] t)
  =
  Op.create context "LoopCond"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let makeIterator
    (dataset : [ `variant ] t)
    (iterator : [ `resource ] t)
  =
  Op.create context "MakeIterator"
  |> fun op -> Op.add_input op dataset
  |> fun op -> Op.add_input op iterator
  |> Op.execute0

let mapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "MapClear"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute0

let mapIncompleteSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "MapIncompleteSize"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let mapSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "MapSize"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let matMul
    ?(transpose_a=false)
    ?(transpose_b=false)
    (a : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (b : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  Op.create context "MatMul"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op b
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.set_attr_bool ~name:"transpose_a" ~value:transpose_a
  |> Op.set_attr_bool ~name:"transpose_b" ~value:transpose_b
  |> Op.execute1

let matchingFiles
    (pattern : [ `string ] t)
  =
  Op.create context "MatchingFiles"
  |> fun op -> Op.add_input op pattern
  |> Op.execute1

let matrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  Op.create context "MatrixBandPart"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op num_lower
  |> fun op -> Op.add_input op num_upper
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "MatrixDeterminant"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixDiag
    (diagonal : 't t)
  =
  Op.create context "MatrixDiag"
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type diagonal)
  |> Op.execute1

let matrixDiagPart
    (input : 't t)
  =
  Op.create context "MatrixDiagPart"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "MatrixInverse"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let matrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  Op.create context "MatrixSetDiag"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "MatrixSolve"
  |> fun op -> Op.add_input op matrix
  |> fun op -> Op.add_input op rhs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type matrix)
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let matrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  Op.create context "MatrixSolveLs"
  |> fun op -> Op.add_input op matrix
  |> fun op -> Op.add_input op rhs
  |> fun op -> Op.add_input op l2_regularizer
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type matrix)
  |> Op.set_attr_bool ~name:"fast" ~value:fast
  |> Op.execute1

let matrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "MatrixTriangularSolve"
  |> fun op -> Op.add_input op matrix
  |> fun op -> Op.add_input op rhs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type matrix)
  |> Op.set_attr_bool ~name:"lower" ~value:lower
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let max
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Max"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let maxPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "MaxPool"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPool3D
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float ] as 't) t)
  =
  Op.create context "MaxPool3D"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPool3DGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input : ([< `float ] as 'tInput) t)
    (orig_output : ([< `float ] as 'tInput) t)
    (grad : ([< `float ] as 't) t)
  =
  Op.create context "MaxPool3DGrad"
  |> fun op -> Op.add_input op orig_input
  |> fun op -> Op.add_input op orig_output
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_data_type ~name:"TInput" ~value:(Op.Tensor_handle.data_type orig_input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPool3DGradGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input : ([< `float ] as 't) t)
    (orig_output : ([< `float ] as 't) t)
    (grad : ([< `float ] as 't) t)
  =
  Op.create context "MaxPool3DGradGrad"
  |> fun op -> Op.add_input op orig_input
  |> fun op -> Op.add_input op orig_output
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type orig_input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPoolGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "MaxPoolGrad"
  |> fun op -> Op.add_input op orig_input
  |> fun op -> Op.add_input op orig_output
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type orig_input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPoolGradGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "MaxPoolGradGrad"
  |> fun op -> Op.add_input op orig_input
  |> fun op -> Op.add_input op orig_output
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type orig_input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPoolGradGradV2
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  Op.create context "MaxPoolGradGradV2"
  |> fun op -> Op.add_input op orig_input
  |> fun op -> Op.add_input op orig_output
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op ksize
  |> fun op -> Op.add_input op strides
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type orig_input)
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPoolGradGradWithArgmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (argmax : ([< `int32 | `int64 ] as 'targmax) t)
  =
  Op.create context "MaxPoolGradGradWithArgmax"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op argmax
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Targmax" ~value:(Op.Tensor_handle.data_type argmax)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let maxPoolGradV2
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  Op.create context "MaxPoolGradV2"
  |> fun op -> Op.add_input op orig_input
  |> fun op -> Op.add_input op orig_output
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op ksize
  |> fun op -> Op.add_input op strides
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type orig_input)
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPoolGradWithArgmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (argmax : ([< `int32 | `int64 ] as 'targmax) t)
  =
  Op.create context "MaxPoolGradWithArgmax"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op argmax
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Targmax" ~value:(Op.Tensor_handle.data_type argmax)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute1

let maxPoolV2
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  Op.create context "MaxPoolV2"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op ksize
  |> fun op -> Op.add_input op strides
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let maxPoolWithArgmax
    ~type_targmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "MaxPoolWithArgmax"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Targmax" ~value:Operation.Type.(to_data_type (P type_targmax))
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute2

let maximum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context "Maximum"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let mean
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Mean"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let merge
    (inputs__ : 't t list)
  =
  Op.create context "Merge"
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn inputs__))
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute2

let mergeSummary
    (inputs__ : [ `string ] t list)
  =
  Op.create context "MergeSummary"
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute1

let mergeV2Checkpoints
    ?(delete_old_dirs=true)
    (checkpoint_prefixes : [ `string ] t)
    (destination_prefix : [ `string ] t)
  =
  Op.create context "MergeV2Checkpoints"
  |> fun op -> Op.add_input op checkpoint_prefixes
  |> fun op -> Op.add_input op destination_prefix
  |> Op.set_attr_bool ~name:"delete_old_dirs" ~value:delete_old_dirs
  |> Op.execute0

let mfcc
    ?(upper_frequency_limit=4000.)
    ?(lower_frequency_limit=20.)
    ?(filterbank_channel_count=40)
    ?(dct_coefficient_count=13)
    (spectrogram : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  Op.create context "Mfcc"
  |> fun op -> Op.add_input op spectrogram
  |> fun op -> Op.add_input op sample_rate
  |> Op.set_attr_float ~name:"upper_frequency_limit" ~value:upper_frequency_limit
  |> Op.set_attr_float ~name:"lower_frequency_limit" ~value:lower_frequency_limit
  |> Op.set_attr_int ~name:"filterbank_channel_count" ~value:filterbank_channel_count
  |> Op.set_attr_int ~name:"dct_coefficient_count" ~value:dct_coefficient_count
  |> Op.execute1

let min
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Min"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let minimum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context "Minimum"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let mirrorPad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context "MirrorPad"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op paddings
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tpaddings" ~value:(Op.Tensor_handle.data_type paddings)
  |> Op.set_attr_string ~name:"mode" ~value:mode
  |> Op.execute1

let mirrorPadGrad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context "MirrorPadGrad"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op paddings
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tpaddings" ~value:(Op.Tensor_handle.data_type paddings)
  |> Op.set_attr_string ~name:"mode" ~value:mode
  |> Op.execute1

let mod_
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context "Mod"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let mul
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Mul"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let multinomial
    ?(seed=0)
    ?(seed2=0)
    (logits : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (num_samples : [ `int32 ] t)
  =
  Op.create context "Multinomial"
  |> fun op -> Op.add_input op logits
  |> fun op -> Op.add_input op num_samples
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type logits)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let mutableDenseHashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ?(initial_num_buckets=131072)
    ?(max_load_factor=0.800000011920929)
    (empty_key : 'key_dtype t)
  =
  Op.create context "MutableDenseHashTable"
  |> fun op -> Op.add_input op empty_key
  |> Op.set_attr_data_type ~name:"key_dtype" ~value:(Op.Tensor_handle.data_type empty_key)
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.set_attr_shape ~name:"value_shape" ~value:value_shape
  |> Op.set_attr_int ~name:"initial_num_buckets" ~value:initial_num_buckets
  |> Op.set_attr_float ~name:"max_load_factor" ~value:max_load_factor
  |> Op.execute1

let mutableDenseHashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ?(initial_num_buckets=131072)
    ?(max_load_factor=0.800000011920929)
    (empty_key : 'key_dtype t)
  =
  Op.create context "MutableDenseHashTableV2"
  |> fun op -> Op.add_input op empty_key
  |> Op.set_attr_data_type ~name:"key_dtype" ~value:(Op.Tensor_handle.data_type empty_key)
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.set_attr_shape ~name:"value_shape" ~value:value_shape
  |> Op.set_attr_int ~name:"initial_num_buckets" ~value:initial_num_buckets
  |> Op.set_attr_float ~name:"max_load_factor" ~value:max_load_factor
  |> Op.execute1

let mutableHashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  Op.create context "MutableHashTable"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.execute1

let mutableHashTableOfTensors
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ()
  =
  Op.create context "MutableHashTableOfTensors"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.set_attr_shape ~name:"value_shape" ~value:value_shape
  |> Op.execute1

let mutableHashTableOfTensorsV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ()
  =
  Op.create context "MutableHashTableOfTensorsV2"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.set_attr_shape ~name:"value_shape" ~value:value_shape
  |> Op.execute1

let mutableHashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  Op.create context "MutableHashTableV2"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.execute1

let neg
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Neg"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let negTrain
    ~vocab_count
    ~num_negative_samples
    (w_in : [ `float ] t)
    (w_out : [ `float ] t)
    (examples : [ `int32 ] t)
    (labels : [ `int32 ] t)
    (lr : [ `float ] t)
  =
  Op.create context "NegTrain"
  |> fun op -> Op.add_input op w_in
  |> fun op -> Op.add_input op w_out
  |> fun op -> Op.add_input op examples
  |> fun op -> Op.add_input op labels
  |> fun op -> Op.add_input op lr
  |> Op.set_attr_int_list ~name:"vocab_count" ~value:vocab_count
  |> Op.set_attr_int ~name:"num_negative_samples" ~value:num_negative_samples
  |> Op.execute0

let nextIteration
    (data : 't t)
  =
  Op.create context "NextIteration"
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let noOp
    ()
  =
  Op.create context "NoOp"
  |> Op.execute0

let nonMaxSuppression
    ?(iou_threshold=0.5)
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
  =
  Op.create context "NonMaxSuppression"
  |> fun op -> Op.add_input op boxes
  |> fun op -> Op.add_input op scores
  |> fun op -> Op.add_input op max_output_size
  |> Op.set_attr_float ~name:"iou_threshold" ~value:iou_threshold
  |> Op.execute1

let nonMaxSuppressionV2
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
    (iou_threshold : [ `float ] t)
  =
  Op.create context "NonMaxSuppressionV2"
  |> fun op -> Op.add_input op boxes
  |> fun op -> Op.add_input op scores
  |> fun op -> Op.add_input op max_output_size
  |> fun op -> Op.add_input op iou_threshold
  |> Op.execute1

let notEqual
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  Op.create context "NotEqual"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let oneHot
    ?(axis=(-1))
    (indices : ([< `uInt8 | `int32 | `int64 ] as 'tI) t)
    (depth : [ `int32 ] t)
    (on_value : 't t)
    (off_value : 't t)
  =
  Op.create context "OneHot"
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op depth
  |> fun op -> Op.add_input op on_value
  |> fun op -> Op.add_input op off_value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type on_value)
  |> Op.set_attr_data_type ~name:"TI" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_int ~name:"axis" ~value:axis
  |> Op.execute1

let oneShotIterator
    ~output_types
    ~output_shapes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "OneShotIterator"
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let onesLike
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "OnesLike"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let orderedMapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "OrderedMapClear"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute0

let orderedMapIncompleteSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "OrderedMapIncompleteSize"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let orderedMapSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "OrderedMapSize"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let pack
    ?(axis=0)
    (values : 't t list)
  =
  Op.create context "Pack"
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.set_attr_int ~name:"axis" ~value:axis
  |> Op.execute1

let pad
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context "Pad"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op paddings
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tpaddings" ~value:(Op.Tensor_handle.data_type paddings)
  |> Op.execute1

let padV2
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
    (constant_values : 't t)
  =
  Op.create context "PadV2"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op paddings
  |> fun op -> Op.add_input op constant_values
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tpaddings" ~value:(Op.Tensor_handle.data_type paddings)
  |> Op.execute1

let paddingFIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "PaddingFIFOQueue"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let paddingFIFOQueueV2
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "PaddingFIFOQueueV2"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let parallelConcat
    ~shape
    (values : 't t list)
  =
  Op.create context "ParallelConcat"
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let parallelDynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  Op.create context "ParallelDynamicStitch"
  |> fun init -> List.fold indices ~init ~f:Op.add_input
  |> fun init -> List.fold data ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn data))
  |> Op.set_attr_int ~name:"N" ~value:(List.length indices)
  |> Op.execute1

let parameterizedTruncatedNormal
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
    (means : ([< `float | `double ] as 'dtype) t)
    (stdevs : ([< `float | `double ] as 'dtype) t)
    (minvals : ([< `float | `double ] as 'dtype) t)
    (maxvals : ([< `float | `double ] as 'dtype) t)
  =
  Op.create context "ParameterizedTruncatedNormal"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op means
  |> fun op -> Op.add_input op stdevs
  |> fun op -> Op.add_input op minvals
  |> fun op -> Op.add_input op maxvals
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type means)
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let parseTensor
    ~type_out_type
    (serialized : [ `string ] t)
  =
  Op.create context "ParseTensor"
  |> fun op -> Op.add_input op serialized
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.execute1

let placeholder
    ~type_dtype
    ?(shape=[])
    ()
  =
  Op.create context "Placeholder"
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let placeholderV2
    ~type_dtype
    ~shape
    ()
  =
  Op.create context "PlaceholderV2"
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let placeholderWithDefault
    ~shape
    (input : 'dtype t)
  =
  Op.create context "PlaceholderWithDefault"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let polygamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Polygamma"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let populationCount
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "PopulationCount"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let pow
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Pow"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let prefetchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (buffer_size : [ `int64 ] t)
  =
  Op.create context "PrefetchDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op buffer_size
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let preventGradient
    ?(message="")
    (input : 't t)
  =
  Op.create context "PreventGradient"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"message" ~value:message
  |> Op.execute1

let priorityQueue
    ?(component_types=[])
    ~shapes
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "PriorityQueue"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let priorityQueueV2
    ?(component_types=[])
    ~shapes
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "PriorityQueueV2"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let prod
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Prod"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let qr
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "Qr"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"full_matrices" ~value:full_matrices
  |> Op.execute2

let quantizeAndDequantize
    ?(signed_input=true)
    ?(num_bits=8)
    ?(range_given=false)
    ?(input_min=0.)
    ?(input_max=0.)
    (input : ([< `float | `double ] as 't) t)
  =
  Op.create context "QuantizeAndDequantize"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"signed_input" ~value:signed_input
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"range_given" ~value:range_given
  |> Op.set_attr_float ~name:"input_min" ~value:input_min
  |> Op.set_attr_float ~name:"input_max" ~value:input_max
  |> Op.execute1

let quantizeAndDequantizeV2
    ?(signed_input=true)
    ?(num_bits=8)
    ?(range_given=false)
    (input : ([< `float | `double ] as 't) t)
    (input_min : ([< `float | `double ] as 't) t)
    (input_max : ([< `float | `double ] as 't) t)
  =
  Op.create context "QuantizeAndDequantizeV2"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op input_min
  |> fun op -> Op.add_input op input_max
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"signed_input" ~value:signed_input
  |> Op.set_attr_int ~name:"num_bits" ~value:num_bits
  |> Op.set_attr_bool ~name:"range_given" ~value:range_given
  |> Op.execute1

let quantizeAndDequantizeV3
    ?(signed_input=true)
    ?(range_given=true)
    (input : ([< `float | `double ] as 't) t)
    (input_min : ([< `float | `double ] as 't) t)
    (input_max : ([< `float | `double ] as 't) t)
    (num_bits : [ `int32 ] t)
  =
  Op.create context "QuantizeAndDequantizeV3"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op input_min
  |> fun op -> Op.add_input op input_max
  |> fun op -> Op.add_input op num_bits
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"signed_input" ~value:signed_input
  |> Op.set_attr_bool ~name:"range_given" ~value:range_given
  |> Op.execute1

let quantizeDownAndShrinkRange
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  Op.create context "QuantizeDownAndShrinkRange"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op input_min
  |> fun op -> Op.add_input op input_max
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute3

let quantizeV2
    ~type_t
    ?(mode="MIN_COMBINED")
    (input : [ `float ] t)
    (min_range : [ `float ] t)
    (max_range : [ `float ] t)
  =
  Op.create context "QuantizeV2"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op min_range
  |> fun op -> Op.add_input op max_range
  |> Op.set_attr_data_type ~name:"T" ~value:Operation.Type.(to_data_type (P type_t))
  |> Op.set_attr_string ~name:"mode" ~value:mode
  |> Op.execute3

let quantizedAdd
    ~type_toutput
    (x : 't1 t)
    (y : 't2 t)
    (min_x : [ `float ] t)
    (max_x : [ `float ] t)
    (min_y : [ `float ] t)
    (max_y : [ `float ] t)
  =
  Op.create context "QuantizedAdd"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op min_x
  |> fun op -> Op.add_input op max_x
  |> fun op -> Op.add_input op min_y
  |> fun op -> Op.add_input op max_y
  |> Op.set_attr_data_type ~name:"Toutput" ~value:Operation.Type.(to_data_type (P type_toutput))
  |> Op.set_attr_data_type ~name:"T1" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"T2" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute3

let quantizedAvgPool
    ~ksize
    ~strides
    ~padding
    (input : 't t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
  =
  Op.create context "QuantizedAvgPool"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op min_input
  |> fun op -> Op.add_input op max_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute3

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
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type t)
  |> Op.set_attr_float ~name:"variance_epsilon" ~value:variance_epsilon
  |> Op.set_attr_bool ~name:"scale_after_normalization" ~value:scale_after_normalization
  |> Op.execute3

let quantizedBiasAdd
    ~type_out_type
    (input : 't1 t)
    (bias : 't2 t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
    (min_bias : [ `float ] t)
    (max_bias : [ `float ] t)
  =
  Op.create context "QuantizedBiasAdd"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op bias
  |> fun op -> Op.add_input op min_input
  |> fun op -> Op.add_input op max_input
  |> fun op -> Op.add_input op min_bias
  |> fun op -> Op.add_input op max_bias
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"T1" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"T2" ~value:(Op.Tensor_handle.data_type bias)
  |> Op.execute3

let quantizedConcat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
    (input_mins : [ `float ] t list)
    (input_maxes : [ `float ] t list)
  =
  Op.create context "QuantizedConcat"
  |> fun op -> Op.add_input op concat_dim
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> fun init -> List.fold input_mins ~init ~f:Op.add_input
  |> fun init -> List.fold input_maxes ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.execute3

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
  Op.create context "QuantizedConv2D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op filter
  |> fun op -> Op.add_input op min_input
  |> fun op -> Op.add_input op max_input
  |> fun op -> Op.add_input op min_filter
  |> fun op -> Op.add_input op max_filter
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tfilter" ~value:(Op.Tensor_handle.data_type filter)
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute3

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
  Op.create context "QuantizedInstanceNorm"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op x_min
  |> fun op -> Op.add_input op x_max
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_bool ~name:"output_range_given" ~value:output_range_given
  |> Op.set_attr_float ~name:"given_y_min" ~value:given_y_min
  |> Op.set_attr_float ~name:"given_y_max" ~value:given_y_max
  |> Op.set_attr_float ~name:"variance_epsilon" ~value:variance_epsilon
  |> Op.set_attr_float ~name:"min_separation" ~value:min_separation
  |> Op.execute3

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
  Op.create context "QuantizedMatMul"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op b
  |> fun op -> Op.add_input op min_a
  |> fun op -> Op.add_input op max_a
  |> fun op -> Op.add_input op min_b
  |> fun op -> Op.add_input op max_b
  |> Op.set_attr_data_type ~name:"Toutput" ~value:Operation.Type.(to_data_type (P type_toutput))
  |> Op.set_attr_data_type ~name:"T1" ~value:(Op.Tensor_handle.data_type a)
  |> Op.set_attr_data_type ~name:"T2" ~value:(Op.Tensor_handle.data_type b)
  |> Op.set_attr_bool ~name:"transpose_a" ~value:transpose_a
  |> Op.set_attr_bool ~name:"transpose_b" ~value:transpose_b
  |> Op.execute3

let quantizedMaxPool
    ~ksize
    ~strides
    ~padding
    (input : 't t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
  =
  Op.create context "QuantizedMaxPool"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op min_input
  |> fun op -> Op.add_input op max_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"ksize" ~value:ksize
  |> Op.set_attr_int_list ~name:"strides" ~value:strides
  |> Op.set_attr_string ~name:"padding" ~value:padding
  |> Op.execute3

let quantizedMul
    ~type_toutput
    (x : 't1 t)
    (y : 't2 t)
    (min_x : [ `float ] t)
    (max_x : [ `float ] t)
    (min_y : [ `float ] t)
    (max_y : [ `float ] t)
  =
  Op.create context "QuantizedMul"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op min_x
  |> fun op -> Op.add_input op max_x
  |> fun op -> Op.add_input op min_y
  |> fun op -> Op.add_input op max_y
  |> Op.set_attr_data_type ~name:"Toutput" ~value:Operation.Type.(to_data_type (P type_toutput))
  |> Op.set_attr_data_type ~name:"T1" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"T2" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute3

let quantizedRelu
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  Op.create context "QuantizedRelu"
  |> fun op -> Op.add_input op features
  |> fun op -> Op.add_input op min_features
  |> fun op -> Op.add_input op max_features
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute3

let quantizedRelu6
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  Op.create context "QuantizedRelu6"
  |> fun op -> Op.add_input op features
  |> fun op -> Op.add_input op min_features
  |> fun op -> Op.add_input op max_features
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute3

let quantizedReluX
    ~type_out_type
    (features : 'tinput t)
    (max_value : [ `float ] t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  Op.create context "QuantizedReluX"
  |> fun op -> Op.add_input op features
  |> fun op -> Op.add_input op max_value
  |> fun op -> Op.add_input op min_features
  |> fun op -> Op.add_input op max_features
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute3

let quantizedReshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  Op.create context "QuantizedReshape"
  |> fun op -> Op.add_input op tensor
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op input_min
  |> fun op -> Op.add_input op input_max
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_data_type ~name:"Tshape" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.execute3

let quantizedResizeBilinear
    ?(align_corners=false)
    (images : ([< `float ] as 't) t)
    (size : [ `int32 ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  Op.create context "QuantizedResizeBilinear"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op size
  |> fun op -> Op.add_input op min
  |> fun op -> Op.add_input op max
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute3

let queueClose
    ?(cancel_pending_enqueues=false)
    (handle : [ `string ] t)
  =
  Op.create context "QueueClose"
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_bool ~name:"cancel_pending_enqueues" ~value:cancel_pending_enqueues
  |> Op.execute0

let queueCloseV2
    ?(cancel_pending_enqueues=false)
    (handle : [ `resource ] t)
  =
  Op.create context "QueueCloseV2"
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_bool ~name:"cancel_pending_enqueues" ~value:cancel_pending_enqueues
  |> Op.execute0

let queueIsClosed
    (handle : [ `string ] t)
  =
  Op.create context "QueueIsClosed"
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let queueIsClosedV2
    (handle : [ `resource ] t)
  =
  Op.create context "QueueIsClosedV2"
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let queueSize
    (handle : [ `string ] t)
  =
  Op.create context "QueueSize"
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let queueSizeV2
    (handle : [ `resource ] t)
  =
  Op.create context "QueueSizeV2"
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let rFFT
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context "RFFT"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let rFFT2D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context "RFFT2D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let rFFT3D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context "RFFT3D"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let rGBToHSV
    (images : ([< `float | `double ] as 't) t)
  =
  Op.create context "RGBToHSV"
  |> fun op -> Op.add_input op images
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.execute1

let randomCrop
    ?(seed=0)
    ?(seed2=0)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int64 ] t)
  =
  Op.create context "RandomCrop"
  |> fun op -> Op.add_input op image
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type image)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let randomGamma
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (alpha : ([< `float | `double ] as 't) t)
  =
  Op.create context "RandomGamma"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op alpha
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type alpha)
  |> Op.set_attr_data_type ~name:"S" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let randomPoisson
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (rate : ([< `float | `double ] as 'dtype) t)
  =
  Op.create context "RandomPoisson"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op rate
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type rate)
  |> Op.set_attr_data_type ~name:"S" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let randomPoissonV2
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (rate : ([< `float | `double | `int32 | `int64 ] as 'r) t)
  =
  Op.create context "RandomPoissonV2"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op rate
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"S" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_data_type ~name:"R" ~value:(Op.Tensor_handle.data_type rate)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let randomShuffle
    ?(seed=0)
    ?(seed2=0)
    (value : 't t)
  =
  Op.create context "RandomShuffle"
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

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
  Op.create context "RandomShuffleQueue"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"min_after_dequeue" ~value:min_after_dequeue
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

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
  Op.create context "RandomShuffleQueueV2"
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"min_after_dequeue" ~value:min_after_dequeue
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let randomStandardNormal
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "RandomStandardNormal"
  |> fun op -> Op.add_input op shape
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let randomUniform
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "RandomUniform"
  |> fun op -> Op.add_input op shape
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let randomUniformInt
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
    (minval : ([< `int32 | `int64 ] as 'tout) t)
    (maxval : ([< `int32 | `int64 ] as 'tout) t)
  =
  Op.create context "RandomUniformInt"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op minval
  |> fun op -> Op.add_input op maxval
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type minval)
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let range
    (start : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (limit : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (delta : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Range"
  |> fun op -> Op.add_input op start
  |> fun op -> Op.add_input op limit
  |> fun op -> Op.add_input op delta
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type start)
  |> Op.execute1

let rangeDataset
    ~output_types
    ~output_shapes
    (start : [ `int64 ] t)
    (stop : [ `int64 ] t)
    (step : [ `int64 ] t)
  =
  Op.create context "RangeDataset"
  |> fun op -> Op.add_input op start
  |> fun op -> Op.add_input op stop
  |> fun op -> Op.add_input op step
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let rank
    (input : 't t)
  =
  Op.create context "Rank"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let readFile
    (filename : [ `string ] t)
  =
  Op.create context "ReadFile"
  |> fun op -> Op.add_input op filename
  |> Op.execute1

let readerNumRecordsProduced
    (reader_handle : [ `string ] t)
  =
  Op.create context "ReaderNumRecordsProduced"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerNumRecordsProducedV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context "ReaderNumRecordsProducedV2"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerNumWorkUnitsCompleted
    (reader_handle : [ `string ] t)
  =
  Op.create context "ReaderNumWorkUnitsCompleted"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerNumWorkUnitsCompletedV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context "ReaderNumWorkUnitsCompletedV2"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerRead
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
  =
  Op.create context "ReaderRead"
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> Op.execute2

let readerReadUpTo
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
    (num_records : [ `int64 ] t)
  =
  Op.create context "ReaderReadUpTo"
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> fun op -> Op.add_input op num_records
  |> Op.execute2

let readerReadUpToV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
    (num_records : [ `int64 ] t)
  =
  Op.create context "ReaderReadUpToV2"
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> fun op -> Op.add_input op num_records
  |> Op.execute2

let readerReadV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
  =
  Op.create context "ReaderReadV2"
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> Op.execute2

let readerReset
    (reader_handle : [ `string ] t)
  =
  Op.create context "ReaderReset"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute0

let readerResetV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context "ReaderResetV2"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute0

let readerRestoreState
    (reader_handle : [ `string ] t)
    (state : [ `string ] t)
  =
  Op.create context "ReaderRestoreState"
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op state
  |> Op.execute0

let readerRestoreStateV2
    (reader_handle : [ `resource ] t)
    (state : [ `string ] t)
  =
  Op.create context "ReaderRestoreStateV2"
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op state
  |> Op.execute0

let readerSerializeState
    (reader_handle : [ `string ] t)
  =
  Op.create context "ReaderSerializeState"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerSerializeStateV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context "ReaderSerializeStateV2"
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let real
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  Op.create context "Real"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let realDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "RealDiv"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let reciprocal
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Reciprocal"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let reciprocalGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "ReciprocalGrad"
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let recordInput
    ~file_pattern
    ?(file_random_seed=301)
    ?(file_shuffle_shift_ratio=0.)
    ?(file_buffer_size=10000)
    ?(file_parallelism=16)
    ?(batch_size=32)
    ()
  =
  Op.create context "RecordInput"
  |> Op.set_attr_string ~name:"file_pattern" ~value:file_pattern
  |> Op.set_attr_int ~name:"file_random_seed" ~value:file_random_seed
  |> Op.set_attr_float ~name:"file_shuffle_shift_ratio" ~value:file_shuffle_shift_ratio
  |> Op.set_attr_int ~name:"file_buffer_size" ~value:file_buffer_size
  |> Op.set_attr_int ~name:"file_parallelism" ~value:file_parallelism
  |> Op.set_attr_int ~name:"batch_size" ~value:batch_size
  |> Op.execute1

let reduceJoin
    ?(keep_dims=false)
    ?(separator="")
    (inputs__ : [ `string ] t)
    (reduction_indices : [ `int32 ] t)
  =
  Op.create context "ReduceJoin"
  |> fun op -> Op.add_input op inputs__
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.set_attr_string ~name:"separator" ~value:separator
  |> Op.execute1

let refEnter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  Op.create context "RefEnter"
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_string ~name:"frame_name" ~value:frame_name
  |> Op.set_attr_bool ~name:"is_constant" ~value:is_constant
  |> Op.set_attr_int ~name:"parallel_iterations" ~value:parallel_iterations
  |> Op.execute1

let refExit
    (data : 't t)
  =
  Op.create context "RefExit"
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let refIdentity
    (input : 't t)
  =
  Op.create context "RefIdentity"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let refMerge
    (inputs__ : 't t list)
  =
  Op.create context "RefMerge"
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn inputs__))
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute2

let refNextIteration
    (data : 't t)
  =
  Op.create context "RefNextIteration"
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let refSelect
    (index : [ `int32 ] t)
    (inputs__ : 't t list)
  =
  Op.create context "RefSelect"
  |> fun op -> Op.add_input op index
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn inputs__))
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute1

let refSwitch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  Op.create context "RefSwitch"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op pred
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute2

let relu
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Relu"
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let relu6
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Relu6"
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let relu6Grad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Relu6Grad"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let reluGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "ReluGrad"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let repeatDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  Op.create context "RepeatDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op count
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let requantizationRange
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  Op.create context "RequantizationRange"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op input_min
  |> fun op -> Op.add_input op input_max
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute2

let requantize
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
    (requested_output_min : [ `float ] t)
    (requested_output_max : [ `float ] t)
  =
  Op.create context "Requantize"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op input_min
  |> fun op -> Op.add_input op input_max
  |> fun op -> Op.add_input op requested_output_min
  |> fun op -> Op.add_input op requested_output_max
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"Tinput" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute3

let reshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
  =
  Op.create context "Reshape"
  |> fun op -> Op.add_input op tensor
  |> fun op -> Op.add_input op shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_data_type ~name:"Tshape" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.execute1

let resizeArea
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  Op.create context "ResizeArea"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute1

let resizeBicubic
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  Op.create context "ResizeBicubic"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute1

let resizeBicubicGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  Op.create context "ResizeBicubicGrad"
  |> fun op -> Op.add_input op grads
  |> fun op -> Op.add_input op original_image
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type original_image)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute1

let resizeBilinear
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  Op.create context "ResizeBilinear"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute1

let resizeBilinearGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  Op.create context "ResizeBilinearGrad"
  |> fun op -> Op.add_input op grads
  |> fun op -> Op.add_input op original_image
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type original_image)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute1

let resizeNearestNeighbor
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  Op.create context "ResizeNearestNeighbor"
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute1

let resizeNearestNeighborGrad
    ?(align_corners=false)
    (grads : ([< `uInt8 | `int32 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  Op.create context "ResizeNearestNeighborGrad"
  |> fun op -> Op.add_input op grads
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grads)
  |> Op.set_attr_bool ~name:"align_corners" ~value:align_corners
  |> Op.execute1

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
  Op.create context "ResourceApplyAdadelta"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op accum_update
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op rho
  |> fun op -> Op.add_input op epsilon
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

let resourceApplyAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ResourceApplyAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  Op.create context "ResourceApplyAdagradDA"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op gradient_accumulator
  |> fun op -> Op.add_input op gradient_squared_accumulator
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op global_step
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type beta1_power)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.set_attr_bool ~name:"use_nesterov" ~value:use_nesterov
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  Op.create context "ResourceApplyFtrl"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op linear
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op lr_power
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

let resourceApplyGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ResourceApplyGradientDescent"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op alpha
  |> fun op -> Op.add_input op delta
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type alpha)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

let resourceApplyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ResourceApplyMomentum"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op momentum
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.set_attr_bool ~name:"use_nesterov" ~value:use_nesterov
  |> Op.execute0

let resourceApplyProximalAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ResourceApplyProximalAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

let resourceApplyProximalGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ResourceApplyProximalGradientDescent"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op alpha
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op delta
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type alpha)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  Op.create context "ResourceApplyRMSProp"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op ms
  |> fun op -> Op.add_input op mom
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op rho
  |> fun op -> Op.add_input op momentum
  |> fun op -> Op.add_input op epsilon
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  Op.create context "ResourceSparseApplyAdadelta"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op accum_update
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op rho
  |> fun op -> Op.add_input op epsilon
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

let resourceSparseApplyAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "ResourceSparseApplyAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  Op.create context "ResourceSparseApplyMomentum"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op momentum
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.set_attr_bool ~name:"use_nesterov" ~value:use_nesterov
  |> Op.execute0

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
  Op.create context "ResourceSparseApplyProximalAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

let resourceSparseApplyProximalGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "ResourceSparseApplyProximalGradientDescent"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op alpha
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type alpha)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type lr)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute0

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
  Op.create context "ResourceStridedSliceAssign"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op begin__
  |> fun op -> Op.add_input op end__
  |> fun op -> Op.add_input op strides
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"Index" ~value:(Op.Tensor_handle.data_type begin__)
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_int ~name:"begin_mask" ~value:begin_mask
  |> Op.set_attr_int ~name:"end_mask" ~value:end_mask
  |> Op.set_attr_int ~name:"ellipsis_mask" ~value:ellipsis_mask
  |> Op.set_attr_int ~name:"new_axis_mask" ~value:new_axis_mask
  |> Op.set_attr_int ~name:"shrink_axis_mask" ~value:shrink_axis_mask
  |> Op.execute0

let restore
    ~type_dt
    ?(preferred_shard=(-1))
    (file_pattern : [ `string ] t)
    (tensor_name : [ `string ] t)
  =
  Op.create context "Restore"
  |> fun op -> Op.add_input op file_pattern
  |> fun op -> Op.add_input op tensor_name
  |> Op.set_attr_data_type ~name:"dt" ~value:Operation.Type.(to_data_type (P type_dt))
  |> Op.set_attr_int ~name:"preferred_shard" ~value:preferred_shard
  |> Op.execute1

let restoreIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  Op.create context "RestoreIterator"
  |> fun op -> Op.add_input op iterator
  |> fun op -> Op.add_input op path
  |> Op.execute0

let restoreSlice
    ~type_dt
    ?(preferred_shard=(-1))
    (file_pattern : [ `string ] t)
    (tensor_name : [ `string ] t)
    (shape_and_slice : [ `string ] t)
  =
  Op.create context "RestoreSlice"
  |> fun op -> Op.add_input op file_pattern
  |> fun op -> Op.add_input op tensor_name
  |> fun op -> Op.add_input op shape_and_slice
  |> Op.set_attr_data_type ~name:"dt" ~value:Operation.Type.(to_data_type (P type_dt))
  |> Op.set_attr_int ~name:"preferred_shard" ~value:preferred_shard
  |> Op.execute1

let reverse
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (dims : [ `bool ] t)
  =
  Op.create context "Reverse"
  |> fun op -> Op.add_input op tensor
  |> fun op -> Op.add_input op dims
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.execute1

let reverseSequence
    ~seq_dim
    ?(batch_dim=0)
    (input : 't t)
    (seq_lengths : ([< `int32 | `int64 ] as 'tlen) t)
  =
  Op.create context "ReverseSequence"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op seq_lengths
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tlen" ~value:(Op.Tensor_handle.data_type seq_lengths)
  |> Op.set_attr_int ~name:"seq_dim" ~value:seq_dim
  |> Op.set_attr_int ~name:"batch_dim" ~value:batch_dim
  |> Op.execute1

let reverseV2
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "ReverseV2"
  |> fun op -> Op.add_input op tensor
  |> fun op -> Op.add_input op axis
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type axis)
  |> Op.execute1

let rint
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context "Rint"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let round
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Round"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let rsqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Rsqrt"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let rsqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "RsqrtGrad"
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let saveIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  Op.create context "SaveIterator"
  |> fun op -> Op.add_input op iterator
  |> fun op -> Op.add_input op path
  |> Op.execute0

let scalarSummary
    (tags : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "ScalarSummary"
  |> fun op -> Op.add_input op tags
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute1

let scatterAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ScatterAdd"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let scatterDiv
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ScatterDiv"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let scatterMul
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ScatterMul"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let scatterNd
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
    (shape : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "ScatterNd"
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> fun op -> Op.add_input op shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type updates)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let scatterNdAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ScatterNdAdd"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let scatterNdNonAliasingAdd
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ScatterNdNonAliasingAdd"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let scatterNdSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ScatterNdSub"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let scatterNdUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  Op.create context "ScatterNdUpdate"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let scatterSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "ScatterSub"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let scatterUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  Op.create context "ScatterUpdate"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op updates
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let sdcaFprint
    (input : [ `string ] t)
  =
  Op.create context "SdcaFprint"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let sdcaShrinkL1
    ~l1
    ~l2
    (weights : [ `float ] t list)
  =
  Op.create context "SdcaShrinkL1"
  |> fun init -> List.fold weights ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"num_features" ~value:(List.length weights)
  |> Op.set_attr_float ~name:"l1" ~value:l1
  |> Op.set_attr_float ~name:"l2" ~value:l2
  |> Op.execute0

let segmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "SegmentMax"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentMean
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "SegmentMean"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentMin
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "SegmentMin"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentProd
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "SegmentProd"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "SegmentSum"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let select
    (condition : [ `bool ] t)
    (t : 't t)
    (e : 't t)
  =
  Op.create context "Select"
  |> fun op -> Op.add_input op condition
  |> fun op -> Op.add_input op t
  |> fun op -> Op.add_input op e
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type t)
  |> Op.execute1

let selfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context "SelfAdjointEig"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let selfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "SelfAdjointEigV2"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"compute_v" ~value:compute_v
  |> Op.execute2

let selu
    (features : ([< `float | `double ] as 't) t)
  =
  Op.create context "Selu"
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let seluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  Op.create context "SeluGrad"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op outputs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let serializeManySparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  Op.create context "SerializeManySparse"
  |> fun op -> Op.add_input op sparse_indices
  |> fun op -> Op.add_input op sparse_values
  |> fun op -> Op.add_input op sparse_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sparse_values)
  |> Op.execute1

let serializeSparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  Op.create context "SerializeSparse"
  |> fun op -> Op.add_input op sparse_indices
  |> fun op -> Op.add_input op sparse_values
  |> fun op -> Op.add_input op sparse_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sparse_values)
  |> Op.execute1

let serializeTensor
    (tensor : 't t)
  =
  Op.create context "SerializeTensor"
  |> fun op -> Op.add_input op tensor
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.execute1

let setSize
    ?(validate_indices=true)
    (set_indices : [ `int64 ] t)
    (set_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set_shape : [ `int64 ] t)
  =
  Op.create context "SetSize"
  |> fun op -> Op.add_input op set_indices
  |> fun op -> Op.add_input op set_values
  |> fun op -> Op.add_input op set_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type set_values)
  |> Op.set_attr_bool ~name:"validate_indices" ~value:validate_indices
  |> Op.execute1

let shape
    ~type_out_type
    (input : 't t)
  =
  Op.create context "Shape"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let shapeN
    ~type_out_type
    (input : 't t list)
  =
  Op.create context "ShapeN"
  |> fun init -> List.fold input ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn input))
  |> Op.set_attr_int ~name:"N" ~value:(List.length input)
  |> Op.execute ~output_len:(List.length input)

let shardedFilename
    (basename : [ `string ] t)
    (shard : [ `int32 ] t)
    (num_shards : [ `int32 ] t)
  =
  Op.create context "ShardedFilename"
  |> fun op -> Op.add_input op basename
  |> fun op -> Op.add_input op shard
  |> fun op -> Op.add_input op num_shards
  |> Op.execute1

let shardedFilespec
    (basename : [ `string ] t)
    (num_shards : [ `int32 ] t)
  =
  Op.create context "ShardedFilespec"
  |> fun op -> Op.add_input op basename
  |> fun op -> Op.add_input op num_shards
  |> Op.execute1

let shuffleDataset
    ?(reshuffle_each_iteration=true)
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (buffer_size : [ `int64 ] t)
    (seed : [ `int64 ] t)
    (seed2 : [ `int64 ] t)
  =
  Op.create context "ShuffleDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op buffer_size
  |> fun op -> Op.add_input op seed
  |> fun op -> Op.add_input op seed2
  |> Op.set_attr_bool ~name:"reshuffle_each_iteration" ~value:reshuffle_each_iteration
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let sigmoid
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Sigmoid"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sigmoidGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "SigmoidGrad"
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let sign
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Sign"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sin
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Sin"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Sinh"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let size
    ~type_out_type
    (input : 't t)
  =
  Op.create context "Size"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let skipDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  Op.create context "SkipDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op count
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let skipgram
    ~filename
    ~batch_size
    ?(window_size=5)
    ?(min_count=5)
    ?(subsample=0.0010000000474974513)
    ()
  =
  Op.create context "Skipgram"
  |> Op.set_attr_string ~name:"filename" ~value:filename
  |> Op.set_attr_int ~name:"batch_size" ~value:batch_size
  |> Op.set_attr_int ~name:"window_size" ~value:window_size
  |> Op.set_attr_int ~name:"min_count" ~value:min_count
  |> Op.set_attr_float ~name:"subsample" ~value:subsample
  |> Op.execute7

let slice
    (input : 't t)
    (begin__ : ([< `int32 | `int64 ] as 'index) t)
    (size : ([< `int32 | `int64 ] as 'index) t)
  =
  Op.create context "Slice"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op begin__
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Index" ~value:(Op.Tensor_handle.data_type begin__)
  |> Op.execute1

let softmax
    (logits : ([< `float | `double ] as 't) t)
  =
  Op.create context "Softmax"
  |> fun op -> Op.add_input op logits
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type logits)
  |> Op.execute1

let softmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `float | `double ] as 't) t)
  =
  Op.create context "SoftmaxCrossEntropyWithLogits"
  |> fun op -> Op.add_input op features
  |> fun op -> Op.add_input op labels
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute2

let softplus
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Softplus"
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let softplusGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "SoftplusGrad"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let softsign
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "Softsign"
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let softsignGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "SoftsignGrad"
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let spaceToBatch
    ~block_size
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context "SpaceToBatch"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op paddings
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tpaddings" ~value:(Op.Tensor_handle.data_type paddings)
  |> Op.set_attr_int ~name:"block_size" ~value:block_size
  |> Op.execute1

let spaceToBatchND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context "SpaceToBatchND"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op block_shape
  |> fun op -> Op.add_input op paddings
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tblock_shape" ~value:(Op.Tensor_handle.data_type block_shape)
  |> Op.set_attr_data_type ~name:"Tpaddings" ~value:(Op.Tensor_handle.data_type paddings)
  |> Op.execute1

let spaceToDepth
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  Op.create context "SpaceToDepth"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int ~name:"block_size" ~value:block_size
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let sparseAccumulatorApplyGradient
    ~has_known_shape
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient_indices : [ `int64 ] t)
    (gradient_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
    (gradient_shape : [ `int64 ] t)
  =
  Op.create context "SparseAccumulatorApplyGradient"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op local_step
  |> fun op -> Op.add_input op gradient_indices
  |> fun op -> Op.add_input op gradient_values
  |> fun op -> Op.add_input op gradient_shape
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type gradient_values)
  |> Op.set_attr_bool ~name:"has_known_shape" ~value:has_known_shape
  |> Op.execute0

let sparseAccumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  Op.create context "SparseAccumulatorTakeGradient"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op num_required
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute3

let sparseAdd
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (b_shape : [ `int64 ] t)
    (thresh : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 'treal) t)
  =
  Op.create context "SparseAdd"
  |> fun op -> Op.add_input op a_indices
  |> fun op -> Op.add_input op a_values
  |> fun op -> Op.add_input op a_shape
  |> fun op -> Op.add_input op b_indices
  |> fun op -> Op.add_input op b_values
  |> fun op -> Op.add_input op b_shape
  |> fun op -> Op.add_input op thresh
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a_values)
  |> Op.set_attr_data_type ~name:"Treal" ~value:(Op.Tensor_handle.data_type thresh)
  |> Op.execute3

let sparseAddGrad
    (backprop_val_grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_indices : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (sum_indices : [ `int64 ] t)
  =
  Op.create context "SparseAddGrad"
  |> fun op -> Op.add_input op backprop_val_grad
  |> fun op -> Op.add_input op a_indices
  |> fun op -> Op.add_input op b_indices
  |> fun op -> Op.add_input op sum_indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type backprop_val_grad)
  |> Op.execute2

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
  Op.create context "SparseApplyAdadelta"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op accum_update
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op rho
  |> fun op -> Op.add_input op epsilon
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let sparseApplyAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "SparseApplyAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  Op.create context "SparseApplyMomentum"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op momentum
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.set_attr_bool ~name:"use_nesterov" ~value:use_nesterov
  |> Op.execute1

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
  Op.create context "SparseApplyProximalAdagrad"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op accum
  |> fun op -> Op.add_input op lr
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let sparseApplyProximalGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context "SparseApplyProximalGradientDescent"
  |> fun op -> Op.add_input op var
  |> fun op -> Op.add_input op alpha
  |> fun op -> Op.add_input op l1
  |> fun op -> Op.add_input op l2
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

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
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type var)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let sparseConcat
    ~concat_dim
    (indices : [ `int64 ] t list)
    (values : 't t list)
    (shapes : [ `int64 ] t list)
  =
  Op.create context "SparseConcat"
  |> fun init -> List.fold indices ~init ~f:Op.add_input
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> fun init -> List.fold shapes ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"concat_dim" ~value:concat_dim
  |> Op.set_attr_int ~name:"N" ~value:(List.length indices)
  |> Op.execute3

let sparseConditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "SparseConditionalAccumulator"
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let sparseDenseCwiseAdd
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "SparseDenseCwiseAdd"
  |> fun op -> Op.add_input op sp_indices
  |> fun op -> Op.add_input op sp_values
  |> fun op -> Op.add_input op sp_shape
  |> fun op -> Op.add_input op dense
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sp_values)
  |> Op.execute1

let sparseDenseCwiseDiv
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "SparseDenseCwiseDiv"
  |> fun op -> Op.add_input op sp_indices
  |> fun op -> Op.add_input op sp_values
  |> fun op -> Op.add_input op sp_shape
  |> fun op -> Op.add_input op dense
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sp_values)
  |> Op.execute1

let sparseDenseCwiseMul
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "SparseDenseCwiseMul"
  |> fun op -> Op.add_input op sp_indices
  |> fun op -> Op.add_input op sp_values
  |> fun op -> Op.add_input op sp_shape
  |> fun op -> Op.add_input op dense
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sp_values)
  |> Op.execute1

let sparseFillEmptyRows
    (indices : [ `int64 ] t)
    (values : 't t)
    (dense_shape : [ `int64 ] t)
    (default_value : 't t)
  =
  Op.create context "SparseFillEmptyRows"
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op values
  |> fun op -> Op.add_input op dense_shape
  |> fun op -> Op.add_input op default_value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute4

let sparseFillEmptyRowsGrad
    (reverse_index_map : [ `int64 ] t)
    (grad_values : 't t)
  =
  Op.create context "SparseFillEmptyRowsGrad"
  |> fun op -> Op.add_input op reverse_index_map
  |> fun op -> Op.add_input op grad_values
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad_values)
  |> Op.execute2

let sparseMatMul
    ?(transpose_a=false)
    ?(transpose_b=false)
    ?(a_is_sparse=false)
    ?(b_is_sparse=false)
    (a : ([< `float ] as 'ta) t)
    (b : ([< `float ] as 'tb) t)
  =
  Op.create context "SparseMatMul"
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op b
  |> Op.set_attr_data_type ~name:"Ta" ~value:(Op.Tensor_handle.data_type a)
  |> Op.set_attr_data_type ~name:"Tb" ~value:(Op.Tensor_handle.data_type b)
  |> Op.set_attr_bool ~name:"transpose_a" ~value:transpose_a
  |> Op.set_attr_bool ~name:"transpose_b" ~value:transpose_b
  |> Op.set_attr_bool ~name:"a_is_sparse" ~value:a_is_sparse
  |> Op.set_attr_bool ~name:"b_is_sparse" ~value:b_is_sparse
  |> Op.execute1

let sparseReduceMax
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  Op.create context "SparseReduceMax"
  |> fun op -> Op.add_input op input_indices
  |> fun op -> Op.add_input op input_values
  |> fun op -> Op.add_input op input_shape
  |> fun op -> Op.add_input op reduction_axes
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input_values)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let sparseReduceMaxSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  Op.create context "SparseReduceMaxSparse"
  |> fun op -> Op.add_input op input_indices
  |> fun op -> Op.add_input op input_values
  |> fun op -> Op.add_input op input_shape
  |> fun op -> Op.add_input op reduction_axes
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input_values)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute3

let sparseReduceSum
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  Op.create context "SparseReduceSum"
  |> fun op -> Op.add_input op input_indices
  |> fun op -> Op.add_input op input_values
  |> fun op -> Op.add_input op input_shape
  |> fun op -> Op.add_input op reduction_axes
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input_values)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let sparseReduceSumSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  Op.create context "SparseReduceSumSparse"
  |> fun op -> Op.add_input op input_indices
  |> fun op -> Op.add_input op input_values
  |> fun op -> Op.add_input op input_shape
  |> fun op -> Op.add_input op reduction_axes
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input_values)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute3

let sparseReorder
    (input_indices : [ `int64 ] t)
    (input_values : 't t)
    (input_shape : [ `int64 ] t)
  =
  Op.create context "SparseReorder"
  |> fun op -> Op.add_input op input_indices
  |> fun op -> Op.add_input op input_values
  |> fun op -> Op.add_input op input_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input_values)
  |> Op.execute2

let sparseReshape
    (input_indices : [ `int64 ] t)
    (input_shape : [ `int64 ] t)
    (new_shape : [ `int64 ] t)
  =
  Op.create context "SparseReshape"
  |> fun op -> Op.add_input op input_indices
  |> fun op -> Op.add_input op input_shape
  |> fun op -> Op.add_input op new_shape
  |> Op.execute2

let sparseSegmentMean
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  Op.create context "SparseSegmentMean"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let sparseSegmentMeanGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  Op.create context "SparseSegmentMeanGrad"
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op segment_ids
  |> fun op -> Op.add_input op output_dim0
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let sparseSegmentSqrtN
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  Op.create context "SparseSegmentSqrtN"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let sparseSegmentSqrtNGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  Op.create context "SparseSegmentSqrtNGrad"
  |> fun op -> Op.add_input op grad
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op segment_ids
  |> fun op -> Op.add_input op output_dim0
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type grad)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let sparseSegmentSum
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  Op.create context "SparseSegmentSum"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type indices)
  |> Op.execute1

let sparseSlice
    (indices : [ `int64 ] t)
    (values : 't t)
    (shape : [ `int64 ] t)
    (start : [ `int64 ] t)
    (size : [ `int64 ] t)
  =
  Op.create context "SparseSlice"
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op values
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op start
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute3

let sparseSoftmax
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double ] as 't) t)
    (sp_shape : [ `int64 ] t)
  =
  Op.create context "SparseSoftmax"
  |> fun op -> Op.add_input op sp_indices
  |> fun op -> Op.add_input op sp_values
  |> fun op -> Op.add_input op sp_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sp_values)
  |> Op.execute1

let sparseSoftmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `int32 | `int64 ] as 'tlabels) t)
  =
  Op.create context "SparseSoftmaxCrossEntropyWithLogits"
  |> fun op -> Op.add_input op features
  |> fun op -> Op.add_input op labels
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.set_attr_data_type ~name:"Tlabels" ~value:(Op.Tensor_handle.data_type labels)
  |> Op.execute2

let sparseSparseMaximum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  Op.create context "SparseSparseMaximum"
  |> fun op -> Op.add_input op a_indices
  |> fun op -> Op.add_input op a_values
  |> fun op -> Op.add_input op a_shape
  |> fun op -> Op.add_input op b_indices
  |> fun op -> Op.add_input op b_values
  |> fun op -> Op.add_input op b_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a_values)
  |> Op.execute2

let sparseSparseMinimum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  Op.create context "SparseSparseMinimum"
  |> fun op -> Op.add_input op a_indices
  |> fun op -> Op.add_input op a_values
  |> fun op -> Op.add_input op a_shape
  |> fun op -> Op.add_input op b_indices
  |> fun op -> Op.add_input op b_values
  |> fun op -> Op.add_input op b_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a_values)
  |> Op.execute2

let sparseTensorDenseAdd
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (b : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context "SparseTensorDenseAdd"
  |> fun op -> Op.add_input op a_indices
  |> fun op -> Op.add_input op a_values
  |> fun op -> Op.add_input op a_shape
  |> fun op -> Op.add_input op b
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a_values)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type a_indices)
  |> Op.execute1

let sparseTensorDenseMatMul
    ?(adjoint_a=false)
    ?(adjoint_b=false)
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : 't t)
    (a_shape : [ `int64 ] t)
    (b : 't t)
  =
  Op.create context "SparseTensorDenseMatMul"
  |> fun op -> Op.add_input op a_indices
  |> fun op -> Op.add_input op a_values
  |> fun op -> Op.add_input op a_shape
  |> fun op -> Op.add_input op b
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a_values)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type a_indices)
  |> Op.set_attr_bool ~name:"adjoint_a" ~value:adjoint_a
  |> Op.set_attr_bool ~name:"adjoint_b" ~value:adjoint_b
  |> Op.execute1

let sparseTensorSliceDataset
    (indices : [ `int64 ] t)
    (values : 'tvalues t)
    (dense_shape : [ `int64 ] t)
  =
  Op.create context "SparseTensorSliceDataset"
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op values
  |> fun op -> Op.add_input op dense_shape
  |> Op.set_attr_data_type ~name:"Tvalues" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute1

let sparseToDense
    ?(validate_indices=true)
    (sparse_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (output_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (sparse_values : 't t)
    (default_value : 't t)
  =
  Op.create context "SparseToDense"
  |> fun op -> Op.add_input op sparse_indices
  |> fun op -> Op.add_input op output_shape
  |> fun op -> Op.add_input op sparse_values
  |> fun op -> Op.add_input op default_value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sparse_values)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type sparse_indices)
  |> Op.set_attr_bool ~name:"validate_indices" ~value:validate_indices
  |> Op.execute1

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
  Op.create context "SparseToSparseSetOperation"
  |> fun op -> Op.add_input op set1_indices
  |> fun op -> Op.add_input op set1_values
  |> fun op -> Op.add_input op set1_shape
  |> fun op -> Op.add_input op set2_indices
  |> fun op -> Op.add_input op set2_values
  |> fun op -> Op.add_input op set2_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type set1_values)
  |> Op.set_attr_string ~name:"set_operation" ~value:set_operation
  |> Op.set_attr_bool ~name:"validate_indices" ~value:validate_indices
  |> Op.execute3

let split
    ~num_split
    (split_dim : [ `int32 ] t)
    (value : 't t)
  =
  Op.create context "Split"
  |> fun op -> Op.add_input op split_dim
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_int ~name:"num_split" ~value:num_split
  |> Op.execute ~output_len:num_split

let splitV
    ~num_split
    (value : 't t)
    (size_splits : ([< `int32 | `int64 ] as 'tlen) t)
    (split_dim : [ `int32 ] t)
  =
  Op.create context "SplitV"
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op size_splits
  |> fun op -> Op.add_input op split_dim
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_data_type ~name:"Tlen" ~value:(Op.Tensor_handle.data_type size_splits)
  |> Op.set_attr_int ~name:"num_split" ~value:num_split
  |> Op.execute ~output_len:num_split

let sqlDataset
    ~output_types
    ~output_shapes
    (driver_name : [ `string ] t)
    (data_source_name : [ `string ] t)
    (query : [ `string ] t)
  =
  Op.create context "SqlDataset"
  |> fun op -> Op.add_input op driver_name
  |> fun op -> Op.add_input op data_source_name
  |> fun op -> Op.add_input op query
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let sqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Sqrt"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "SqrtGrad"
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let square
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Square"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let squaredDifference
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "SquaredDifference"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let squeeze
    ?(squeeze_dims=[])
    (input : 't t)
  =
  Op.create context "Squeeze"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"squeeze_dims" ~value:squeeze_dims
  |> Op.execute1

let stack
    ?(stack_name="")
    ()
  =
  Op.create context "Stack"
  |> Op.set_attr_string ~name:"stack_name" ~value:stack_name
  |> Op.execute1

let stackClose
    (handle : [ `string ] t)
  =
  Op.create context "StackClose"
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let stackCloseV2
    (handle : [ `resource ] t)
  =
  Op.create context "StackCloseV2"
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let stackPop
    ~type_elem_type
    (handle : [ `string ] t)
  =
  Op.create context "StackPop"
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_data_type ~name:"elem_type" ~value:Operation.Type.(to_data_type (P type_elem_type))
  |> Op.execute1

let stackPopV2
    ~type_elem_type
    (handle : [ `resource ] t)
  =
  Op.create context "StackPopV2"
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_data_type ~name:"elem_type" ~value:Operation.Type.(to_data_type (P type_elem_type))
  |> Op.execute1

let stackPush
    ?(swap_memory=false)
    (handle : [ `string ] t)
    (elem : 't t)
  =
  Op.create context "StackPush"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op elem
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type elem)
  |> Op.set_attr_bool ~name:"swap_memory" ~value:swap_memory
  |> Op.execute1

let stackPushV2
    ?(swap_memory=false)
    (handle : [ `resource ] t)
    (elem : 't t)
  =
  Op.create context "StackPushV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op elem
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type elem)
  |> Op.set_attr_bool ~name:"swap_memory" ~value:swap_memory
  |> Op.execute1

let stackV2
    ?(stack_name="")
    (max_size : [ `int32 ] t)
  =
  Op.create context "StackV2"
  |> fun op -> Op.add_input op max_size
  |> Op.set_attr_string ~name:"stack_name" ~value:stack_name
  |> Op.execute1

let stageClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "StageClear"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute0

let stageSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "StageSize"
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_int ~name:"memory_limit" ~value:memory_limit
  |> Op.set_attr_type_list ~name:"dtypes" ~value:dtypes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let statelessRandomNormal
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  Op.create context "StatelessRandomNormal"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op seed
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.execute1

let statelessRandomUniform
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  Op.create context "StatelessRandomUniform"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op seed
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.execute1

let statelessTruncatedNormal
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  Op.create context "StatelessTruncatedNormal"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op seed
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.execute1

let stopGradient
    (input : 't t)
  =
  Op.create context "StopGradient"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

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
  Op.create context "StridedSlice"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op begin__
  |> fun op -> Op.add_input op end__
  |> fun op -> Op.add_input op strides
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Index" ~value:(Op.Tensor_handle.data_type begin__)
  |> Op.set_attr_int ~name:"begin_mask" ~value:begin_mask
  |> Op.set_attr_int ~name:"end_mask" ~value:end_mask
  |> Op.set_attr_int ~name:"ellipsis_mask" ~value:ellipsis_mask
  |> Op.set_attr_int ~name:"new_axis_mask" ~value:new_axis_mask
  |> Op.set_attr_int ~name:"shrink_axis_mask" ~value:shrink_axis_mask
  |> Op.execute1

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
  Op.create context "StridedSliceAssign"
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op begin__
  |> fun op -> Op.add_input op end__
  |> fun op -> Op.add_input op strides
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_data_type ~name:"Index" ~value:(Op.Tensor_handle.data_type begin__)
  |> Op.set_attr_int ~name:"begin_mask" ~value:begin_mask
  |> Op.set_attr_int ~name:"end_mask" ~value:end_mask
  |> Op.set_attr_int ~name:"ellipsis_mask" ~value:ellipsis_mask
  |> Op.set_attr_int ~name:"new_axis_mask" ~value:new_axis_mask
  |> Op.set_attr_int ~name:"shrink_axis_mask" ~value:shrink_axis_mask
  |> Op.execute1

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
  Op.create context "StridedSliceGrad"
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op begin__
  |> fun op -> Op.add_input op end__
  |> fun op -> Op.add_input op strides
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type dy)
  |> Op.set_attr_data_type ~name:"Index" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"begin_mask" ~value:begin_mask
  |> Op.set_attr_int ~name:"end_mask" ~value:end_mask
  |> Op.set_attr_int ~name:"ellipsis_mask" ~value:ellipsis_mask
  |> Op.set_attr_int ~name:"new_axis_mask" ~value:new_axis_mask
  |> Op.set_attr_int ~name:"shrink_axis_mask" ~value:shrink_axis_mask
  |> Op.execute1

let stringJoin
    ?(separator="")
    (inputs__ : [ `string ] t list)
  =
  Op.create context "StringJoin"
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.set_attr_string ~name:"separator" ~value:separator
  |> Op.execute1

let stringSplit
    ?(skip_empty=true)
    (input : [ `string ] t)
    (delimiter : [ `string ] t)
  =
  Op.create context "StringSplit"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op delimiter
  |> Op.set_attr_bool ~name:"skip_empty" ~value:skip_empty
  |> Op.execute3

let stringToHashBucket
    ~num_buckets
    (string_tensor : [ `string ] t)
  =
  Op.create context "StringToHashBucket"
  |> fun op -> Op.add_input op string_tensor
  |> Op.set_attr_int ~name:"num_buckets" ~value:num_buckets
  |> Op.execute1

let stringToHashBucketFast
    ~num_buckets
    (input : [ `string ] t)
  =
  Op.create context "StringToHashBucketFast"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_int ~name:"num_buckets" ~value:num_buckets
  |> Op.execute1

let stringToHashBucketStrong
    ~num_buckets
    ~key
    (input : [ `string ] t)
  =
  Op.create context "StringToHashBucketStrong"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_int ~name:"num_buckets" ~value:num_buckets
  |> Op.set_attr_int_list ~name:"key" ~value:key
  |> Op.execute1

let stringToNumber
    ~type_out_type
    (string_tensor : [ `string ] t)
  =
  Op.create context "StringToNumber"
  |> fun op -> Op.add_input op string_tensor
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.execute1

let sub
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Sub"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let substr
    (input : [ `string ] t)
    (pos : ([< `int32 | `int64 ] as 't) t)
    (len : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "Substr"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op pos
  |> fun op -> Op.add_input op len
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type pos)
  |> Op.execute1

let sum
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context "Sum"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let svd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context "Svd"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"compute_uv" ~value:compute_uv
  |> Op.set_attr_bool ~name:"full_matrices" ~value:full_matrices
  |> Op.execute3

let switch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  Op.create context "Switch"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op pred
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute2

let tFRecordDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  Op.create context "TFRecordDataset"
  |> fun op -> Op.add_input op filenames
  |> fun op -> Op.add_input op compression_type
  |> fun op -> Op.add_input op buffer_size
  |> Op.execute1

let tFRecordReader
    ?(container="")
    ?(shared_name="")
    ?(compression_type="")
    ()
  =
  Op.create context "TFRecordReader"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_string ~name:"compression_type" ~value:compression_type
  |> Op.execute1

let tFRecordReaderV2
    ?(container="")
    ?(shared_name="")
    ?(compression_type="")
    ()
  =
  Op.create context "TFRecordReaderV2"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_string ~name:"compression_type" ~value:compression_type
  |> Op.execute1

let takeDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  Op.create context "TakeDataset"
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op count
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let takeManySparseFromTensorsMap
    ~type_dtype
    ?(container="")
    ?(shared_name="")
    (sparse_handles : [ `int64 ] t)
  =
  Op.create context "TakeManySparseFromTensorsMap"
  |> fun op -> Op.add_input op sparse_handles
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute3

let tan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "Tan"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let tanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "Tanh"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let tanhGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context "TanhGrad"
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let temporaryVariable
    ~type_dtype
    ~shape
    ?(var_name="")
    ()
  =
  Op.create context "TemporaryVariable"
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"var_name" ~value:var_name
  |> Op.execute1

let tensorArray
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    ?(element_shape=[])
    (size : [ `int32 ] t)
  =
  Op.create context "TensorArray"
  |> fun op -> Op.add_input op size
  |> Op.set_attr_bool ~name:"dynamic_size" ~value:dynamic_size
  |> Op.set_attr_bool ~name:"clear_after_read" ~value:clear_after_read
  |> Op.set_attr_string ~name:"tensor_array_name" ~value:tensor_array_name
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.execute1

let tensorArrayClose
    (handle : [ `string ] t)
  =
  Op.create context "TensorArrayClose"
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let tensorArrayCloseV2
    (handle : [ `string ] t)
  =
  Op.create context "TensorArrayCloseV2"
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let tensorArrayCloseV3
    (handle : [ `resource ] t)
  =
  Op.create context "TensorArrayCloseV3"
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let tensorArrayConcat
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayConcat"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"element_shape_except0" ~value:element_shape_except0
  |> Op.execute2

let tensorArrayConcatV2
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayConcatV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"element_shape_except0" ~value:element_shape_except0
  |> Op.execute2

let tensorArrayConcatV3
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayConcatV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"element_shape_except0" ~value:element_shape_except0
  |> Op.execute2

let tensorArrayGather
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayGather"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.execute1

let tensorArrayGatherV2
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayGatherV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.execute1

let tensorArrayGatherV3
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `resource ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayGatherV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.execute1

let tensorArrayGrad
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayGrad"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_string ~name:"source" ~value:source
  |> Op.execute1

let tensorArrayGradV2
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayGradV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_string ~name:"source" ~value:source
  |> Op.execute1

let tensorArrayGradV3
    ~source
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayGradV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_string ~name:"source" ~value:source
  |> Op.execute2

let tensorArrayPack
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayPack"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.execute1

let tensorArrayRead
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayRead"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op index
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute1

let tensorArrayReadV2
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayReadV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op index
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute1

let tensorArrayReadV3
    ~type_dtype
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayReadV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op index
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute1

let tensorArrayScatter
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayScatter"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArrayScatterV2
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayScatterV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArrayScatterV3
    (handle : [ `resource ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayScatterV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op indices
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArraySize
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArraySize"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.execute1

let tensorArraySizeV2
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArraySizeV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.execute1

let tensorArraySizeV3
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArraySizeV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.execute1

let tensorArraySplit
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArraySplit"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op lengths
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArraySplitV2
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArraySplitV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op lengths
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArraySplitV3
    (handle : [ `resource ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArraySplitV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op lengths
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArrayUnpack
    (handle : [ `string ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayUnpack"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArrayV2
    ?(element_shape=[])
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    (size : [ `int32 ] t)
  =
  Op.create context "TensorArrayV2"
  |> fun op -> Op.add_input op size
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.set_attr_bool ~name:"dynamic_size" ~value:dynamic_size
  |> Op.set_attr_bool ~name:"clear_after_read" ~value:clear_after_read
  |> Op.set_attr_string ~name:"tensor_array_name" ~value:tensor_array_name
  |> Op.execute1

let tensorArrayV3
    ?(element_shape=[])
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    (size : [ `int32 ] t)
  =
  Op.create context "TensorArrayV3"
  |> fun op -> Op.add_input op size
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.set_attr_bool ~name:"dynamic_size" ~value:dynamic_size
  |> Op.set_attr_bool ~name:"clear_after_read" ~value:clear_after_read
  |> Op.set_attr_string ~name:"tensor_array_name" ~value:tensor_array_name
  |> Op.execute2

let tensorArrayWrite
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayWrite"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op index
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArrayWriteV2
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayWriteV2"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op index
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorArrayWriteV3
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  Op.create context "TensorArrayWriteV3"
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op index
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let tensorSummary
    ?(description="")
    ?(display_name="")
    (tensor : 't t)
  =
  Op.create context "TensorSummary"
  |> fun op -> Op.add_input op tensor
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_string ~name:"description" ~value:description
  |> Op.set_attr_string ~name:"display_name" ~value:display_name
  |> Op.execute1

let tensorSummaryV2
    (tag : [ `string ] t)
    (tensor : 't t)
    (serialized_summary_metadata : [ `string ] t)
  =
  Op.create context "TensorSummaryV2"
  |> fun op -> Op.add_input op tag
  |> fun op -> Op.add_input op tensor
  |> fun op -> Op.add_input op serialized_summary_metadata
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.execute1

let textLineDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  Op.create context "TextLineDataset"
  |> fun op -> Op.add_input op filenames
  |> fun op -> Op.add_input op compression_type
  |> fun op -> Op.add_input op buffer_size
  |> Op.execute1

let textLineReader
    ?(skip_header_lines=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "TextLineReader"
  |> Op.set_attr_int ~name:"skip_header_lines" ~value:skip_header_lines
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let textLineReaderV2
    ?(skip_header_lines=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "TextLineReaderV2"
  |> Op.set_attr_int ~name:"skip_header_lines" ~value:skip_header_lines
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let threadUnsafeUnigramCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  Op.create context "ThreadUnsafeUnigramCandidateSampler"
  |> fun op -> Op.add_input op true_classes
  |> Op.set_attr_int ~name:"num_true" ~value:num_true
  |> Op.set_attr_int ~name:"num_sampled" ~value:num_sampled
  |> Op.set_attr_bool ~name:"unique" ~value:unique
  |> Op.set_attr_int ~name:"range_max" ~value:range_max
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let tile
    (input : 't t)
    (multiples : ([< `int32 | `int64 ] as 'tmultiples) t)
  =
  Op.create context "Tile"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op multiples
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tmultiples" ~value:(Op.Tensor_handle.data_type multiples)
  |> Op.execute1

let tileGrad
    (input : 't t)
    (multiples : [ `int32 ] t)
  =
  Op.create context "TileGrad"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op multiples
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let topK
    ~k
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context "TopK"
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int ~name:"k" ~value:k
  |> Op.set_attr_bool ~name:"sorted" ~value:sorted
  |> Op.execute2

let topKV2
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (k : [ `int32 ] t)
  =
  Op.create context "TopKV2"
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op k
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"sorted" ~value:sorted
  |> Op.execute2

let transpose
    (x : 't t)
    (perm : ([< `int32 | `int64 ] as 'tperm) t)
  =
  Op.create context "Transpose"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op perm
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"Tperm" ~value:(Op.Tensor_handle.data_type perm)
  |> Op.execute1

let truncateDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context "TruncateDiv"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let truncateMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context "TruncateMod"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let truncatedNormal
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context "TruncatedNormal"
  |> fun op -> Op.add_input op shape
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute1

let uniformCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  Op.create context "UniformCandidateSampler"
  |> fun op -> Op.add_input op true_classes
  |> Op.set_attr_int ~name:"num_true" ~value:num_true
  |> Op.set_attr_int ~name:"num_sampled" ~value:num_sampled
  |> Op.set_attr_bool ~name:"unique" ~value:unique
  |> Op.set_attr_int ~name:"range_max" ~value:range_max
  |> Op.set_attr_int ~name:"seed" ~value:seed
  |> Op.set_attr_int ~name:"seed2" ~value:seed2
  |> Op.execute3

let unique
    ~type_out_idx
    (x : 't t)
  =
  Op.create context "Unique"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"out_idx" ~value:Operation.Type.(to_data_type (P type_out_idx))
  |> Op.execute2

let uniqueWithCounts
    ~type_out_idx
    (x : 't t)
  =
  Op.create context "UniqueWithCounts"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"out_idx" ~value:Operation.Type.(to_data_type (P type_out_idx))
  |> Op.execute3

let unpack
    ~num
    ?(axis=0)
    (value : 't t)
  =
  Op.create context "Unpack"
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_int ~name:"num" ~value:num
  |> Op.set_attr_int ~name:"axis" ~value:axis
  |> Op.execute ~output_len:num

let unsortedSegmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  Op.create context "UnsortedSegmentMax"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> fun op -> Op.add_input op num_segments
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let unsortedSegmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  Op.create context "UnsortedSegmentSum"
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> fun op -> Op.add_input op num_segments
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let variable
    ~type_dtype
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "Variable"
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let variableV2
    ~type_dtype
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "VariableV2"
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let where
    (input : [ `bool ] t)
  =
  Op.create context "Where"
  |> fun op -> Op.add_input op input
  |> Op.execute1

let wholeFileReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "WholeFileReader"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let wholeFileReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context "WholeFileReaderV2"
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let writeFile
    (filename : [ `string ] t)
    (contents : [ `string ] t)
  =
  Op.create context "WriteFile"
  |> fun op -> Op.add_input op filename
  |> fun op -> Op.add_input op contents
  |> Op.execute0

let zerosLike
    (x : 't t)
  =
  Op.create context "ZerosLike"
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let zeta
    (x : ([< `float | `double ] as 't) t)
    (q : ([< `float | `double ] as 't) t)
  =
  Op.create context "Zeta"
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op q
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let zipDataset
    ~output_types
    ~output_shapes
    (input_datasets : [ `variant ] t list)
  =
  Op.create context "ZipDataset"
  |> fun init -> List.fold input_datasets ~init ~f:Op.add_input
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.set_attr_int ~name:"N" ~value:(List.length input_datasets)
  |> Op.execute1

