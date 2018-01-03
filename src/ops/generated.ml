(* THIS FILE HAS BEEN AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND! *)
open Base
open Tf_core

type 'a t = 'a Op.Tensor_handle.t
module Dim = Operation.Dim
module Type = Operation.Type

module Op_names = struct
  let abort = Op.Name.of_string "Abort"
  let abs = Op.Name.of_string "Abs"
  let accumulatorApplyGradient = Op.Name.of_string "AccumulatorApplyGradient"
  let accumulatorNumAccumulated = Op.Name.of_string "AccumulatorNumAccumulated"
  let accumulatorSetGlobalStep = Op.Name.of_string "AccumulatorSetGlobalStep"
  let accumulatorTakeGradient = Op.Name.of_string "AccumulatorTakeGradient"
  let acos = Op.Name.of_string "Acos"
  let acosh = Op.Name.of_string "Acosh"
  let add = Op.Name.of_string "Add"
  let addManySparseToTensorsMap = Op.Name.of_string "AddManySparseToTensorsMap"
  let addN = Op.Name.of_string "AddN"
  let addSparseToTensorsMap = Op.Name.of_string "AddSparseToTensorsMap"
  let adjustContrast = Op.Name.of_string "AdjustContrast"
  let adjustContrastv2 = Op.Name.of_string "AdjustContrastv2"
  let adjustHue = Op.Name.of_string "AdjustHue"
  let adjustSaturation = Op.Name.of_string "AdjustSaturation"
  let all = Op.Name.of_string "All"
  let allCandidateSampler = Op.Name.of_string "AllCandidateSampler"
  let angle = Op.Name.of_string "Angle"
  let any = Op.Name.of_string "Any"
  let applyAdadelta = Op.Name.of_string "ApplyAdadelta"
  let applyAdagrad = Op.Name.of_string "ApplyAdagrad"
  let applyAdagradDA = Op.Name.of_string "ApplyAdagradDA"
  let applyAdam = Op.Name.of_string "ApplyAdam"
  let applyCenteredRMSProp = Op.Name.of_string "ApplyCenteredRMSProp"
  let applyFtrl = Op.Name.of_string "ApplyFtrl"
  let applyFtrlV2 = Op.Name.of_string "ApplyFtrlV2"
  let applyGradientDescent = Op.Name.of_string "ApplyGradientDescent"
  let applyMomentum = Op.Name.of_string "ApplyMomentum"
  let applyProximalAdagrad = Op.Name.of_string "ApplyProximalAdagrad"
  let applyProximalGradientDescent = Op.Name.of_string "ApplyProximalGradientDescent"
  let applyRMSProp = Op.Name.of_string "ApplyRMSProp"
  let approximateEqual = Op.Name.of_string "ApproximateEqual"
  let argMax = Op.Name.of_string "ArgMax"
  let argMin = Op.Name.of_string "ArgMin"
  let asString = Op.Name.of_string "AsString"
  let asin = Op.Name.of_string "Asin"
  let asinh = Op.Name.of_string "Asinh"
  let assign = Op.Name.of_string "Assign"
  let assignAdd = Op.Name.of_string "AssignAdd"
  let assignSub = Op.Name.of_string "AssignSub"
  let atan = Op.Name.of_string "Atan"
  let atan2 = Op.Name.of_string "Atan2"
  let atanh = Op.Name.of_string "Atanh"
  let audioSpectrogram = Op.Name.of_string "AudioSpectrogram"
  let audioSummary = Op.Name.of_string "AudioSummary"
  let audioSummaryV2 = Op.Name.of_string "AudioSummaryV2"
  let avgPool = Op.Name.of_string "AvgPool"
  let avgPool3D = Op.Name.of_string "AvgPool3D"
  let avgPool3DGrad = Op.Name.of_string "AvgPool3DGrad"
  let avgPoolGrad = Op.Name.of_string "AvgPoolGrad"
  let barrier = Op.Name.of_string "Barrier"
  let barrierClose = Op.Name.of_string "BarrierClose"
  let barrierIncompleteSize = Op.Name.of_string "BarrierIncompleteSize"
  let barrierInsertMany = Op.Name.of_string "BarrierInsertMany"
  let barrierReadySize = Op.Name.of_string "BarrierReadySize"
  let batchCholesky = Op.Name.of_string "BatchCholesky"
  let batchCholeskyGrad = Op.Name.of_string "BatchCholeskyGrad"
  let batchDataset = Op.Name.of_string "BatchDataset"
  let batchFFT = Op.Name.of_string "BatchFFT"
  let batchFFT2D = Op.Name.of_string "BatchFFT2D"
  let batchFFT3D = Op.Name.of_string "BatchFFT3D"
  let batchIFFT = Op.Name.of_string "BatchIFFT"
  let batchIFFT2D = Op.Name.of_string "BatchIFFT2D"
  let batchIFFT3D = Op.Name.of_string "BatchIFFT3D"
  let batchMatMul = Op.Name.of_string "BatchMatMul"
  let batchMatrixBandPart = Op.Name.of_string "BatchMatrixBandPart"
  let batchMatrixDeterminant = Op.Name.of_string "BatchMatrixDeterminant"
  let batchMatrixDiag = Op.Name.of_string "BatchMatrixDiag"
  let batchMatrixDiagPart = Op.Name.of_string "BatchMatrixDiagPart"
  let batchMatrixInverse = Op.Name.of_string "BatchMatrixInverse"
  let batchMatrixSetDiag = Op.Name.of_string "BatchMatrixSetDiag"
  let batchMatrixSolve = Op.Name.of_string "BatchMatrixSolve"
  let batchMatrixSolveLs = Op.Name.of_string "BatchMatrixSolveLs"
  let batchMatrixTriangularSolve = Op.Name.of_string "BatchMatrixTriangularSolve"
  let batchNormWithGlobalNormalization = Op.Name.of_string "BatchNormWithGlobalNormalization"
  let batchNormWithGlobalNormalizationGrad = Op.Name.of_string "BatchNormWithGlobalNormalizationGrad"
  let batchSelfAdjointEig = Op.Name.of_string "BatchSelfAdjointEig"
  let batchSelfAdjointEigV2 = Op.Name.of_string "BatchSelfAdjointEigV2"
  let batchSvd = Op.Name.of_string "BatchSvd"
  let batchToSpace = Op.Name.of_string "BatchToSpace"
  let batchToSpaceND = Op.Name.of_string "BatchToSpaceND"
  let betainc = Op.Name.of_string "Betainc"
  let biasAdd = Op.Name.of_string "BiasAdd"
  let biasAddGrad = Op.Name.of_string "BiasAddGrad"
  let biasAddV1 = Op.Name.of_string "BiasAddV1"
  let bincount = Op.Name.of_string "Bincount"
  let bitcast = Op.Name.of_string "Bitcast"
  let bitwiseAnd = Op.Name.of_string "BitwiseAnd"
  let bitwiseOr = Op.Name.of_string "BitwiseOr"
  let bitwiseXor = Op.Name.of_string "BitwiseXor"
  let broadcastArgs = Op.Name.of_string "BroadcastArgs"
  let broadcastGradientArgs = Op.Name.of_string "BroadcastGradientArgs"
  let bucketize = Op.Name.of_string "Bucketize"
  let cTCGreedyDecoder = Op.Name.of_string "CTCGreedyDecoder"
  let cTCLoss = Op.Name.of_string "CTCLoss"
  let cacheDataset = Op.Name.of_string "CacheDataset"
  let cast = Op.Name.of_string "Cast"
  let ceil = Op.Name.of_string "Ceil"
  let checkNumerics = Op.Name.of_string "CheckNumerics"
  let cholesky = Op.Name.of_string "Cholesky"
  let choleskyGrad = Op.Name.of_string "CholeskyGrad"
  let compareAndBitpack = Op.Name.of_string "CompareAndBitpack"
  let complex = Op.Name.of_string "Complex"
  let complexAbs = Op.Name.of_string "ComplexAbs"
  let computeAccidentalHits = Op.Name.of_string "ComputeAccidentalHits"
  let concat = Op.Name.of_string "Concat"
  let concatOffset = Op.Name.of_string "ConcatOffset"
  let concatV2 = Op.Name.of_string "ConcatV2"
  let concatenateDataset = Op.Name.of_string "ConcatenateDataset"
  let conditionalAccumulator = Op.Name.of_string "ConditionalAccumulator"
  let conj = Op.Name.of_string "Conj"
  let controlTrigger = Op.Name.of_string "ControlTrigger"
  let conv2D = Op.Name.of_string "Conv2D"
  let conv2DBackpropFilter = Op.Name.of_string "Conv2DBackpropFilter"
  let conv2DBackpropInput = Op.Name.of_string "Conv2DBackpropInput"
  let conv3D = Op.Name.of_string "Conv3D"
  let conv3DBackpropFilter = Op.Name.of_string "Conv3DBackpropFilter"
  let conv3DBackpropFilterV2 = Op.Name.of_string "Conv3DBackpropFilterV2"
  let conv3DBackpropInput = Op.Name.of_string "Conv3DBackpropInput"
  let conv3DBackpropInputV2 = Op.Name.of_string "Conv3DBackpropInputV2"
  let copy = Op.Name.of_string "Copy"
  let copyHost = Op.Name.of_string "CopyHost"
  let cos = Op.Name.of_string "Cos"
  let cosh = Op.Name.of_string "Cosh"
  let countUpTo = Op.Name.of_string "CountUpTo"
  let cropAndResize = Op.Name.of_string "CropAndResize"
  let cropAndResizeGradBoxes = Op.Name.of_string "CropAndResizeGradBoxes"
  let cropAndResizeGradImage = Op.Name.of_string "CropAndResizeGradImage"
  let cross = Op.Name.of_string "Cross"
  let cumprod = Op.Name.of_string "Cumprod"
  let cumsum = Op.Name.of_string "Cumsum"
  let debugGradientIdentity = Op.Name.of_string "DebugGradientIdentity"
  let debugIdentity = Op.Name.of_string "DebugIdentity"
  let debugNanCount = Op.Name.of_string "DebugNanCount"
  let debugNumericSummary = Op.Name.of_string "DebugNumericSummary"
  let decodeAndCropJpeg = Op.Name.of_string "DecodeAndCropJpeg"
  let decodeBase64 = Op.Name.of_string "DecodeBase64"
  let decodeBmp = Op.Name.of_string "DecodeBmp"
  let decodeGif = Op.Name.of_string "DecodeGif"
  let decodeJSONExample = Op.Name.of_string "DecodeJSONExample"
  let decodeJpeg = Op.Name.of_string "DecodeJpeg"
  let decodePng = Op.Name.of_string "DecodePng"
  let decodeRaw = Op.Name.of_string "DecodeRaw"
  let decodeWav = Op.Name.of_string "DecodeWav"
  let deleteSessionTensor = Op.Name.of_string "DeleteSessionTensor"
  let denseToDenseSetOperation = Op.Name.of_string "DenseToDenseSetOperation"
  let denseToSparseBatchDataset = Op.Name.of_string "DenseToSparseBatchDataset"
  let denseToSparseSetOperation = Op.Name.of_string "DenseToSparseSetOperation"
  let depthToSpace = Op.Name.of_string "DepthToSpace"
  let depthwiseConv2dNative = Op.Name.of_string "DepthwiseConv2dNative"
  let depthwiseConv2dNativeBackpropFilter = Op.Name.of_string "DepthwiseConv2dNativeBackpropFilter"
  let depthwiseConv2dNativeBackpropInput = Op.Name.of_string "DepthwiseConv2dNativeBackpropInput"
  let dequantize = Op.Name.of_string "Dequantize"
  let deserializeManySparse = Op.Name.of_string "DeserializeManySparse"
  let destroyTemporaryVariable = Op.Name.of_string "DestroyTemporaryVariable"
  let diag = Op.Name.of_string "Diag"
  let diagPart = Op.Name.of_string "DiagPart"
  let digamma = Op.Name.of_string "Digamma"
  let dilation2D = Op.Name.of_string "Dilation2D"
  let dilation2DBackpropFilter = Op.Name.of_string "Dilation2DBackpropFilter"
  let dilation2DBackpropInput = Op.Name.of_string "Dilation2DBackpropInput"
  let div = Op.Name.of_string "Div"
  let drawBoundingBoxes = Op.Name.of_string "DrawBoundingBoxes"
  let dynamicPartition = Op.Name.of_string "DynamicPartition"
  let dynamicStitch = Op.Name.of_string "DynamicStitch"
  let editDistance = Op.Name.of_string "EditDistance"
  let elu = Op.Name.of_string "Elu"
  let eluGrad = Op.Name.of_string "EluGrad"
  let encodeBase64 = Op.Name.of_string "EncodeBase64"
  let encodeJpeg = Op.Name.of_string "EncodeJpeg"
  let encodePng = Op.Name.of_string "EncodePng"
  let encodeWav = Op.Name.of_string "EncodeWav"
  let enter = Op.Name.of_string "Enter"
  let equal = Op.Name.of_string "Equal"
  let erf = Op.Name.of_string "Erf"
  let erfc = Op.Name.of_string "Erfc"
  let exit = Op.Name.of_string "Exit"
  let exp = Op.Name.of_string "Exp"
  let expandDims = Op.Name.of_string "ExpandDims"
  let expm1 = Op.Name.of_string "Expm1"
  let extractGlimpse = Op.Name.of_string "ExtractGlimpse"
  let extractImagePatches = Op.Name.of_string "ExtractImagePatches"
  let extractJpegShape = Op.Name.of_string "ExtractJpegShape"
  let fFT = Op.Name.of_string "FFT"
  let fFT2D = Op.Name.of_string "FFT2D"
  let fFT3D = Op.Name.of_string "FFT3D"
  let fIFOQueue = Op.Name.of_string "FIFOQueue"
  let fIFOQueueV2 = Op.Name.of_string "FIFOQueueV2"
  let fact = Op.Name.of_string "Fact"
  let fakeQuantWithMinMaxArgs = Op.Name.of_string "FakeQuantWithMinMaxArgs"
  let fakeQuantWithMinMaxArgsGradient = Op.Name.of_string "FakeQuantWithMinMaxArgsGradient"
  let fakeQuantWithMinMaxVars = Op.Name.of_string "FakeQuantWithMinMaxVars"
  let fakeQuantWithMinMaxVarsGradient = Op.Name.of_string "FakeQuantWithMinMaxVarsGradient"
  let fakeQuantWithMinMaxVarsPerChannel = Op.Name.of_string "FakeQuantWithMinMaxVarsPerChannel"
  let fakeQuantWithMinMaxVarsPerChannelGradient = Op.Name.of_string "FakeQuantWithMinMaxVarsPerChannelGradient"
  let fakeQueue = Op.Name.of_string "FakeQueue"
  let fill = Op.Name.of_string "Fill"
  let fixedLengthRecordDataset = Op.Name.of_string "FixedLengthRecordDataset"
  let fixedLengthRecordReader = Op.Name.of_string "FixedLengthRecordReader"
  let fixedLengthRecordReaderV2 = Op.Name.of_string "FixedLengthRecordReaderV2"
  let fixedUnigramCandidateSampler = Op.Name.of_string "FixedUnigramCandidateSampler"
  let floor = Op.Name.of_string "Floor"
  let floorDiv = Op.Name.of_string "FloorDiv"
  let floorMod = Op.Name.of_string "FloorMod"
  let fractionalAvgPool = Op.Name.of_string "FractionalAvgPool"
  let fractionalAvgPoolGrad = Op.Name.of_string "FractionalAvgPoolGrad"
  let fractionalMaxPool = Op.Name.of_string "FractionalMaxPool"
  let fractionalMaxPoolGrad = Op.Name.of_string "FractionalMaxPoolGrad"
  let fusedBatchNorm = Op.Name.of_string "FusedBatchNorm"
  let fusedBatchNormGrad = Op.Name.of_string "FusedBatchNormGrad"
  let fusedBatchNormGradV2 = Op.Name.of_string "FusedBatchNormGradV2"
  let fusedBatchNormV2 = Op.Name.of_string "FusedBatchNormV2"
  let fusedPadConv2D = Op.Name.of_string "FusedPadConv2D"
  let fusedResizeAndPadConv2D = Op.Name.of_string "FusedResizeAndPadConv2D"
  let gather = Op.Name.of_string "Gather"
  let gatherNd = Op.Name.of_string "GatherNd"
  let gatherV2 = Op.Name.of_string "GatherV2"
  let generateVocabRemapping = Op.Name.of_string "GenerateVocabRemapping"
  let getSessionHandle = Op.Name.of_string "GetSessionHandle"
  let getSessionHandleV2 = Op.Name.of_string "GetSessionHandleV2"
  let getSessionTensor = Op.Name.of_string "GetSessionTensor"
  let greater = Op.Name.of_string "Greater"
  let greaterEqual = Op.Name.of_string "GreaterEqual"
  let hSVToRGB = Op.Name.of_string "HSVToRGB"
  let hashTable = Op.Name.of_string "HashTable"
  let hashTableV2 = Op.Name.of_string "HashTableV2"
  let histogramSummary = Op.Name.of_string "HistogramSummary"
  let iFFT = Op.Name.of_string "IFFT"
  let iFFT2D = Op.Name.of_string "IFFT2D"
  let iFFT3D = Op.Name.of_string "IFFT3D"
  let iRFFT = Op.Name.of_string "IRFFT"
  let iRFFT2D = Op.Name.of_string "IRFFT2D"
  let iRFFT3D = Op.Name.of_string "IRFFT3D"
  let identity = Op.Name.of_string "Identity"
  let identityReader = Op.Name.of_string "IdentityReader"
  let identityReaderV2 = Op.Name.of_string "IdentityReaderV2"
  let igamma = Op.Name.of_string "Igamma"
  let igammac = Op.Name.of_string "Igammac"
  let ignoreErrorsDataset = Op.Name.of_string "IgnoreErrorsDataset"
  let imag = Op.Name.of_string "Imag"
  let imageSummary = Op.Name.of_string "ImageSummary"
  let immutableConst = Op.Name.of_string "ImmutableConst"
  let inTopK = Op.Name.of_string "InTopK"
  let inTopKV2 = Op.Name.of_string "InTopKV2"
  let initializeTable = Op.Name.of_string "InitializeTable"
  let initializeTableFromTextFile = Op.Name.of_string "InitializeTableFromTextFile"
  let initializeTableFromTextFileV2 = Op.Name.of_string "InitializeTableFromTextFileV2"
  let initializeTableV2 = Op.Name.of_string "InitializeTableV2"
  let inv = Op.Name.of_string "Inv"
  let invGrad = Op.Name.of_string "InvGrad"
  let invert = Op.Name.of_string "Invert"
  let invertPermutation = Op.Name.of_string "InvertPermutation"
  let isFinite = Op.Name.of_string "IsFinite"
  let isInf = Op.Name.of_string "IsInf"
  let isNan = Op.Name.of_string "IsNan"
  let isVariableInitialized = Op.Name.of_string "IsVariableInitialized"
  let iterator = Op.Name.of_string "Iterator"
  let iteratorFromStringHandle = Op.Name.of_string "IteratorFromStringHandle"
  let iteratorToStringHandle = Op.Name.of_string "IteratorToStringHandle"
  let l2Loss = Op.Name.of_string "L2Loss"
  let lMDBReader = Op.Name.of_string "LMDBReader"
  let lRN = Op.Name.of_string "LRN"
  let lRNGrad = Op.Name.of_string "LRNGrad"
  let learnedUnigramCandidateSampler = Op.Name.of_string "LearnedUnigramCandidateSampler"
  let less = Op.Name.of_string "Less"
  let lessEqual = Op.Name.of_string "LessEqual"
  let lgamma = Op.Name.of_string "Lgamma"
  let linSpace = Op.Name.of_string "LinSpace"
  let listDiff = Op.Name.of_string "ListDiff"
  let loadAndRemapMatrix = Op.Name.of_string "LoadAndRemapMatrix"
  let log = Op.Name.of_string "Log"
  let log1p = Op.Name.of_string "Log1p"
  let logMatrixDeterminant = Op.Name.of_string "LogMatrixDeterminant"
  let logSoftmax = Op.Name.of_string "LogSoftmax"
  let logUniformCandidateSampler = Op.Name.of_string "LogUniformCandidateSampler"
  let logicalAnd = Op.Name.of_string "LogicalAnd"
  let logicalNot = Op.Name.of_string "LogicalNot"
  let logicalOr = Op.Name.of_string "LogicalOr"
  let lookupTableExport = Op.Name.of_string "LookupTableExport"
  let lookupTableExportV2 = Op.Name.of_string "LookupTableExportV2"
  let lookupTableFind = Op.Name.of_string "LookupTableFind"
  let lookupTableFindV2 = Op.Name.of_string "LookupTableFindV2"
  let lookupTableImport = Op.Name.of_string "LookupTableImport"
  let lookupTableImportV2 = Op.Name.of_string "LookupTableImportV2"
  let lookupTableInsert = Op.Name.of_string "LookupTableInsert"
  let lookupTableInsertV2 = Op.Name.of_string "LookupTableInsertV2"
  let lookupTableSize = Op.Name.of_string "LookupTableSize"
  let lookupTableSizeV2 = Op.Name.of_string "LookupTableSizeV2"
  let loopCond = Op.Name.of_string "LoopCond"
  let makeIterator = Op.Name.of_string "MakeIterator"
  let mapClear = Op.Name.of_string "MapClear"
  let mapIncompleteSize = Op.Name.of_string "MapIncompleteSize"
  let mapSize = Op.Name.of_string "MapSize"
  let matMul = Op.Name.of_string "MatMul"
  let matchingFiles = Op.Name.of_string "MatchingFiles"
  let matrixBandPart = Op.Name.of_string "MatrixBandPart"
  let matrixDeterminant = Op.Name.of_string "MatrixDeterminant"
  let matrixDiag = Op.Name.of_string "MatrixDiag"
  let matrixDiagPart = Op.Name.of_string "MatrixDiagPart"
  let matrixInverse = Op.Name.of_string "MatrixInverse"
  let matrixSetDiag = Op.Name.of_string "MatrixSetDiag"
  let matrixSolve = Op.Name.of_string "MatrixSolve"
  let matrixSolveLs = Op.Name.of_string "MatrixSolveLs"
  let matrixTriangularSolve = Op.Name.of_string "MatrixTriangularSolve"
  let max = Op.Name.of_string "Max"
  let maxPool = Op.Name.of_string "MaxPool"
  let maxPool3D = Op.Name.of_string "MaxPool3D"
  let maxPool3DGrad = Op.Name.of_string "MaxPool3DGrad"
  let maxPool3DGradGrad = Op.Name.of_string "MaxPool3DGradGrad"
  let maxPoolGrad = Op.Name.of_string "MaxPoolGrad"
  let maxPoolGradGrad = Op.Name.of_string "MaxPoolGradGrad"
  let maxPoolGradGradV2 = Op.Name.of_string "MaxPoolGradGradV2"
  let maxPoolGradGradWithArgmax = Op.Name.of_string "MaxPoolGradGradWithArgmax"
  let maxPoolGradV2 = Op.Name.of_string "MaxPoolGradV2"
  let maxPoolGradWithArgmax = Op.Name.of_string "MaxPoolGradWithArgmax"
  let maxPoolV2 = Op.Name.of_string "MaxPoolV2"
  let maxPoolWithArgmax = Op.Name.of_string "MaxPoolWithArgmax"
  let maximum = Op.Name.of_string "Maximum"
  let mean = Op.Name.of_string "Mean"
  let merge = Op.Name.of_string "Merge"
  let mergeSummary = Op.Name.of_string "MergeSummary"
  let mergeV2Checkpoints = Op.Name.of_string "MergeV2Checkpoints"
  let mfcc = Op.Name.of_string "Mfcc"
  let min = Op.Name.of_string "Min"
  let minimum = Op.Name.of_string "Minimum"
  let mirrorPad = Op.Name.of_string "MirrorPad"
  let mirrorPadGrad = Op.Name.of_string "MirrorPadGrad"
  let mod_ = Op.Name.of_string "Mod"
  let mul = Op.Name.of_string "Mul"
  let multinomial = Op.Name.of_string "Multinomial"
  let mutableDenseHashTable = Op.Name.of_string "MutableDenseHashTable"
  let mutableDenseHashTableV2 = Op.Name.of_string "MutableDenseHashTableV2"
  let mutableHashTable = Op.Name.of_string "MutableHashTable"
  let mutableHashTableOfTensors = Op.Name.of_string "MutableHashTableOfTensors"
  let mutableHashTableOfTensorsV2 = Op.Name.of_string "MutableHashTableOfTensorsV2"
  let mutableHashTableV2 = Op.Name.of_string "MutableHashTableV2"
  let neg = Op.Name.of_string "Neg"
  let negTrain = Op.Name.of_string "NegTrain"
  let nextIteration = Op.Name.of_string "NextIteration"
  let noOp = Op.Name.of_string "NoOp"
  let nonMaxSuppression = Op.Name.of_string "NonMaxSuppression"
  let nonMaxSuppressionV2 = Op.Name.of_string "NonMaxSuppressionV2"
  let notEqual = Op.Name.of_string "NotEqual"
  let oneHot = Op.Name.of_string "OneHot"
  let oneShotIterator = Op.Name.of_string "OneShotIterator"
  let onesLike = Op.Name.of_string "OnesLike"
  let orderedMapClear = Op.Name.of_string "OrderedMapClear"
  let orderedMapIncompleteSize = Op.Name.of_string "OrderedMapIncompleteSize"
  let orderedMapSize = Op.Name.of_string "OrderedMapSize"
  let pack = Op.Name.of_string "Pack"
  let pad = Op.Name.of_string "Pad"
  let padV2 = Op.Name.of_string "PadV2"
  let paddingFIFOQueue = Op.Name.of_string "PaddingFIFOQueue"
  let paddingFIFOQueueV2 = Op.Name.of_string "PaddingFIFOQueueV2"
  let parallelConcat = Op.Name.of_string "ParallelConcat"
  let parallelDynamicStitch = Op.Name.of_string "ParallelDynamicStitch"
  let parameterizedTruncatedNormal = Op.Name.of_string "ParameterizedTruncatedNormal"
  let parseTensor = Op.Name.of_string "ParseTensor"
  let placeholder = Op.Name.of_string "Placeholder"
  let placeholderV2 = Op.Name.of_string "PlaceholderV2"
  let placeholderWithDefault = Op.Name.of_string "PlaceholderWithDefault"
  let polygamma = Op.Name.of_string "Polygamma"
  let populationCount = Op.Name.of_string "PopulationCount"
  let pow = Op.Name.of_string "Pow"
  let prefetchDataset = Op.Name.of_string "PrefetchDataset"
  let preventGradient = Op.Name.of_string "PreventGradient"
  let priorityQueue = Op.Name.of_string "PriorityQueue"
  let priorityQueueV2 = Op.Name.of_string "PriorityQueueV2"
  let prod = Op.Name.of_string "Prod"
  let qr = Op.Name.of_string "Qr"
  let quantizeAndDequantize = Op.Name.of_string "QuantizeAndDequantize"
  let quantizeAndDequantizeV2 = Op.Name.of_string "QuantizeAndDequantizeV2"
  let quantizeAndDequantizeV3 = Op.Name.of_string "QuantizeAndDequantizeV3"
  let quantizeDownAndShrinkRange = Op.Name.of_string "QuantizeDownAndShrinkRange"
  let quantizeV2 = Op.Name.of_string "QuantizeV2"
  let quantizedAdd = Op.Name.of_string "QuantizedAdd"
  let quantizedAvgPool = Op.Name.of_string "QuantizedAvgPool"
  let quantizedBatchNormWithGlobalNormalization = Op.Name.of_string "QuantizedBatchNormWithGlobalNormalization"
  let quantizedBiasAdd = Op.Name.of_string "QuantizedBiasAdd"
  let quantizedConcat = Op.Name.of_string "QuantizedConcat"
  let quantizedConv2D = Op.Name.of_string "QuantizedConv2D"
  let quantizedInstanceNorm = Op.Name.of_string "QuantizedInstanceNorm"
  let quantizedMatMul = Op.Name.of_string "QuantizedMatMul"
  let quantizedMaxPool = Op.Name.of_string "QuantizedMaxPool"
  let quantizedMul = Op.Name.of_string "QuantizedMul"
  let quantizedRelu = Op.Name.of_string "QuantizedRelu"
  let quantizedRelu6 = Op.Name.of_string "QuantizedRelu6"
  let quantizedReluX = Op.Name.of_string "QuantizedReluX"
  let quantizedReshape = Op.Name.of_string "QuantizedReshape"
  let quantizedResizeBilinear = Op.Name.of_string "QuantizedResizeBilinear"
  let queueClose = Op.Name.of_string "QueueClose"
  let queueCloseV2 = Op.Name.of_string "QueueCloseV2"
  let queueIsClosed = Op.Name.of_string "QueueIsClosed"
  let queueIsClosedV2 = Op.Name.of_string "QueueIsClosedV2"
  let queueSize = Op.Name.of_string "QueueSize"
  let queueSizeV2 = Op.Name.of_string "QueueSizeV2"
  let rFFT = Op.Name.of_string "RFFT"
  let rFFT2D = Op.Name.of_string "RFFT2D"
  let rFFT3D = Op.Name.of_string "RFFT3D"
  let rGBToHSV = Op.Name.of_string "RGBToHSV"
  let randomCrop = Op.Name.of_string "RandomCrop"
  let randomGamma = Op.Name.of_string "RandomGamma"
  let randomPoisson = Op.Name.of_string "RandomPoisson"
  let randomPoissonV2 = Op.Name.of_string "RandomPoissonV2"
  let randomShuffle = Op.Name.of_string "RandomShuffle"
  let randomShuffleQueue = Op.Name.of_string "RandomShuffleQueue"
  let randomShuffleQueueV2 = Op.Name.of_string "RandomShuffleQueueV2"
  let randomStandardNormal = Op.Name.of_string "RandomStandardNormal"
  let randomUniform = Op.Name.of_string "RandomUniform"
  let randomUniformInt = Op.Name.of_string "RandomUniformInt"
  let range = Op.Name.of_string "Range"
  let rangeDataset = Op.Name.of_string "RangeDataset"
  let rank = Op.Name.of_string "Rank"
  let readFile = Op.Name.of_string "ReadFile"
  let readerNumRecordsProduced = Op.Name.of_string "ReaderNumRecordsProduced"
  let readerNumRecordsProducedV2 = Op.Name.of_string "ReaderNumRecordsProducedV2"
  let readerNumWorkUnitsCompleted = Op.Name.of_string "ReaderNumWorkUnitsCompleted"
  let readerNumWorkUnitsCompletedV2 = Op.Name.of_string "ReaderNumWorkUnitsCompletedV2"
  let readerRead = Op.Name.of_string "ReaderRead"
  let readerReadUpTo = Op.Name.of_string "ReaderReadUpTo"
  let readerReadUpToV2 = Op.Name.of_string "ReaderReadUpToV2"
  let readerReadV2 = Op.Name.of_string "ReaderReadV2"
  let readerReset = Op.Name.of_string "ReaderReset"
  let readerResetV2 = Op.Name.of_string "ReaderResetV2"
  let readerRestoreState = Op.Name.of_string "ReaderRestoreState"
  let readerRestoreStateV2 = Op.Name.of_string "ReaderRestoreStateV2"
  let readerSerializeState = Op.Name.of_string "ReaderSerializeState"
  let readerSerializeStateV2 = Op.Name.of_string "ReaderSerializeStateV2"
  let real = Op.Name.of_string "Real"
  let realDiv = Op.Name.of_string "RealDiv"
  let reciprocal = Op.Name.of_string "Reciprocal"
  let reciprocalGrad = Op.Name.of_string "ReciprocalGrad"
  let recordInput = Op.Name.of_string "RecordInput"
  let reduceJoin = Op.Name.of_string "ReduceJoin"
  let refEnter = Op.Name.of_string "RefEnter"
  let refExit = Op.Name.of_string "RefExit"
  let refIdentity = Op.Name.of_string "RefIdentity"
  let refMerge = Op.Name.of_string "RefMerge"
  let refNextIteration = Op.Name.of_string "RefNextIteration"
  let refSelect = Op.Name.of_string "RefSelect"
  let refSwitch = Op.Name.of_string "RefSwitch"
  let relu = Op.Name.of_string "Relu"
  let relu6 = Op.Name.of_string "Relu6"
  let relu6Grad = Op.Name.of_string "Relu6Grad"
  let reluGrad = Op.Name.of_string "ReluGrad"
  let repeatDataset = Op.Name.of_string "RepeatDataset"
  let requantizationRange = Op.Name.of_string "RequantizationRange"
  let requantize = Op.Name.of_string "Requantize"
  let reshape = Op.Name.of_string "Reshape"
  let resizeArea = Op.Name.of_string "ResizeArea"
  let resizeBicubic = Op.Name.of_string "ResizeBicubic"
  let resizeBicubicGrad = Op.Name.of_string "ResizeBicubicGrad"
  let resizeBilinear = Op.Name.of_string "ResizeBilinear"
  let resizeBilinearGrad = Op.Name.of_string "ResizeBilinearGrad"
  let resizeNearestNeighbor = Op.Name.of_string "ResizeNearestNeighbor"
  let resizeNearestNeighborGrad = Op.Name.of_string "ResizeNearestNeighborGrad"
  let resourceApplyAdadelta = Op.Name.of_string "ResourceApplyAdadelta"
  let resourceApplyAdagrad = Op.Name.of_string "ResourceApplyAdagrad"
  let resourceApplyAdagradDA = Op.Name.of_string "ResourceApplyAdagradDA"
  let resourceApplyAdam = Op.Name.of_string "ResourceApplyAdam"
  let resourceApplyCenteredRMSProp = Op.Name.of_string "ResourceApplyCenteredRMSProp"
  let resourceApplyFtrl = Op.Name.of_string "ResourceApplyFtrl"
  let resourceApplyFtrlV2 = Op.Name.of_string "ResourceApplyFtrlV2"
  let resourceApplyGradientDescent = Op.Name.of_string "ResourceApplyGradientDescent"
  let resourceApplyMomentum = Op.Name.of_string "ResourceApplyMomentum"
  let resourceApplyProximalAdagrad = Op.Name.of_string "ResourceApplyProximalAdagrad"
  let resourceApplyProximalGradientDescent = Op.Name.of_string "ResourceApplyProximalGradientDescent"
  let resourceApplyRMSProp = Op.Name.of_string "ResourceApplyRMSProp"
  let resourceSparseApplyAdadelta = Op.Name.of_string "ResourceSparseApplyAdadelta"
  let resourceSparseApplyAdagrad = Op.Name.of_string "ResourceSparseApplyAdagrad"
  let resourceSparseApplyAdagradDA = Op.Name.of_string "ResourceSparseApplyAdagradDA"
  let resourceSparseApplyCenteredRMSProp = Op.Name.of_string "ResourceSparseApplyCenteredRMSProp"
  let resourceSparseApplyFtrl = Op.Name.of_string "ResourceSparseApplyFtrl"
  let resourceSparseApplyFtrlV2 = Op.Name.of_string "ResourceSparseApplyFtrlV2"
  let resourceSparseApplyMomentum = Op.Name.of_string "ResourceSparseApplyMomentum"
  let resourceSparseApplyProximalAdagrad = Op.Name.of_string "ResourceSparseApplyProximalAdagrad"
  let resourceSparseApplyProximalGradientDescent = Op.Name.of_string "ResourceSparseApplyProximalGradientDescent"
  let resourceSparseApplyRMSProp = Op.Name.of_string "ResourceSparseApplyRMSProp"
  let resourceStridedSliceAssign = Op.Name.of_string "ResourceStridedSliceAssign"
  let restore = Op.Name.of_string "Restore"
  let restoreIterator = Op.Name.of_string "RestoreIterator"
  let restoreSlice = Op.Name.of_string "RestoreSlice"
  let reverse = Op.Name.of_string "Reverse"
  let reverseSequence = Op.Name.of_string "ReverseSequence"
  let reverseV2 = Op.Name.of_string "ReverseV2"
  let rint = Op.Name.of_string "Rint"
  let round = Op.Name.of_string "Round"
  let rsqrt = Op.Name.of_string "Rsqrt"
  let rsqrtGrad = Op.Name.of_string "RsqrtGrad"
  let saveIterator = Op.Name.of_string "SaveIterator"
  let scalarSummary = Op.Name.of_string "ScalarSummary"
  let scatterAdd = Op.Name.of_string "ScatterAdd"
  let scatterDiv = Op.Name.of_string "ScatterDiv"
  let scatterMul = Op.Name.of_string "ScatterMul"
  let scatterNd = Op.Name.of_string "ScatterNd"
  let scatterNdAdd = Op.Name.of_string "ScatterNdAdd"
  let scatterNdNonAliasingAdd = Op.Name.of_string "ScatterNdNonAliasingAdd"
  let scatterNdSub = Op.Name.of_string "ScatterNdSub"
  let scatterNdUpdate = Op.Name.of_string "ScatterNdUpdate"
  let scatterSub = Op.Name.of_string "ScatterSub"
  let scatterUpdate = Op.Name.of_string "ScatterUpdate"
  let sdcaFprint = Op.Name.of_string "SdcaFprint"
  let sdcaShrinkL1 = Op.Name.of_string "SdcaShrinkL1"
  let segmentMax = Op.Name.of_string "SegmentMax"
  let segmentMean = Op.Name.of_string "SegmentMean"
  let segmentMin = Op.Name.of_string "SegmentMin"
  let segmentProd = Op.Name.of_string "SegmentProd"
  let segmentSum = Op.Name.of_string "SegmentSum"
  let select = Op.Name.of_string "Select"
  let selfAdjointEig = Op.Name.of_string "SelfAdjointEig"
  let selfAdjointEigV2 = Op.Name.of_string "SelfAdjointEigV2"
  let selu = Op.Name.of_string "Selu"
  let seluGrad = Op.Name.of_string "SeluGrad"
  let serializeManySparse = Op.Name.of_string "SerializeManySparse"
  let serializeSparse = Op.Name.of_string "SerializeSparse"
  let serializeTensor = Op.Name.of_string "SerializeTensor"
  let setSize = Op.Name.of_string "SetSize"
  let shape = Op.Name.of_string "Shape"
  let shapeN = Op.Name.of_string "ShapeN"
  let shardedFilename = Op.Name.of_string "ShardedFilename"
  let shardedFilespec = Op.Name.of_string "ShardedFilespec"
  let shuffleDataset = Op.Name.of_string "ShuffleDataset"
  let sigmoid = Op.Name.of_string "Sigmoid"
  let sigmoidGrad = Op.Name.of_string "SigmoidGrad"
  let sign = Op.Name.of_string "Sign"
  let sin = Op.Name.of_string "Sin"
  let sinh = Op.Name.of_string "Sinh"
  let size = Op.Name.of_string "Size"
  let skipDataset = Op.Name.of_string "SkipDataset"
  let skipgram = Op.Name.of_string "Skipgram"
  let slice = Op.Name.of_string "Slice"
  let softmax = Op.Name.of_string "Softmax"
  let softmaxCrossEntropyWithLogits = Op.Name.of_string "SoftmaxCrossEntropyWithLogits"
  let softplus = Op.Name.of_string "Softplus"
  let softplusGrad = Op.Name.of_string "SoftplusGrad"
  let softsign = Op.Name.of_string "Softsign"
  let softsignGrad = Op.Name.of_string "SoftsignGrad"
  let spaceToBatch = Op.Name.of_string "SpaceToBatch"
  let spaceToBatchND = Op.Name.of_string "SpaceToBatchND"
  let spaceToDepth = Op.Name.of_string "SpaceToDepth"
  let sparseAccumulatorApplyGradient = Op.Name.of_string "SparseAccumulatorApplyGradient"
  let sparseAccumulatorTakeGradient = Op.Name.of_string "SparseAccumulatorTakeGradient"
  let sparseAdd = Op.Name.of_string "SparseAdd"
  let sparseAddGrad = Op.Name.of_string "SparseAddGrad"
  let sparseApplyAdadelta = Op.Name.of_string "SparseApplyAdadelta"
  let sparseApplyAdagrad = Op.Name.of_string "SparseApplyAdagrad"
  let sparseApplyAdagradDA = Op.Name.of_string "SparseApplyAdagradDA"
  let sparseApplyCenteredRMSProp = Op.Name.of_string "SparseApplyCenteredRMSProp"
  let sparseApplyFtrl = Op.Name.of_string "SparseApplyFtrl"
  let sparseApplyFtrlV2 = Op.Name.of_string "SparseApplyFtrlV2"
  let sparseApplyMomentum = Op.Name.of_string "SparseApplyMomentum"
  let sparseApplyProximalAdagrad = Op.Name.of_string "SparseApplyProximalAdagrad"
  let sparseApplyProximalGradientDescent = Op.Name.of_string "SparseApplyProximalGradientDescent"
  let sparseApplyRMSProp = Op.Name.of_string "SparseApplyRMSProp"
  let sparseConcat = Op.Name.of_string "SparseConcat"
  let sparseConditionalAccumulator = Op.Name.of_string "SparseConditionalAccumulator"
  let sparseDenseCwiseAdd = Op.Name.of_string "SparseDenseCwiseAdd"
  let sparseDenseCwiseDiv = Op.Name.of_string "SparseDenseCwiseDiv"
  let sparseDenseCwiseMul = Op.Name.of_string "SparseDenseCwiseMul"
  let sparseFillEmptyRows = Op.Name.of_string "SparseFillEmptyRows"
  let sparseFillEmptyRowsGrad = Op.Name.of_string "SparseFillEmptyRowsGrad"
  let sparseMatMul = Op.Name.of_string "SparseMatMul"
  let sparseReduceMax = Op.Name.of_string "SparseReduceMax"
  let sparseReduceMaxSparse = Op.Name.of_string "SparseReduceMaxSparse"
  let sparseReduceSum = Op.Name.of_string "SparseReduceSum"
  let sparseReduceSumSparse = Op.Name.of_string "SparseReduceSumSparse"
  let sparseReorder = Op.Name.of_string "SparseReorder"
  let sparseReshape = Op.Name.of_string "SparseReshape"
  let sparseSegmentMean = Op.Name.of_string "SparseSegmentMean"
  let sparseSegmentMeanGrad = Op.Name.of_string "SparseSegmentMeanGrad"
  let sparseSegmentSqrtN = Op.Name.of_string "SparseSegmentSqrtN"
  let sparseSegmentSqrtNGrad = Op.Name.of_string "SparseSegmentSqrtNGrad"
  let sparseSegmentSum = Op.Name.of_string "SparseSegmentSum"
  let sparseSlice = Op.Name.of_string "SparseSlice"
  let sparseSoftmax = Op.Name.of_string "SparseSoftmax"
  let sparseSoftmaxCrossEntropyWithLogits = Op.Name.of_string "SparseSoftmaxCrossEntropyWithLogits"
  let sparseSparseMaximum = Op.Name.of_string "SparseSparseMaximum"
  let sparseSparseMinimum = Op.Name.of_string "SparseSparseMinimum"
  let sparseTensorDenseAdd = Op.Name.of_string "SparseTensorDenseAdd"
  let sparseTensorDenseMatMul = Op.Name.of_string "SparseTensorDenseMatMul"
  let sparseTensorSliceDataset = Op.Name.of_string "SparseTensorSliceDataset"
  let sparseToDense = Op.Name.of_string "SparseToDense"
  let sparseToSparseSetOperation = Op.Name.of_string "SparseToSparseSetOperation"
  let split = Op.Name.of_string "Split"
  let splitV = Op.Name.of_string "SplitV"
  let sqlDataset = Op.Name.of_string "SqlDataset"
  let sqrt = Op.Name.of_string "Sqrt"
  let sqrtGrad = Op.Name.of_string "SqrtGrad"
  let square = Op.Name.of_string "Square"
  let squaredDifference = Op.Name.of_string "SquaredDifference"
  let squeeze = Op.Name.of_string "Squeeze"
  let stack = Op.Name.of_string "Stack"
  let stackClose = Op.Name.of_string "StackClose"
  let stackCloseV2 = Op.Name.of_string "StackCloseV2"
  let stackPop = Op.Name.of_string "StackPop"
  let stackPopV2 = Op.Name.of_string "StackPopV2"
  let stackPush = Op.Name.of_string "StackPush"
  let stackPushV2 = Op.Name.of_string "StackPushV2"
  let stackV2 = Op.Name.of_string "StackV2"
  let stageClear = Op.Name.of_string "StageClear"
  let stageSize = Op.Name.of_string "StageSize"
  let statelessRandomNormal = Op.Name.of_string "StatelessRandomNormal"
  let statelessRandomUniform = Op.Name.of_string "StatelessRandomUniform"
  let statelessTruncatedNormal = Op.Name.of_string "StatelessTruncatedNormal"
  let stopGradient = Op.Name.of_string "StopGradient"
  let stridedSlice = Op.Name.of_string "StridedSlice"
  let stridedSliceAssign = Op.Name.of_string "StridedSliceAssign"
  let stridedSliceGrad = Op.Name.of_string "StridedSliceGrad"
  let stringJoin = Op.Name.of_string "StringJoin"
  let stringSplit = Op.Name.of_string "StringSplit"
  let stringToHashBucket = Op.Name.of_string "StringToHashBucket"
  let stringToHashBucketFast = Op.Name.of_string "StringToHashBucketFast"
  let stringToHashBucketStrong = Op.Name.of_string "StringToHashBucketStrong"
  let stringToNumber = Op.Name.of_string "StringToNumber"
  let sub = Op.Name.of_string "Sub"
  let substr = Op.Name.of_string "Substr"
  let sum = Op.Name.of_string "Sum"
  let svd = Op.Name.of_string "Svd"
  let switch = Op.Name.of_string "Switch"
  let tFRecordDataset = Op.Name.of_string "TFRecordDataset"
  let tFRecordReader = Op.Name.of_string "TFRecordReader"
  let tFRecordReaderV2 = Op.Name.of_string "TFRecordReaderV2"
  let takeDataset = Op.Name.of_string "TakeDataset"
  let takeManySparseFromTensorsMap = Op.Name.of_string "TakeManySparseFromTensorsMap"
  let tan = Op.Name.of_string "Tan"
  let tanh = Op.Name.of_string "Tanh"
  let tanhGrad = Op.Name.of_string "TanhGrad"
  let temporaryVariable = Op.Name.of_string "TemporaryVariable"
  let tensorArray = Op.Name.of_string "TensorArray"
  let tensorArrayClose = Op.Name.of_string "TensorArrayClose"
  let tensorArrayCloseV2 = Op.Name.of_string "TensorArrayCloseV2"
  let tensorArrayCloseV3 = Op.Name.of_string "TensorArrayCloseV3"
  let tensorArrayConcat = Op.Name.of_string "TensorArrayConcat"
  let tensorArrayConcatV2 = Op.Name.of_string "TensorArrayConcatV2"
  let tensorArrayConcatV3 = Op.Name.of_string "TensorArrayConcatV3"
  let tensorArrayGather = Op.Name.of_string "TensorArrayGather"
  let tensorArrayGatherV2 = Op.Name.of_string "TensorArrayGatherV2"
  let tensorArrayGatherV3 = Op.Name.of_string "TensorArrayGatherV3"
  let tensorArrayGrad = Op.Name.of_string "TensorArrayGrad"
  let tensorArrayGradV2 = Op.Name.of_string "TensorArrayGradV2"
  let tensorArrayGradV3 = Op.Name.of_string "TensorArrayGradV3"
  let tensorArrayPack = Op.Name.of_string "TensorArrayPack"
  let tensorArrayRead = Op.Name.of_string "TensorArrayRead"
  let tensorArrayReadV2 = Op.Name.of_string "TensorArrayReadV2"
  let tensorArrayReadV3 = Op.Name.of_string "TensorArrayReadV3"
  let tensorArrayScatter = Op.Name.of_string "TensorArrayScatter"
  let tensorArrayScatterV2 = Op.Name.of_string "TensorArrayScatterV2"
  let tensorArrayScatterV3 = Op.Name.of_string "TensorArrayScatterV3"
  let tensorArraySize = Op.Name.of_string "TensorArraySize"
  let tensorArraySizeV2 = Op.Name.of_string "TensorArraySizeV2"
  let tensorArraySizeV3 = Op.Name.of_string "TensorArraySizeV3"
  let tensorArraySplit = Op.Name.of_string "TensorArraySplit"
  let tensorArraySplitV2 = Op.Name.of_string "TensorArraySplitV2"
  let tensorArraySplitV3 = Op.Name.of_string "TensorArraySplitV3"
  let tensorArrayUnpack = Op.Name.of_string "TensorArrayUnpack"
  let tensorArrayV2 = Op.Name.of_string "TensorArrayV2"
  let tensorArrayV3 = Op.Name.of_string "TensorArrayV3"
  let tensorArrayWrite = Op.Name.of_string "TensorArrayWrite"
  let tensorArrayWriteV2 = Op.Name.of_string "TensorArrayWriteV2"
  let tensorArrayWriteV3 = Op.Name.of_string "TensorArrayWriteV3"
  let tensorSummary = Op.Name.of_string "TensorSummary"
  let tensorSummaryV2 = Op.Name.of_string "TensorSummaryV2"
  let textLineDataset = Op.Name.of_string "TextLineDataset"
  let textLineReader = Op.Name.of_string "TextLineReader"
  let textLineReaderV2 = Op.Name.of_string "TextLineReaderV2"
  let threadUnsafeUnigramCandidateSampler = Op.Name.of_string "ThreadUnsafeUnigramCandidateSampler"
  let tile = Op.Name.of_string "Tile"
  let tileGrad = Op.Name.of_string "TileGrad"
  let topK = Op.Name.of_string "TopK"
  let topKV2 = Op.Name.of_string "TopKV2"
  let transpose = Op.Name.of_string "Transpose"
  let truncateDiv = Op.Name.of_string "TruncateDiv"
  let truncateMod = Op.Name.of_string "TruncateMod"
  let truncatedNormal = Op.Name.of_string "TruncatedNormal"
  let uniformCandidateSampler = Op.Name.of_string "UniformCandidateSampler"
  let unique = Op.Name.of_string "Unique"
  let uniqueWithCounts = Op.Name.of_string "UniqueWithCounts"
  let unpack = Op.Name.of_string "Unpack"
  let unsortedSegmentMax = Op.Name.of_string "UnsortedSegmentMax"
  let unsortedSegmentSum = Op.Name.of_string "UnsortedSegmentSum"
  let variable = Op.Name.of_string "Variable"
  let variableV2 = Op.Name.of_string "VariableV2"
  let where = Op.Name.of_string "Where"
  let wholeFileReader = Op.Name.of_string "WholeFileReader"
  let wholeFileReaderV2 = Op.Name.of_string "WholeFileReaderV2"
  let writeFile = Op.Name.of_string "WriteFile"
  let zerosLike = Op.Name.of_string "ZerosLike"
  let zeta = Op.Name.of_string "Zeta"
  let zipDataset = Op.Name.of_string "ZipDataset"
end

let context = Op.default_context ()

let abort
    ?(error_msg="")
    ?(exit_without_error=false)
    ()
  =
  Op.create context Op_names.abort
  |> Op.set_attr_string ~name:"error_msg" ~value:error_msg
  |> Op.set_attr_bool ~name:"exit_without_error" ~value:exit_without_error
  |> Op.execute0

let abs
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.abs
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let accumulatorApplyGradient
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
  =
  Op.create context Op_names.accumulatorApplyGradient
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op local_step
  |> fun op -> Op.add_input op gradient
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type gradient)
  |> Op.execute0

let accumulatorNumAccumulated
    (handle : [ `string ] t)
  =
  Op.create context Op_names.accumulatorNumAccumulated
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let accumulatorSetGlobalStep
    (handle : [ `string ] t)
    (new_global_step : [ `int64 ] t)
  =
  Op.create context Op_names.accumulatorSetGlobalStep
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op new_global_step
  |> Op.execute0

let accumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  Op.create context Op_names.accumulatorTakeGradient
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op num_required
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute1

let acos
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.acos
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let acosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.acosh
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let add
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
  =
  Op.create context Op_names.add
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
  Op.create context Op_names.addManySparseToTensorsMap
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
  Op.create context Op_names.addN
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
  Op.create context Op_names.addSparseToTensorsMap
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
  Op.create context Op_names.adjustContrast
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
  Op.create context Op_names.adjustContrastv2
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op contrast_factor
  |> Op.execute1

let adjustHue
    (images : [ `float ] t)
    (delta : [ `float ] t)
  =
  Op.create context Op_names.adjustHue
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op delta
  |> Op.execute1

let adjustSaturation
    (images : [ `float ] t)
    (scale : [ `float ] t)
  =
  Op.create context Op_names.adjustSaturation
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op scale
  |> Op.execute1

let all
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context Op_names.all
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
  Op.create context Op_names.allCandidateSampler
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
  Op.create context Op_names.angle
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let any
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context Op_names.any
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
  Op.create context Op_names.applyAdadelta
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
  Op.create context Op_names.applyAdagrad
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
  Op.create context Op_names.applyAdagradDA
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
  Op.create context Op_names.applyAdam
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
  Op.create context Op_names.applyCenteredRMSProp
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
  Op.create context Op_names.applyFtrl
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
  Op.create context Op_names.applyFtrlV2
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
  Op.create context Op_names.applyGradientDescent
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
  Op.create context Op_names.applyMomentum
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
  Op.create context Op_names.applyProximalAdagrad
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
  Op.create context Op_names.applyProximalGradientDescent
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
  Op.create context Op_names.applyRMSProp
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
  Op.create context Op_names.approximateEqual
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
  Op.create context Op_names.argMax
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
  Op.create context Op_names.argMin
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
  Op.create context Op_names.asString
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
  Op.create context Op_names.asin
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let asinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.asinh
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let assign
    ?(validate_shape=true)
    ?(use_locking=true)
    (ref : 't t)
    (value : 't t)
  =
  Op.create context Op_names.assign
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
  Op.create context Op_names.assignAdd
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
  Op.create context Op_names.assignSub
  |> fun op -> Op.add_input op ref
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_bool ~name:"use_locking" ~value:use_locking
  |> Op.execute1

let atan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.atan
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let atan2
    (y : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.atan2
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let atanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.atanh
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let audioSpectrogram
    ~window_size
    ~stride
    ?(magnitude_squared=false)
    (input : [ `float ] t)
  =
  Op.create context Op_names.audioSpectrogram
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
  Op.create context Op_names.audioSummary
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
  Op.create context Op_names.audioSummaryV2
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
  Op.create context Op_names.avgPool
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
  Op.create context Op_names.avgPool3D
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
  Op.create context Op_names.avgPool3DGrad
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
  Op.create context Op_names.avgPoolGrad
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
  Op.create context Op_names.barrier
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
  Op.create context Op_names.barrierClose
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_bool ~name:"cancel_pending_enqueues" ~value:cancel_pending_enqueues
  |> Op.execute0

let barrierIncompleteSize
    (handle : [ `string ] t)
  =
  Op.create context Op_names.barrierIncompleteSize
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let barrierInsertMany
    ~component_index
    (handle : [ `string ] t)
    (keys : [ `string ] t)
    (values : 't t)
  =
  Op.create context Op_names.barrierInsertMany
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type values)
  |> Op.set_attr_int ~name:"component_index" ~value:component_index
  |> Op.execute0

let barrierReadySize
    (handle : [ `string ] t)
  =
  Op.create context Op_names.barrierReadySize
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let batchCholesky
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context Op_names.batchCholesky
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchCholeskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.batchCholeskyGrad
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
  Op.create context Op_names.batchDataset
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op batch_size
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let batchFFT
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.batchFFT
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchFFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.batchFFT2D
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchFFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.batchFFT3D
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchIFFT
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.batchIFFT
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchIFFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.batchIFFT2D
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchIFFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.batchIFFT3D
  |> fun op -> Op.add_input op input
  |> Op.execute1

let batchMatMul
    ?(adj_x=false)
    ?(adj_y=false)
    (x : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.batchMatMul
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
  Op.create context Op_names.batchMatrixBandPart
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op num_lower
  |> fun op -> Op.add_input op num_upper
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.batchMatrixDeterminant
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixDiag
    (diagonal : 't t)
  =
  Op.create context Op_names.batchMatrixDiag
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type diagonal)
  |> Op.execute1

let batchMatrixDiagPart
    (input : 't t)
  =
  Op.create context Op_names.batchMatrixDiagPart
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context Op_names.batchMatrixInverse
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let batchMatrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  Op.create context Op_names.batchMatrixSetDiag
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchMatrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  Op.create context Op_names.batchMatrixSolve
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
  Op.create context Op_names.batchMatrixSolveLs
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
  Op.create context Op_names.batchMatrixTriangularSolve
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
  Op.create context Op_names.batchNormWithGlobalNormalization
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
  Op.create context Op_names.batchNormWithGlobalNormalizationGrad
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
  Op.create context Op_names.batchSelfAdjointEig
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let batchSelfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context Op_names.batchSelfAdjointEigV2
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"compute_v" ~value:compute_v
  |> Op.execute2

let batchSvd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context Op_names.batchSvd
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
  Op.create context Op_names.batchToSpace
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
  Op.create context Op_names.batchToSpaceND
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
  Op.create context Op_names.betainc
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
  Op.create context Op_names.biasAdd
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op bias
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let biasAddGrad
    ?(data_format="NHWC")
    (out_backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.biasAddGrad
  |> fun op -> Op.add_input op out_backprop
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type out_backprop)
  |> Op.set_attr_string ~name:"data_format" ~value:data_format
  |> Op.execute1

let biasAddV1
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.biasAddV1
  |> fun op -> Op.add_input op value
  |> fun op -> Op.add_input op bias
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let bincount
    (arr : [ `int32 ] t)
    (size : [ `int32 ] t)
    (weights : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context Op_names.bincount
  |> fun op -> Op.add_input op arr
  |> fun op -> Op.add_input op size
  |> fun op -> Op.add_input op weights
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type weights)
  |> Op.execute1

let bitcast
    ~type_type__
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.bitcast
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"type" ~value:Operation.Type.(to_data_type (P type_type__))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let bitwiseAnd
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.bitwiseAnd
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let bitwiseOr
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.bitwiseOr
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let bitwiseXor
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.bitwiseXor
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let broadcastArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.broadcastArgs
  |> fun op -> Op.add_input op s0
  |> fun op -> Op.add_input op s1
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type s0)
  |> Op.execute1

let broadcastGradientArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.broadcastGradientArgs
  |> fun op -> Op.add_input op s0
  |> fun op -> Op.add_input op s1
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type s0)
  |> Op.execute2

let bucketize
    ~boundaries
    (input : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context Op_names.bucketize
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_float_list ~name:"boundaries" ~value:boundaries
  |> Op.execute1

let cTCGreedyDecoder
    ?(merge_repeated=false)
    (inputs__ : [ `float ] t)
    (sequence_length : [ `int32 ] t)
  =
  Op.create context Op_names.cTCGreedyDecoder
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
  Op.create context Op_names.cTCLoss
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
  Op.create context Op_names.cacheDataset
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op filename
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let cast
    ~type_dstT
    (x : 'srcT t)
  =
  Op.create context Op_names.cast
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"DstT" ~value:Operation.Type.(to_data_type (P type_dstT))
  |> Op.set_attr_data_type ~name:"SrcT" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let ceil
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.ceil
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let checkNumerics
    ~message
    (tensor : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.checkNumerics
  |> fun op -> Op.add_input op tensor
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_string ~name:"message" ~value:message
  |> Op.execute1

let cholesky
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context Op_names.cholesky
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let choleskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.choleskyGrad
  |> fun op -> Op.add_input op l
  |> fun op -> Op.add_input op grad
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type l)
  |> Op.execute1

let compareAndBitpack
    (input : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
    (threshold : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.compareAndBitpack
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op threshold
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let complex
    ~type_tout
    (real : ([< `float | `double ] as 't) t)
    (imag : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.complex
  |> fun op -> Op.add_input op real
  |> fun op -> Op.add_input op imag
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type real)
  |> Op.execute1

let complexAbs
    ~type_tout
    (x : ([< `complex64 ] as 't) t)
  =
  Op.create context Op_names.complexAbs
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
  Op.create context Op_names.computeAccidentalHits
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
  Op.create context Op_names.concat
  |> fun op -> Op.add_input op concat_dim
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.execute1

let concatOffset
    (concat_dim : [ `int32 ] t)
    (shape : [ `int32 ] t list)
  =
  Op.create context Op_names.concatOffset
  |> fun op -> Op.add_input op concat_dim
  |> fun init -> List.fold shape ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"N" ~value:(List.length shape)
  |> Op.execute ~output_len:(List.length shape)

let concatV2
    (values : 't t list)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context Op_names.concatV2
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
  Op.create context Op_names.concatenateDataset
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
  Op.create context Op_names.conditionalAccumulator
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let conj
    (input : ([< `complex64 | `variant ] as 't) t)
  =
  Op.create context Op_names.conj
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let controlTrigger
    ()
  =
  Op.create context Op_names.controlTrigger
  |> Op.execute0

let conv2D
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter : ([< `float ] as 't) t)
  =
  Op.create context Op_names.conv2D
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
  Op.create context Op_names.conv2DBackpropFilter
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
  Op.create context Op_names.conv2DBackpropInput
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
  Op.create context Op_names.conv3D
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
  Op.create context Op_names.conv3DBackpropFilter
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
  Op.create context Op_names.conv3DBackpropFilterV2
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
  Op.create context Op_names.conv3DBackpropInput
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
  Op.create context Op_names.conv3DBackpropInputV2
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
  Op.create context Op_names.copy
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"tensor_name" ~value:tensor_name
  |> Op.execute1

let copyHost
    ?(tensor_name="")
    (input : 't t)
  =
  Op.create context Op_names.copyHost
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_string ~name:"tensor_name" ~value:tensor_name
  |> Op.execute1

let cos
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.cos
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let cosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.cosh
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let countUpTo
    ~limit
    (ref : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.countUpTo
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
  Op.create context Op_names.cropAndResize
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
  Op.create context Op_names.cropAndResizeGradBoxes
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
  Op.create context Op_names.cropAndResizeGradImage
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
  Op.create context Op_names.cross
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
  Op.create context Op_names.cumprod
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
  Op.create context Op_names.cumsum
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
  Op.create context Op_names.debugGradientIdentity
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let debugIdentity
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  Op.create context Op_names.debugIdentity
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
  Op.create context Op_names.debugNanCount
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
  Op.create context Op_names.debugNumericSummary
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
  Op.create context Op_names.decodeAndCropJpeg
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
  Op.create context Op_names.decodeBase64
  |> fun op -> Op.add_input op input
  |> Op.execute1

let decodeBmp
    ?(channels=0)
    (contents : [ `string ] t)
  =
  Op.create context Op_names.decodeBmp
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_int ~name:"channels" ~value:channels
  |> Op.execute1

let decodeGif
    (contents : [ `string ] t)
  =
  Op.create context Op_names.decodeGif
  |> fun op -> Op.add_input op contents
  |> Op.execute1

let decodeJSONExample
    (json_examples : [ `string ] t)
  =
  Op.create context Op_names.decodeJSONExample
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
  Op.create context Op_names.decodeJpeg
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
  Op.create context Op_names.decodePng
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_int ~name:"channels" ~value:channels
  |> Op.execute1

let decodeRaw
    ~type_out_type
    ?(little_endian=true)
    (bytes : [ `string ] t)
  =
  Op.create context Op_names.decodeRaw
  |> fun op -> Op.add_input op bytes
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_bool ~name:"little_endian" ~value:little_endian
  |> Op.execute1

let decodeWav
    ?(desired_channels=(-1))
    ?(desired_samples=(-1))
    (contents : [ `string ] t)
  =
  Op.create context Op_names.decodeWav
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_int ~name:"desired_channels" ~value:desired_channels
  |> Op.set_attr_int ~name:"desired_samples" ~value:desired_samples
  |> Op.execute2

let deleteSessionTensor
    (handle : [ `string ] t)
  =
  Op.create context Op_names.deleteSessionTensor
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let denseToDenseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
  =
  Op.create context Op_names.denseToDenseSetOperation
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
  Op.create context Op_names.denseToSparseBatchDataset
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
  Op.create context Op_names.denseToSparseSetOperation
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
  Op.create context Op_names.depthToSpace
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
  Op.create context Op_names.depthwiseConv2dNative
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
  Op.create context Op_names.depthwiseConv2dNativeBackpropFilter
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
  Op.create context Op_names.depthwiseConv2dNativeBackpropInput
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
  Op.create context Op_names.dequantize
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
  Op.create context Op_names.deserializeManySparse
  |> fun op -> Op.add_input op serialized_sparse
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute3

let destroyTemporaryVariable
    ~var_name
    (ref : 't t)
  =
  Op.create context Op_names.destroyTemporaryVariable
  |> fun op -> Op.add_input op ref
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type ref)
  |> Op.set_attr_string ~name:"var_name" ~value:var_name
  |> Op.execute1

let diag
    (diagonal : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.diag
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type diagonal)
  |> Op.execute1

let diagPart
    (input : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.diagPart
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let digamma
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.digamma
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
  Op.create context Op_names.dilation2D
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
  Op.create context Op_names.dilation2DBackpropFilter
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
  Op.create context Op_names.dilation2DBackpropInput
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
  Op.create context Op_names.div
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let drawBoundingBoxes
    (images : ([< `float ] as 't) t)
    (boxes : [ `float ] t)
  =
  Op.create context Op_names.drawBoundingBoxes
  |> fun op -> Op.add_input op images
  |> fun op -> Op.add_input op boxes
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.execute1

let dynamicPartition
    ~num_partitions
    (data : 't t)
    (partitions : [ `int32 ] t)
  =
  Op.create context Op_names.dynamicPartition
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op partitions
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_int ~name:"num_partitions" ~value:num_partitions
  |> Op.execute ~output_len:num_partitions

let dynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  Op.create context Op_names.dynamicStitch
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
  Op.create context Op_names.editDistance
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
  Op.create context Op_names.elu
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let eluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.eluGrad
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op outputs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let encodeBase64
    ?(pad=false)
    (input : [ `string ] t)
  =
  Op.create context Op_names.encodeBase64
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
  Op.create context Op_names.encodeJpeg
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
  Op.create context Op_names.encodePng
  |> fun op -> Op.add_input op image
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type image)
  |> Op.set_attr_int ~name:"compression" ~value:compression
  |> Op.execute1

let encodeWav
    (audio : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  Op.create context Op_names.encodeWav
  |> fun op -> Op.add_input op audio
  |> fun op -> Op.add_input op sample_rate
  |> Op.execute1

let enter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  Op.create context Op_names.enter
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
  Op.create context Op_names.equal
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let erf
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.erf
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let erfc
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.erfc
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let exit
    (data : 't t)
  =
  Op.create context Op_names.exit
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let exp
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.exp
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let expandDims
    (input : 't t)
    (dim : ([< `int32 | `int64 ] as 'tdim) t)
  =
  Op.create context Op_names.expandDims
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op dim
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tdim" ~value:(Op.Tensor_handle.data_type dim)
  |> Op.execute1

let expm1
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.expm1
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
  Op.create context Op_names.extractGlimpse
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
  Op.create context Op_names.extractImagePatches
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
  Op.create context Op_names.extractJpegShape
  |> fun op -> Op.add_input op contents
  |> Op.set_attr_data_type ~name:"output_type" ~value:Operation.Type.(to_data_type (P type_output_type))
  |> Op.execute1

let fFT
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.fFT
  |> fun op -> Op.add_input op input
  |> Op.execute1

let fFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.fFT2D
  |> fun op -> Op.add_input op input
  |> Op.execute1

let fFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.fFT3D
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
  Op.create context Op_names.fIFOQueue
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
  Op.create context Op_names.fIFOQueueV2
  |> Op.set_attr_type_list ~name:"component_types" ~value:component_types
  |> Op.set_attr_shape_list ~name:"shapes" ~value:shapes
  |> Op.set_attr_int ~name:"capacity" ~value:capacity
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let fact
    ()
  =
  Op.create context Op_names.fact
  |> Op.execute1

let fakeQuantWithMinMaxArgs
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
  =
  Op.create context Op_names.fakeQuantWithMinMaxArgs
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
  Op.create context Op_names.fakeQuantWithMinMaxArgsGradient
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
  Op.create context Op_names.fakeQuantWithMinMaxVars
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
  Op.create context Op_names.fakeQuantWithMinMaxVarsGradient
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
  Op.create context Op_names.fakeQuantWithMinMaxVarsPerChannel
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
  Op.create context Op_names.fakeQuantWithMinMaxVarsPerChannelGradient
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
  Op.create context Op_names.fakeQueue
  |> fun op -> Op.add_input op resource
  |> Op.execute1

let fill
    (dims : [ `int32 ] t)
    (value : 't t)
  =
  Op.create context Op_names.fill
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
  Op.create context Op_names.fixedLengthRecordDataset
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
  Op.create context Op_names.fixedLengthRecordReader
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
  Op.create context Op_names.fixedLengthRecordReaderV2
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
  Op.create context Op_names.fixedUnigramCandidateSampler
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
  Op.create context Op_names.floor
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let floorDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.floorDiv
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let floorMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context Op_names.floorMod
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
  Op.create context Op_names.fractionalAvgPool
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
  Op.create context Op_names.fractionalAvgPoolGrad
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
  Op.create context Op_names.fractionalMaxPool
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
  Op.create context Op_names.fractionalMaxPoolGrad
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
  Op.create context Op_names.fusedBatchNorm
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
  Op.create context Op_names.fusedBatchNormGrad
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
  Op.create context Op_names.fusedBatchNormGradV2
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
  Op.create context Op_names.fusedBatchNormV2
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
  Op.create context Op_names.fusedPadConv2D
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
  Op.create context Op_names.fusedResizeAndPadConv2D
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
  Op.create context Op_names.gather
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
  Op.create context Op_names.gatherNd
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
  Op.create context Op_names.gatherV2
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
  Op.create context Op_names.generateVocabRemapping
  |> fun op -> Op.add_input op new_vocab_file
  |> fun op -> Op.add_input op old_vocab_file
  |> Op.set_attr_int ~name:"new_vocab_offset" ~value:new_vocab_offset
  |> Op.set_attr_int ~name:"num_new_vocab" ~value:num_new_vocab
  |> Op.execute2

let getSessionHandle
    (value : 't t)
  =
  Op.create context Op_names.getSessionHandle
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let getSessionHandleV2
    (value : 't t)
  =
  Op.create context Op_names.getSessionHandleV2
  |> fun op -> Op.add_input op value
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type value)
  |> Op.execute1

let getSessionTensor
    ~type_dtype
    (handle : [ `string ] t)
  =
  Op.create context Op_names.getSessionTensor
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.execute1

let greater
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.greater
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let greaterEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.greaterEqual
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let hSVToRGB
    (images : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.hSVToRGB
  |> fun op -> Op.add_input op images
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.execute1

let hashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  Op.create context Op_names.hashTable
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
  Op.create context Op_names.hashTableV2
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.execute1

let histogramSummary
    (tag : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.histogramSummary
  |> fun op -> Op.add_input op tag
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute1

let iFFT
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.iFFT
  |> fun op -> Op.add_input op input
  |> Op.execute1

let iFFT2D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.iFFT2D
  |> fun op -> Op.add_input op input
  |> Op.execute1

let iFFT3D
    (input : [ `complex64 ] t)
  =
  Op.create context Op_names.iFFT3D
  |> fun op -> Op.add_input op input
  |> Op.execute1

let iRFFT
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context Op_names.iRFFT
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let iRFFT2D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context Op_names.iRFFT2D
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let iRFFT3D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context Op_names.iRFFT3D
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let identity
    (input : 't t)
  =
  Op.create context Op_names.identity
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let identityReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context Op_names.identityReader
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let identityReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context Op_names.identityReaderV2
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let igamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.igamma
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let igammac
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.igammac
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let ignoreErrorsDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
  =
  Op.create context Op_names.ignoreErrorsDataset
  |> fun op -> Op.add_input op input_dataset
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let imag
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  Op.create context Op_names.imag
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let imageSummary
    ?(max_images=3)
    (tag : [ `string ] t)
    (tensor : ([< `uInt8 | `float | `double ] as 't) t)
  =
  Op.create context Op_names.imageSummary
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
  Op.create context Op_names.immutableConst
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"memory_region_name" ~value:memory_region_name
  |> Op.execute1

let inTopK
    ~k
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.inTopK
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
  Op.create context Op_names.inTopKV2
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
  Op.create context Op_names.initializeTable
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
  Op.create context Op_names.initializeTableFromTextFile
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
  Op.create context Op_names.initializeTableFromTextFileV2
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
  Op.create context Op_names.initializeTableV2
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tkey" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tval" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let inv
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.inv
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let invGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.invGrad
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let invert
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.invert
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let invertPermutation
    (x : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.invertPermutation
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isFinite
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.isFinite
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isInf
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.isInf
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isNan
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.isNan
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let isVariableInitialized
    (ref : 'dtype t)
  =
  Op.create context Op_names.isVariableInitialized
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
  Op.create context Op_names.iterator
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
  Op.create context Op_names.iteratorFromStringHandle
  |> fun op -> Op.add_input op string_handle
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let iteratorToStringHandle
    (resource_handle : [ `resource ] t)
  =
  Op.create context Op_names.iteratorToStringHandle
  |> fun op -> Op.add_input op resource_handle
  |> Op.execute1

let l2Loss
    (t : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.l2Loss
  |> fun op -> Op.add_input op t
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type t)
  |> Op.execute1

let lMDBReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context Op_names.lMDBReader
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
  Op.create context Op_names.lRN
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
  Op.create context Op_names.lRNGrad
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
  Op.create context Op_names.learnedUnigramCandidateSampler
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
  Op.create context Op_names.less
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let lessEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.lessEqual
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let lgamma
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.lgamma
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let linSpace
    (start : ([< `float | `double ] as 't) t)
    (stop : ([< `float | `double ] as 't) t)
    (num : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context Op_names.linSpace
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
  Op.create context Op_names.listDiff
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
  Op.create context Op_names.loadAndRemapMatrix
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
  Op.create context Op_names.log
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let log1p
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.log1p
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let logMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.logMatrixDeterminant
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute2

let logSoftmax
    (logits : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.logSoftmax
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
  Op.create context Op_names.logUniformCandidateSampler
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
  Op.create context Op_names.logicalAnd
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.execute1

let logicalNot
    (x : [ `bool ] t)
  =
  Op.create context Op_names.logicalNot
  |> fun op -> Op.add_input op x
  |> Op.execute1

let logicalOr
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  Op.create context Op_names.logicalOr
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.execute1

let lookupTableExport
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `string ] t)
  =
  Op.create context Op_names.lookupTableExport
  |> fun op -> Op.add_input op table_handle
  |> Op.set_attr_data_type ~name:"Tkeys" ~value:Operation.Type.(to_data_type (P type_tkeys))
  |> Op.set_attr_data_type ~name:"Tvalues" ~value:Operation.Type.(to_data_type (P type_tvalues))
  |> Op.execute2

let lookupTableExportV2
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `resource ] t)
  =
  Op.create context Op_names.lookupTableExportV2
  |> fun op -> Op.add_input op table_handle
  |> Op.set_attr_data_type ~name:"Tkeys" ~value:Operation.Type.(to_data_type (P type_tkeys))
  |> Op.set_attr_data_type ~name:"Tvalues" ~value:Operation.Type.(to_data_type (P type_tvalues))
  |> Op.execute2

let lookupTableFind
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  Op.create context Op_names.lookupTableFind
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
  Op.create context Op_names.lookupTableFindV2
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
  Op.create context Op_names.lookupTableImport
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
  Op.create context Op_names.lookupTableImportV2
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
  Op.create context Op_names.lookupTableInsert
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
  Op.create context Op_names.lookupTableInsertV2
  |> fun op -> Op.add_input op table_handle
  |> fun op -> Op.add_input op keys
  |> fun op -> Op.add_input op values
  |> Op.set_attr_data_type ~name:"Tin" ~value:(Op.Tensor_handle.data_type keys)
  |> Op.set_attr_data_type ~name:"Tout" ~value:(Op.Tensor_handle.data_type values)
  |> Op.execute0

let lookupTableSize
    (table_handle : [ `string ] t)
  =
  Op.create context Op_names.lookupTableSize
  |> fun op -> Op.add_input op table_handle
  |> Op.execute1

let lookupTableSizeV2
    (table_handle : [ `resource ] t)
  =
  Op.create context Op_names.lookupTableSizeV2
  |> fun op -> Op.add_input op table_handle
  |> Op.execute1

let loopCond
    (input : [ `bool ] t)
  =
  Op.create context Op_names.loopCond
  |> fun op -> Op.add_input op input
  |> Op.execute1

let makeIterator
    (dataset : [ `variant ] t)
    (iterator : [ `resource ] t)
  =
  Op.create context Op_names.makeIterator
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
  Op.create context Op_names.mapClear
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
  Op.create context Op_names.mapIncompleteSize
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
  Op.create context Op_names.mapSize
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
  Op.create context Op_names.matMul
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op b
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.set_attr_bool ~name:"transpose_a" ~value:transpose_a
  |> Op.set_attr_bool ~name:"transpose_b" ~value:transpose_b
  |> Op.execute1

let matchingFiles
    (pattern : [ `string ] t)
  =
  Op.create context Op_names.matchingFiles
  |> fun op -> Op.add_input op pattern
  |> Op.execute1

let matrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  Op.create context Op_names.matrixBandPart
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op num_lower
  |> fun op -> Op.add_input op num_upper
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.matrixDeterminant
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixDiag
    (diagonal : 't t)
  =
  Op.create context Op_names.matrixDiag
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type diagonal)
  |> Op.execute1

let matrixDiagPart
    (input : 't t)
  =
  Op.create context Op_names.matrixDiagPart
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context Op_names.matrixInverse
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"adjoint" ~value:adjoint
  |> Op.execute1

let matrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  Op.create context Op_names.matrixSetDiag
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op diagonal
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let matrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context Op_names.matrixSolve
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
  Op.create context Op_names.matrixSolveLs
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
  Op.create context Op_names.matrixTriangularSolve
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
  Op.create context Op_names.max
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
  Op.create context Op_names.maxPool
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
  Op.create context Op_names.maxPool3D
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
  Op.create context Op_names.maxPool3DGrad
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
  Op.create context Op_names.maxPool3DGradGrad
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
  Op.create context Op_names.maxPoolGrad
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
  Op.create context Op_names.maxPoolGradGrad
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
  Op.create context Op_names.maxPoolGradGradV2
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
  Op.create context Op_names.maxPoolGradGradWithArgmax
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
  Op.create context Op_names.maxPoolGradV2
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
  Op.create context Op_names.maxPoolGradWithArgmax
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
  Op.create context Op_names.maxPoolV2
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
  Op.create context Op_names.maxPoolWithArgmax
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
  Op.create context Op_names.maximum
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let mean
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  Op.create context Op_names.mean
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op reduction_indices
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type reduction_indices)
  |> Op.set_attr_bool ~name:"keep_dims" ~value:keep_dims
  |> Op.execute1

let merge
    (inputs__ : 't t list)
  =
  Op.create context Op_names.merge
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn inputs__))
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute2

let mergeSummary
    (inputs__ : [ `string ] t list)
  =
  Op.create context Op_names.mergeSummary
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute1

let mergeV2Checkpoints
    ?(delete_old_dirs=true)
    (checkpoint_prefixes : [ `string ] t)
    (destination_prefix : [ `string ] t)
  =
  Op.create context Op_names.mergeV2Checkpoints
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
  Op.create context Op_names.mfcc
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
  Op.create context Op_names.min
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
  Op.create context Op_names.minimum
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let mirrorPad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context Op_names.mirrorPad
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
  Op.create context Op_names.mirrorPadGrad
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
  Op.create context Op_names.mod_
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let mul
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.mul
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
  Op.create context Op_names.multinomial
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
  Op.create context Op_names.mutableDenseHashTable
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
  Op.create context Op_names.mutableDenseHashTableV2
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
  Op.create context Op_names.mutableHashTable
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
  Op.create context Op_names.mutableHashTableOfTensors
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
  Op.create context Op_names.mutableHashTableOfTensorsV2
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
  Op.create context Op_names.mutableHashTableV2
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.set_attr_bool ~name:"use_node_name_sharing" ~value:use_node_name_sharing
  |> Op.execute1

let neg
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.neg
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
  Op.create context Op_names.negTrain
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
  Op.create context Op_names.nextIteration
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let noOp
    ()
  =
  Op.create context Op_names.noOp
  |> Op.execute0

let nonMaxSuppression
    ?(iou_threshold=0.5)
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
  =
  Op.create context Op_names.nonMaxSuppression
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
  Op.create context Op_names.nonMaxSuppressionV2
  |> fun op -> Op.add_input op boxes
  |> fun op -> Op.add_input op scores
  |> fun op -> Op.add_input op max_output_size
  |> fun op -> Op.add_input op iou_threshold
  |> Op.execute1

let notEqual
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  Op.create context Op_names.notEqual
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
  Op.create context Op_names.oneHot
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
  Op.create context Op_names.oneShotIterator
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let onesLike
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.onesLike
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
  Op.create context Op_names.orderedMapClear
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
  Op.create context Op_names.orderedMapIncompleteSize
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
  Op.create context Op_names.orderedMapSize
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
  Op.create context Op_names.pack
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.set_attr_int ~name:"axis" ~value:axis
  |> Op.execute1

let pad
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context Op_names.pad
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
  Op.create context Op_names.padV2
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
  Op.create context Op_names.paddingFIFOQueue
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
  Op.create context Op_names.paddingFIFOQueueV2
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
  Op.create context Op_names.parallelConcat
  |> fun init -> List.fold values ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn values))
  |> Op.set_attr_int ~name:"N" ~value:(List.length values)
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let parallelDynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  Op.create context Op_names.parallelDynamicStitch
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
  Op.create context Op_names.parameterizedTruncatedNormal
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
  Op.create context Op_names.parseTensor
  |> fun op -> Op.add_input op serialized
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.execute1

let placeholder
    ~type_dtype
    ?(shape=[])
    ()
  =
  Op.create context Op_names.placeholder
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let placeholderV2
    ~type_dtype
    ~shape
    ()
  =
  Op.create context Op_names.placeholderV2
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let placeholderWithDefault
    ~shape
    (input : 'dtype t)
  =
  Op.create context Op_names.placeholderWithDefault
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"dtype" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.execute1

let polygamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.polygamma
  |> fun op -> Op.add_input op a
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type a)
  |> Op.execute1

let populationCount
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.populationCount
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let pow
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.pow
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
  Op.create context Op_names.prefetchDataset
  |> fun op -> Op.add_input op input_dataset
  |> fun op -> Op.add_input op buffer_size
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let preventGradient
    ?(message="")
    (input : 't t)
  =
  Op.create context Op_names.preventGradient
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
  Op.create context Op_names.priorityQueue
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
  Op.create context Op_names.priorityQueueV2
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
  Op.create context Op_names.prod
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
  Op.create context Op_names.qr
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
  Op.create context Op_names.quantizeAndDequantize
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
  Op.create context Op_names.quantizeAndDequantizeV2
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
  Op.create context Op_names.quantizeAndDequantizeV3
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
  Op.create context Op_names.quantizeDownAndShrinkRange
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
  Op.create context Op_names.quantizeV2
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
  Op.create context Op_names.quantizedAdd
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
  Op.create context Op_names.quantizedAvgPool
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
  Op.create context Op_names.quantizedBatchNormWithGlobalNormalization
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
  Op.create context Op_names.quantizedBiasAdd
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
  Op.create context Op_names.quantizedConcat
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
  Op.create context Op_names.quantizedConv2D
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
  Op.create context Op_names.quantizedInstanceNorm
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
  Op.create context Op_names.quantizedMatMul
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
  Op.create context Op_names.quantizedMaxPool
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
  Op.create context Op_names.quantizedMul
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
  Op.create context Op_names.quantizedRelu
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
  Op.create context Op_names.quantizedRelu6
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
  Op.create context Op_names.quantizedReluX
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
  Op.create context Op_names.quantizedReshape
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
  Op.create context Op_names.quantizedResizeBilinear
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
  Op.create context Op_names.queueClose
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_bool ~name:"cancel_pending_enqueues" ~value:cancel_pending_enqueues
  |> Op.execute0

let queueCloseV2
    ?(cancel_pending_enqueues=false)
    (handle : [ `resource ] t)
  =
  Op.create context Op_names.queueCloseV2
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_bool ~name:"cancel_pending_enqueues" ~value:cancel_pending_enqueues
  |> Op.execute0

let queueIsClosed
    (handle : [ `string ] t)
  =
  Op.create context Op_names.queueIsClosed
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let queueIsClosedV2
    (handle : [ `resource ] t)
  =
  Op.create context Op_names.queueIsClosedV2
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let queueSize
    (handle : [ `string ] t)
  =
  Op.create context Op_names.queueSize
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let queueSizeV2
    (handle : [ `resource ] t)
  =
  Op.create context Op_names.queueSizeV2
  |> fun op -> Op.add_input op handle
  |> Op.execute1

let rFFT
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context Op_names.rFFT
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let rFFT2D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context Op_names.rFFT2D
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let rFFT3D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  Op.create context Op_names.rFFT3D
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op fft_length
  |> Op.execute1

let rGBToHSV
    (images : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.rGBToHSV
  |> fun op -> Op.add_input op images
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type images)
  |> Op.execute1

let randomCrop
    ?(seed=0)
    ?(seed2=0)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int64 ] t)
  =
  Op.create context Op_names.randomCrop
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
  Op.create context Op_names.randomGamma
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
  Op.create context Op_names.randomPoisson
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
  Op.create context Op_names.randomPoissonV2
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
  Op.create context Op_names.randomShuffle
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
  Op.create context Op_names.randomShuffleQueue
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
  Op.create context Op_names.randomShuffleQueueV2
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
  Op.create context Op_names.randomStandardNormal
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
  Op.create context Op_names.randomUniform
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
  Op.create context Op_names.randomUniformInt
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
  Op.create context Op_names.range
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
  Op.create context Op_names.rangeDataset
  |> fun op -> Op.add_input op start
  |> fun op -> Op.add_input op stop
  |> fun op -> Op.add_input op step
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let rank
    (input : 't t)
  =
  Op.create context Op_names.rank
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let readFile
    (filename : [ `string ] t)
  =
  Op.create context Op_names.readFile
  |> fun op -> Op.add_input op filename
  |> Op.execute1

let readerNumRecordsProduced
    (reader_handle : [ `string ] t)
  =
  Op.create context Op_names.readerNumRecordsProduced
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerNumRecordsProducedV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context Op_names.readerNumRecordsProducedV2
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerNumWorkUnitsCompleted
    (reader_handle : [ `string ] t)
  =
  Op.create context Op_names.readerNumWorkUnitsCompleted
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerNumWorkUnitsCompletedV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context Op_names.readerNumWorkUnitsCompletedV2
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerRead
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
  =
  Op.create context Op_names.readerRead
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> Op.execute2

let readerReadUpTo
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
    (num_records : [ `int64 ] t)
  =
  Op.create context Op_names.readerReadUpTo
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> fun op -> Op.add_input op num_records
  |> Op.execute2

let readerReadUpToV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
    (num_records : [ `int64 ] t)
  =
  Op.create context Op_names.readerReadUpToV2
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> fun op -> Op.add_input op num_records
  |> Op.execute2

let readerReadV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
  =
  Op.create context Op_names.readerReadV2
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op queue_handle
  |> Op.execute2

let readerReset
    (reader_handle : [ `string ] t)
  =
  Op.create context Op_names.readerReset
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute0

let readerResetV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context Op_names.readerResetV2
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute0

let readerRestoreState
    (reader_handle : [ `string ] t)
    (state : [ `string ] t)
  =
  Op.create context Op_names.readerRestoreState
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op state
  |> Op.execute0

let readerRestoreStateV2
    (reader_handle : [ `resource ] t)
    (state : [ `string ] t)
  =
  Op.create context Op_names.readerRestoreStateV2
  |> fun op -> Op.add_input op reader_handle
  |> fun op -> Op.add_input op state
  |> Op.execute0

let readerSerializeState
    (reader_handle : [ `string ] t)
  =
  Op.create context Op_names.readerSerializeState
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let readerSerializeStateV2
    (reader_handle : [ `resource ] t)
  =
  Op.create context Op_names.readerSerializeStateV2
  |> fun op -> Op.add_input op reader_handle
  |> Op.execute1

let real
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  Op.create context Op_names.real
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"Tout" ~value:Operation.Type.(to_data_type (P type_tout))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let realDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.realDiv
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let reciprocal
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.reciprocal
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let reciprocalGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.reciprocalGrad
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
  Op.create context Op_names.recordInput
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
  Op.create context Op_names.reduceJoin
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
  Op.create context Op_names.refEnter
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_string ~name:"frame_name" ~value:frame_name
  |> Op.set_attr_bool ~name:"is_constant" ~value:is_constant
  |> Op.set_attr_int ~name:"parallel_iterations" ~value:parallel_iterations
  |> Op.execute1

let refExit
    (data : 't t)
  =
  Op.create context Op_names.refExit
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let refIdentity
    (input : 't t)
  =
  Op.create context Op_names.refIdentity
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let refMerge
    (inputs__ : 't t list)
  =
  Op.create context Op_names.refMerge
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn inputs__))
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute2

let refNextIteration
    (data : 't t)
  =
  Op.create context Op_names.refNextIteration
  |> fun op -> Op.add_input op data
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute1

let refSelect
    (index : [ `int32 ] t)
    (inputs__ : 't t list)
  =
  Op.create context Op_names.refSelect
  |> fun op -> Op.add_input op index
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type (List.hd_exn inputs__))
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.execute1

let refSwitch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  Op.create context Op_names.refSwitch
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op pred
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute2

let relu
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.relu
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let relu6
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.relu6
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let relu6Grad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.relu6Grad
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let reluGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.reluGrad
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
  Op.create context Op_names.repeatDataset
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
  Op.create context Op_names.requantizationRange
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
  Op.create context Op_names.requantize
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
  Op.create context Op_names.reshape
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
  Op.create context Op_names.resizeArea
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
  Op.create context Op_names.resizeBicubic
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
  Op.create context Op_names.resizeBicubicGrad
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
  Op.create context Op_names.resizeBilinear
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
  Op.create context Op_names.resizeBilinearGrad
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
  Op.create context Op_names.resizeNearestNeighbor
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
  Op.create context Op_names.resizeNearestNeighborGrad
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
  Op.create context Op_names.resourceApplyAdadelta
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
  Op.create context Op_names.resourceApplyAdagrad
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
  Op.create context Op_names.resourceApplyAdagradDA
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
  Op.create context Op_names.resourceApplyAdam
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
  Op.create context Op_names.resourceApplyCenteredRMSProp
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
  Op.create context Op_names.resourceApplyFtrl
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
  Op.create context Op_names.resourceApplyFtrlV2
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
  Op.create context Op_names.resourceApplyGradientDescent
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
  Op.create context Op_names.resourceApplyMomentum
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
  Op.create context Op_names.resourceApplyProximalAdagrad
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
  Op.create context Op_names.resourceApplyProximalGradientDescent
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
  Op.create context Op_names.resourceApplyRMSProp
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
  Op.create context Op_names.resourceSparseApplyAdadelta
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
  Op.create context Op_names.resourceSparseApplyAdagrad
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
  Op.create context Op_names.resourceSparseApplyAdagradDA
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
  Op.create context Op_names.resourceSparseApplyCenteredRMSProp
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
  Op.create context Op_names.resourceSparseApplyFtrl
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
  Op.create context Op_names.resourceSparseApplyFtrlV2
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
  Op.create context Op_names.resourceSparseApplyMomentum
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
  Op.create context Op_names.resourceSparseApplyProximalAdagrad
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
  Op.create context Op_names.resourceSparseApplyProximalGradientDescent
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
  Op.create context Op_names.resourceSparseApplyRMSProp
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
  Op.create context Op_names.resourceStridedSliceAssign
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
  Op.create context Op_names.restore
  |> fun op -> Op.add_input op file_pattern
  |> fun op -> Op.add_input op tensor_name
  |> Op.set_attr_data_type ~name:"dt" ~value:Operation.Type.(to_data_type (P type_dt))
  |> Op.set_attr_int ~name:"preferred_shard" ~value:preferred_shard
  |> Op.execute1

let restoreIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  Op.create context Op_names.restoreIterator
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
  Op.create context Op_names.restoreSlice
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
  Op.create context Op_names.reverse
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
  Op.create context Op_names.reverseSequence
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
  Op.create context Op_names.reverseV2
  |> fun op -> Op.add_input op tensor
  |> fun op -> Op.add_input op axis
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.set_attr_data_type ~name:"Tidx" ~value:(Op.Tensor_handle.data_type axis)
  |> Op.execute1

let rint
    (x : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.rint
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let round
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.round
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let rsqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.rsqrt
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let rsqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.rsqrtGrad
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let saveIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  Op.create context Op_names.saveIterator
  |> fun op -> Op.add_input op iterator
  |> fun op -> Op.add_input op path
  |> Op.execute0

let scalarSummary
    (tags : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.scalarSummary
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
  Op.create context Op_names.scatterAdd
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
  Op.create context Op_names.scatterDiv
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
  Op.create context Op_names.scatterMul
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
  Op.create context Op_names.scatterNd
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
  Op.create context Op_names.scatterNdAdd
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
  Op.create context Op_names.scatterNdNonAliasingAdd
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
  Op.create context Op_names.scatterNdSub
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
  Op.create context Op_names.scatterNdUpdate
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
  Op.create context Op_names.scatterSub
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
  Op.create context Op_names.scatterUpdate
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
  Op.create context Op_names.sdcaFprint
  |> fun op -> Op.add_input op input
  |> Op.execute1

let sdcaShrinkL1
    ~l1
    ~l2
    (weights : [ `float ] t list)
  =
  Op.create context Op_names.sdcaShrinkL1
  |> fun init -> List.fold weights ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"num_features" ~value:(List.length weights)
  |> Op.set_attr_float ~name:"l1" ~value:l1
  |> Op.set_attr_float ~name:"l2" ~value:l2
  |> Op.execute0

let segmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context Op_names.segmentMax
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentMean
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context Op_names.segmentMean
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentMin
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context Op_names.segmentMin
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentProd
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context Op_names.segmentProd
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op segment_ids
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.set_attr_data_type ~name:"Tindices" ~value:(Op.Tensor_handle.data_type segment_ids)
  |> Op.execute1

let segmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  Op.create context Op_names.segmentSum
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
  Op.create context Op_names.select
  |> fun op -> Op.add_input op condition
  |> fun op -> Op.add_input op t
  |> fun op -> Op.add_input op e
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type t)
  |> Op.execute1

let selfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  Op.create context Op_names.selfAdjointEig
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let selfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  Op.create context Op_names.selfAdjointEigV2
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"compute_v" ~value:compute_v
  |> Op.execute2

let selu
    (features : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.selu
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let seluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.seluGrad
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op outputs
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let serializeManySparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  Op.create context Op_names.serializeManySparse
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
  Op.create context Op_names.serializeSparse
  |> fun op -> Op.add_input op sparse_indices
  |> fun op -> Op.add_input op sparse_values
  |> fun op -> Op.add_input op sparse_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sparse_values)
  |> Op.execute1

let serializeTensor
    (tensor : 't t)
  =
  Op.create context Op_names.serializeTensor
  |> fun op -> Op.add_input op tensor
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type tensor)
  |> Op.execute1

let setSize
    ?(validate_indices=true)
    (set_indices : [ `int64 ] t)
    (set_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set_shape : [ `int64 ] t)
  =
  Op.create context Op_names.setSize
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
  Op.create context Op_names.shape
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let shapeN
    ~type_out_type
    (input : 't t list)
  =
  Op.create context Op_names.shapeN
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
  Op.create context Op_names.shardedFilename
  |> fun op -> Op.add_input op basename
  |> fun op -> Op.add_input op shard
  |> fun op -> Op.add_input op num_shards
  |> Op.execute1

let shardedFilespec
    (basename : [ `string ] t)
    (num_shards : [ `int32 ] t)
  =
  Op.create context Op_names.shardedFilespec
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
  Op.create context Op_names.shuffleDataset
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
  Op.create context Op_names.sigmoid
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sigmoidGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.sigmoidGrad
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let sign
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.sign
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sin
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.sin
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.sinh
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let size
    ~type_out_type
    (input : 't t)
  =
  Op.create context Op_names.size
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
  Op.create context Op_names.skipDataset
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
  Op.create context Op_names.skipgram
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
  Op.create context Op_names.slice
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op begin__
  |> fun op -> Op.add_input op size
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Index" ~value:(Op.Tensor_handle.data_type begin__)
  |> Op.execute1

let softmax
    (logits : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.softmax
  |> fun op -> Op.add_input op logits
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type logits)
  |> Op.execute1

let softmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.softmaxCrossEntropyWithLogits
  |> fun op -> Op.add_input op features
  |> fun op -> Op.add_input op labels
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute2

let softplus
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.softplus
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let softplusGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.softplusGrad
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let softsign
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.softsign
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type features)
  |> Op.execute1

let softsignGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.softsignGrad
  |> fun op -> Op.add_input op gradients
  |> fun op -> Op.add_input op features
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type gradients)
  |> Op.execute1

let spaceToBatch
    ~block_size
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  Op.create context Op_names.spaceToBatch
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
  Op.create context Op_names.spaceToBatchND
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
  Op.create context Op_names.spaceToDepth
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
  Op.create context Op_names.sparseAccumulatorApplyGradient
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
  Op.create context Op_names.sparseAccumulatorTakeGradient
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
  Op.create context Op_names.sparseAdd
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
  Op.create context Op_names.sparseAddGrad
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
  Op.create context Op_names.sparseApplyAdadelta
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
  Op.create context Op_names.sparseApplyAdagrad
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
  Op.create context Op_names.sparseApplyAdagradDA
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
  Op.create context Op_names.sparseApplyCenteredRMSProp
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
  Op.create context Op_names.sparseApplyFtrl
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
  Op.create context Op_names.sparseApplyFtrlV2
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
  Op.create context Op_names.sparseApplyMomentum
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
  Op.create context Op_names.sparseApplyProximalAdagrad
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
  Op.create context Op_names.sparseApplyProximalGradientDescent
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
  Op.create context Op_names.sparseApplyRMSProp
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
  Op.create context Op_names.sparseConcat
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
  Op.create context Op_names.sparseConditionalAccumulator
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
  Op.create context Op_names.sparseDenseCwiseAdd
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
  Op.create context Op_names.sparseDenseCwiseDiv
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
  Op.create context Op_names.sparseDenseCwiseMul
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
  Op.create context Op_names.sparseFillEmptyRows
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
  Op.create context Op_names.sparseFillEmptyRowsGrad
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
  Op.create context Op_names.sparseMatMul
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
  Op.create context Op_names.sparseReduceMax
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
  Op.create context Op_names.sparseReduceMaxSparse
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
  Op.create context Op_names.sparseReduceSum
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
  Op.create context Op_names.sparseReduceSumSparse
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
  Op.create context Op_names.sparseReorder
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
  Op.create context Op_names.sparseReshape
  |> fun op -> Op.add_input op input_indices
  |> fun op -> Op.add_input op input_shape
  |> fun op -> Op.add_input op new_shape
  |> Op.execute2

let sparseSegmentMean
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  Op.create context Op_names.sparseSegmentMean
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
  Op.create context Op_names.sparseSegmentMeanGrad
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
  Op.create context Op_names.sparseSegmentSqrtN
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
  Op.create context Op_names.sparseSegmentSqrtNGrad
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
  Op.create context Op_names.sparseSegmentSum
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
  Op.create context Op_names.sparseSlice
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
  Op.create context Op_names.sparseSoftmax
  |> fun op -> Op.add_input op sp_indices
  |> fun op -> Op.add_input op sp_values
  |> fun op -> Op.add_input op sp_shape
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type sp_values)
  |> Op.execute1

let sparseSoftmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `int32 | `int64 ] as 'tlabels) t)
  =
  Op.create context Op_names.sparseSoftmaxCrossEntropyWithLogits
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
  Op.create context Op_names.sparseSparseMaximum
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
  Op.create context Op_names.sparseSparseMinimum
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
  Op.create context Op_names.sparseTensorDenseAdd
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
  Op.create context Op_names.sparseTensorDenseMatMul
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
  Op.create context Op_names.sparseTensorSliceDataset
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
  Op.create context Op_names.sparseToDense
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
  Op.create context Op_names.sparseToSparseSetOperation
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
  Op.create context Op_names.split
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
  Op.create context Op_names.splitV
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
  Op.create context Op_names.sqlDataset
  |> fun op -> Op.add_input op driver_name
  |> fun op -> Op.add_input op data_source_name
  |> fun op -> Op.add_input op query
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.execute1

let sqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.sqrt
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let sqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.sqrtGrad
  |> fun op -> Op.add_input op y
  |> fun op -> Op.add_input op dy
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type y)
  |> Op.execute1

let square
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.square
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let squaredDifference
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.squaredDifference
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let squeeze
    ?(squeeze_dims=[])
    (input : 't t)
  =
  Op.create context Op_names.squeeze
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_int_list ~name:"squeeze_dims" ~value:squeeze_dims
  |> Op.execute1

let stack
    ?(stack_name="")
    ()
  =
  Op.create context Op_names.stack
  |> Op.set_attr_string ~name:"stack_name" ~value:stack_name
  |> Op.execute1

let stackClose
    (handle : [ `string ] t)
  =
  Op.create context Op_names.stackClose
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let stackCloseV2
    (handle : [ `resource ] t)
  =
  Op.create context Op_names.stackCloseV2
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let stackPop
    ~type_elem_type
    (handle : [ `string ] t)
  =
  Op.create context Op_names.stackPop
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_data_type ~name:"elem_type" ~value:Operation.Type.(to_data_type (P type_elem_type))
  |> Op.execute1

let stackPopV2
    ~type_elem_type
    (handle : [ `resource ] t)
  =
  Op.create context Op_names.stackPopV2
  |> fun op -> Op.add_input op handle
  |> Op.set_attr_data_type ~name:"elem_type" ~value:Operation.Type.(to_data_type (P type_elem_type))
  |> Op.execute1

let stackPush
    ?(swap_memory=false)
    (handle : [ `string ] t)
    (elem : 't t)
  =
  Op.create context Op_names.stackPush
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
  Op.create context Op_names.stackPushV2
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op elem
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type elem)
  |> Op.set_attr_bool ~name:"swap_memory" ~value:swap_memory
  |> Op.execute1

let stackV2
    ?(stack_name="")
    (max_size : [ `int32 ] t)
  =
  Op.create context Op_names.stackV2
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
  Op.create context Op_names.stageClear
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
  Op.create context Op_names.stageSize
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
  Op.create context Op_names.statelessRandomNormal
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
  Op.create context Op_names.statelessRandomUniform
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
  Op.create context Op_names.statelessTruncatedNormal
  |> fun op -> Op.add_input op shape
  |> fun op -> Op.add_input op seed
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type shape)
  |> Op.execute1

let stopGradient
    (input : 't t)
  =
  Op.create context Op_names.stopGradient
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
  Op.create context Op_names.stridedSlice
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
  Op.create context Op_names.stridedSliceAssign
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
  Op.create context Op_names.stridedSliceGrad
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
  Op.create context Op_names.stringJoin
  |> fun init -> List.fold inputs__ ~init ~f:Op.add_input
  |> Op.set_attr_int ~name:"N" ~value:(List.length inputs__)
  |> Op.set_attr_string ~name:"separator" ~value:separator
  |> Op.execute1

let stringSplit
    ?(skip_empty=true)
    (input : [ `string ] t)
    (delimiter : [ `string ] t)
  =
  Op.create context Op_names.stringSplit
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op delimiter
  |> Op.set_attr_bool ~name:"skip_empty" ~value:skip_empty
  |> Op.execute3

let stringToHashBucket
    ~num_buckets
    (string_tensor : [ `string ] t)
  =
  Op.create context Op_names.stringToHashBucket
  |> fun op -> Op.add_input op string_tensor
  |> Op.set_attr_int ~name:"num_buckets" ~value:num_buckets
  |> Op.execute1

let stringToHashBucketFast
    ~num_buckets
    (input : [ `string ] t)
  =
  Op.create context Op_names.stringToHashBucketFast
  |> fun op -> Op.add_input op input
  |> Op.set_attr_int ~name:"num_buckets" ~value:num_buckets
  |> Op.execute1

let stringToHashBucketStrong
    ~num_buckets
    ~key
    (input : [ `string ] t)
  =
  Op.create context Op_names.stringToHashBucketStrong
  |> fun op -> Op.add_input op input
  |> Op.set_attr_int ~name:"num_buckets" ~value:num_buckets
  |> Op.set_attr_int_list ~name:"key" ~value:key
  |> Op.execute1

let stringToNumber
    ~type_out_type
    (string_tensor : [ `string ] t)
  =
  Op.create context Op_names.stringToNumber
  |> fun op -> Op.add_input op string_tensor
  |> Op.set_attr_data_type ~name:"out_type" ~value:Operation.Type.(to_data_type (P type_out_type))
  |> Op.execute1

let sub
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.sub
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let substr
    (input : [ `string ] t)
    (pos : ([< `int32 | `int64 ] as 't) t)
    (len : ([< `int32 | `int64 ] as 't) t)
  =
  Op.create context Op_names.substr
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
  Op.create context Op_names.sum
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
  Op.create context Op_names.svd
  |> fun op -> Op.add_input op input
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"compute_uv" ~value:compute_uv
  |> Op.set_attr_bool ~name:"full_matrices" ~value:full_matrices
  |> Op.execute3

let switch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  Op.create context Op_names.switch
  |> fun op -> Op.add_input op data
  |> fun op -> Op.add_input op pred
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type data)
  |> Op.execute2

let tFRecordDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  Op.create context Op_names.tFRecordDataset
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
  Op.create context Op_names.tFRecordReader
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
  Op.create context Op_names.tFRecordReaderV2
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
  Op.create context Op_names.takeDataset
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
  Op.create context Op_names.takeManySparseFromTensorsMap
  |> fun op -> Op.add_input op sparse_handles
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute3

let tan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.tan
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let tanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.tanh
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let tanhGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  Op.create context Op_names.tanhGrad
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
  Op.create context Op_names.temporaryVariable
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
  Op.create context Op_names.tensorArray
  |> fun op -> Op.add_input op size
  |> Op.set_attr_bool ~name:"dynamic_size" ~value:dynamic_size
  |> Op.set_attr_bool ~name:"clear_after_read" ~value:clear_after_read
  |> Op.set_attr_string ~name:"tensor_array_name" ~value:tensor_array_name
  |> Op.set_attr_shape ~name:"element_shape" ~value:element_shape
  |> Op.execute1

let tensorArrayClose
    (handle : [ `string ] t)
  =
  Op.create context Op_names.tensorArrayClose
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let tensorArrayCloseV2
    (handle : [ `string ] t)
  =
  Op.create context Op_names.tensorArrayCloseV2
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let tensorArrayCloseV3
    (handle : [ `resource ] t)
  =
  Op.create context Op_names.tensorArrayCloseV3
  |> fun op -> Op.add_input op handle
  |> Op.execute0

let tensorArrayConcat
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context Op_names.tensorArrayConcat
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
  Op.create context Op_names.tensorArrayConcatV2
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
  Op.create context Op_names.tensorArrayConcatV3
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
  Op.create context Op_names.tensorArrayGather
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
  Op.create context Op_names.tensorArrayGatherV2
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
  Op.create context Op_names.tensorArrayGatherV3
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
  Op.create context Op_names.tensorArrayGrad
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_string ~name:"source" ~value:source
  |> Op.execute1

let tensorArrayGradV2
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context Op_names.tensorArrayGradV2
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.set_attr_string ~name:"source" ~value:source
  |> Op.execute1

let tensorArrayGradV3
    ~source
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context Op_names.tensorArrayGradV3
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
  Op.create context Op_names.tensorArrayPack
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
  Op.create context Op_names.tensorArrayRead
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
  Op.create context Op_names.tensorArrayReadV2
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
  Op.create context Op_names.tensorArrayReadV3
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
  Op.create context Op_names.tensorArrayScatter
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
  Op.create context Op_names.tensorArrayScatterV2
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
  Op.create context Op_names.tensorArrayScatterV3
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
  Op.create context Op_names.tensorArraySize
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.execute1

let tensorArraySizeV2
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context Op_names.tensorArraySizeV2
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.execute1

let tensorArraySizeV3
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context Op_names.tensorArraySizeV3
  |> fun op -> Op.add_input op handle
  |> fun op -> Op.add_input op flow_in
  |> Op.execute1

let tensorArraySplit
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  Op.create context Op_names.tensorArraySplit
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
  Op.create context Op_names.tensorArraySplitV2
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
  Op.create context Op_names.tensorArraySplitV3
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
  Op.create context Op_names.tensorArrayUnpack
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
  Op.create context Op_names.tensorArrayV2
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
  Op.create context Op_names.tensorArrayV3
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
  Op.create context Op_names.tensorArrayWrite
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
  Op.create context Op_names.tensorArrayWriteV2
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
  Op.create context Op_names.tensorArrayWriteV3
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
  Op.create context Op_names.tensorSummary
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
  Op.create context Op_names.tensorSummaryV2
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
  Op.create context Op_names.textLineDataset
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
  Op.create context Op_names.textLineReader
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
  Op.create context Op_names.textLineReaderV2
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
  Op.create context Op_names.threadUnsafeUnigramCandidateSampler
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
  Op.create context Op_names.tile
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op multiples
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_data_type ~name:"Tmultiples" ~value:(Op.Tensor_handle.data_type multiples)
  |> Op.execute1

let tileGrad
    (input : 't t)
    (multiples : [ `int32 ] t)
  =
  Op.create context Op_names.tileGrad
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op multiples
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.execute1

let topK
    ~k
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  Op.create context Op_names.topK
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
  Op.create context Op_names.topKV2
  |> fun op -> Op.add_input op input
  |> fun op -> Op.add_input op k
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type input)
  |> Op.set_attr_bool ~name:"sorted" ~value:sorted
  |> Op.execute2

let transpose
    (x : 't t)
    (perm : ([< `int32 | `int64 ] as 'tperm) t)
  =
  Op.create context Op_names.transpose
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op perm
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"Tperm" ~value:(Op.Tensor_handle.data_type perm)
  |> Op.execute1

let truncateDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  Op.create context Op_names.truncateDiv
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op y
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let truncateMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  Op.create context Op_names.truncateMod
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
  Op.create context Op_names.truncatedNormal
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
  Op.create context Op_names.uniformCandidateSampler
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
  Op.create context Op_names.unique
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"out_idx" ~value:Operation.Type.(to_data_type (P type_out_idx))
  |> Op.execute2

let uniqueWithCounts
    ~type_out_idx
    (x : 't t)
  =
  Op.create context Op_names.uniqueWithCounts
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.set_attr_data_type ~name:"out_idx" ~value:Operation.Type.(to_data_type (P type_out_idx))
  |> Op.execute3

let unpack
    ~num
    ?(axis=0)
    (value : 't t)
  =
  Op.create context Op_names.unpack
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
  Op.create context Op_names.unsortedSegmentMax
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
  Op.create context Op_names.unsortedSegmentSum
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
  Op.create context Op_names.variable
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
  Op.create context Op_names.variableV2
  |> Op.set_attr_data_type ~name:"dtype" ~value:Operation.Type.(to_data_type (P type_dtype))
  |> Op.set_attr_shape ~name:"shape" ~value:shape
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let where
    (input : [ `bool ] t)
  =
  Op.create context Op_names.where
  |> fun op -> Op.add_input op input
  |> Op.execute1

let wholeFileReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context Op_names.wholeFileReader
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let wholeFileReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  Op.create context Op_names.wholeFileReaderV2
  |> Op.set_attr_string ~name:"container" ~value:container
  |> Op.set_attr_string ~name:"shared_name" ~value:shared_name
  |> Op.execute1

let writeFile
    (filename : [ `string ] t)
    (contents : [ `string ] t)
  =
  Op.create context Op_names.writeFile
  |> fun op -> Op.add_input op filename
  |> fun op -> Op.add_input op contents
  |> Op.execute0

let zerosLike
    (x : 't t)
  =
  Op.create context Op_names.zerosLike
  |> fun op -> Op.add_input op x
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let zeta
    (x : ([< `float | `double ] as 't) t)
    (q : ([< `float | `double ] as 't) t)
  =
  Op.create context Op_names.zeta
  |> fun op -> Op.add_input op x
  |> fun op -> Op.add_input op q
  |> Op.set_attr_data_type ~name:"T" ~value:(Op.Tensor_handle.data_type x)
  |> Op.execute1

let zipDataset
    ~output_types
    ~output_shapes
    (input_datasets : [ `variant ] t list)
  =
  Op.create context Op_names.zipDataset
  |> fun init -> List.fold input_datasets ~init ~f:Op.add_input
  |> Op.set_attr_type_list ~name:"output_types" ~value:output_types
  |> Op.set_attr_shape_list ~name:"output_shapes" ~value:output_shapes
  |> Op.set_attr_int ~name:"N" ~value:(List.length input_datasets)
  |> Op.execute1

