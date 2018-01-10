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
  let inputs = [] in
  let attrs = [
    "error_msg", `string error_msg;
    "exit_without_error", `bool exit_without_error;
  ]
  in
  Op.create context Op_names.abort inputs attrs
  |> fun op -> Op.execute0 op

let abs
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.abs inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let accumulatorApplyGradient
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P local_step; Op.Tensor_handle.P gradient] in
  let attrs = [
    "dtype", `type_ (Op.Tensor_handle.data_type gradient);
  ]
  in
  Op.create context Op_names.accumulatorApplyGradient inputs attrs
  |> fun op -> Op.execute0 op

let accumulatorNumAccumulated
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.accumulatorNumAccumulated inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let accumulatorSetGlobalStep
    (handle : [ `string ] t)
    (new_global_step : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P new_global_step] in
  let attrs = [
  ]
  in
  Op.create context Op_names.accumulatorSetGlobalStep inputs attrs
  |> fun op -> Op.execute0 op

let accumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P num_required] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
  ]
  in
  Op.create context Op_names.accumulatorTakeGradient inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let acos
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.acos inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let acosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.acosh inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let add
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.add inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let addManySparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P sparse_indices; Op.Tensor_handle.P sparse_values; Op.Tensor_handle.P sparse_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sparse_values);
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.addManySparseToTensorsMap inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let addN
    (inputs__ : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 | `variant ] as 't) t list)
  =
  let inputs = List.map inputs__ ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn inputs__));
    "N", `int (List.length inputs__);
  ]
  in
  Op.create context Op_names.addN inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn inputs__))

let addSparseToTensorsMap
    ?(container="")
    ?(shared_name="")
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P sparse_indices; Op.Tensor_handle.P sparse_values; Op.Tensor_handle.P sparse_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sparse_values);
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.addSparseToTensorsMap inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let adjustContrast
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (contrast_factor : [ `float ] t)
    (min_value : [ `float ] t)
    (max_value : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P contrast_factor; Op.Tensor_handle.P min_value; Op.Tensor_handle.P max_value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
  ]
  in
  Op.create context Op_names.adjustContrast inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let adjustContrastv2
    (images : [ `float ] t)
    (contrast_factor : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P contrast_factor] in
  let attrs = [
  ]
  in
  Op.create context Op_names.adjustContrastv2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let adjustHue
    (images : [ `float ] t)
    (delta : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P delta] in
  let attrs = [
  ]
  in
  Op.create context Op_names.adjustHue inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let adjustSaturation
    (images : [ `float ] t)
    (scale : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P scale] in
  let attrs = [
  ]
  in
  Op.create context Op_names.adjustSaturation inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let all
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "Tidx", `type_ (Op.Tensor_handle.data_type reduction_indices);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.all inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let allCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P true_classes] in
  let attrs = [
    "num_true", `int num_true;
    "num_sampled", `int num_sampled;
    "unique", `bool unique;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.allCandidateSampler inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    Type.Float
    Type.Float

let angle
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "Tout", `type_ Operation.Type.(to_data_type (P type_tout));
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.angle inputs attrs
  |> fun op -> Op.execute1 op
    type_tout

let any
    ?(keep_dims=false)
    (input : [ `bool ] t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "Tidx", `type_ (Op.Tensor_handle.data_type reduction_indices);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.any inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P accum_update; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyAdadelta inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let applyAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyAdagrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P gradient_accumulator; Op.Tensor_handle.P gradient_squared_accumulator; Op.Tensor_handle.P grad; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P global_step] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyAdagradDA inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P m; Op.Tensor_handle.P v; Op.Tensor_handle.P beta1_power; Op.Tensor_handle.P beta2_power; Op.Tensor_handle.P lr; Op.Tensor_handle.P beta1; Op.Tensor_handle.P beta2; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
    "use_nesterov", `bool use_nesterov;
  ]
  in
  Op.create context Op_names.applyAdam inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P mg; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyCenteredRMSProp inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyFtrl inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P l2_shrinkage; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyFtrlV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let applyGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P alpha; Op.Tensor_handle.P delta] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyGradientDescent inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let applyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad; Op.Tensor_handle.P momentum] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
    "use_nesterov", `bool use_nesterov;
  ]
  in
  Op.create context Op_names.applyMomentum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let applyProximalAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyProximalAdagrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let applyProximalGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P alpha; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P delta] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyProximalGradientDescent inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.applyRMSProp inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let approximateEqual
    ?(tolerance=9.9999997473787516e-06)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "tolerance", `float tolerance;
  ]
  in
  Op.create context Op_names.approximateEqual inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let argMax
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P dimension] in
  let attrs = [
    "output_type", `type_ Operation.Type.(to_data_type (P type_output_type));
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type dimension);
  ]
  in
  Op.create context Op_names.argMax inputs attrs
  |> fun op -> Op.execute1 op
    type_output_type

let argMin
    ~type_output_type
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (dimension : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P dimension] in
  let attrs = [
    "output_type", `type_ Operation.Type.(to_data_type (P type_output_type));
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type dimension);
  ]
  in
  Op.create context Op_names.argMin inputs attrs
  |> fun op -> Op.execute1 op
    type_output_type

let asString
    ?(precision=(-1))
    ?(scientific=false)
    ?(shortest=false)
    ?(width=(-1))
    ?(fill="")
    (input : ([< `int32 | `int64 | `complex64 | `float | `double | `bool ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "precision", `int precision;
    "scientific", `bool scientific;
    "shortest", `bool shortest;
    "width", `int width;
    "fill", `string fill;
  ]
  in
  Op.create context Op_names.asString inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let asin
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.asin inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let asinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.asinh inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let atan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.atan inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let atan2
    (y : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P y; Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.atan2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ y)

let atanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.atanh inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let audioSpectrogram
    ~window_size
    ~stride
    ?(magnitude_squared=false)
    (input : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "window_size", `int window_size;
    "stride", `int stride;
    "magnitude_squared", `bool magnitude_squared;
  ]
  in
  Op.create context Op_names.audioSpectrogram inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let audioSummary
    ~sample_rate
    ?(max_outputs=3)
    (tag : [ `string ] t)
    (tensor : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P tag; Op.Tensor_handle.P tensor] in
  let attrs = [
    "sample_rate", `float sample_rate;
    "max_outputs", `int max_outputs;
  ]
  in
  Op.create context Op_names.audioSummary inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let audioSummaryV2
    ?(max_outputs=3)
    (tag : [ `string ] t)
    (tensor : [ `float ] t)
    (sample_rate : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P tag; Op.Tensor_handle.P tensor; Op.Tensor_handle.P sample_rate] in
  let attrs = [
    "max_outputs", `int max_outputs;
  ]
  in
  Op.create context Op_names.audioSummaryV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let avgPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (value : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.avgPool inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ value)

let avgPool3D
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.avgPool3D inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let avgPool3DGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input_shape : [ `int32 ] t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P orig_input_shape; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.avgPool3DGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ grad)

let avgPoolGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input_shape : [ `int32 ] t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P orig_input_shape; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.avgPoolGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ grad)

let barrier
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.barrier inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let barrierClose
    ?(cancel_pending_enqueues=false)
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
    "cancel_pending_enqueues", `bool cancel_pending_enqueues;
  ]
  in
  Op.create context Op_names.barrierClose inputs attrs
  |> fun op -> Op.execute0 op

let barrierIncompleteSize
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.barrierIncompleteSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let barrierInsertMany
    ~component_index
    (handle : [ `string ] t)
    (keys : [ `string ] t)
    (values : 't t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P values] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type values);
    "component_index", `int component_index;
  ]
  in
  Op.create context Op_names.barrierInsertMany inputs attrs
  |> fun op -> Op.execute0 op

let barrierReadySize
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.barrierReadySize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let batchCholesky
    (input : ([< `double | `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.batchCholesky inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchCholeskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P l; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type l);
  ]
  in
  Op.create context Op_names.batchCholeskyGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ l)

let batchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (batch_size : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P batch_size] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.batchDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let batchFFT
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.batchFFT inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let batchFFT2D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.batchFFT2D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let batchFFT3D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.batchFFT3D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let batchIFFT
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.batchIFFT inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let batchIFFT2D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.batchIFFT2D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let batchIFFT3D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.batchIFFT3D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let batchMatMul
    ?(adj_x=false)
    ?(adj_y=false)
    (x : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "adj_x", `bool adj_x;
    "adj_y", `bool adj_y;
  ]
  in
  Op.create context Op_names.batchMatMul inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let batchMatrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P num_lower; Op.Tensor_handle.P num_upper] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.batchMatrixBandPart inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.batchMatrixDeterminant inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchMatrixDiag
    (diagonal : 't t)
  =
  let inputs = [Op.Tensor_handle.P diagonal] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type diagonal);
  ]
  in
  Op.create context Op_names.batchMatrixDiag inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ diagonal)

let batchMatrixDiagPart
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.batchMatrixDiagPart inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchMatrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "adjoint", `bool adjoint;
  ]
  in
  Op.create context Op_names.batchMatrixInverse inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchMatrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P diagonal] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.batchMatrixSetDiag inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchMatrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P matrix; Op.Tensor_handle.P rhs] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type matrix);
    "adjoint", `bool adjoint;
  ]
  in
  Op.create context Op_names.batchMatrixSolve inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ matrix)

let batchMatrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  let inputs = [Op.Tensor_handle.P matrix; Op.Tensor_handle.P rhs; Op.Tensor_handle.P l2_regularizer] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type matrix);
    "fast", `bool fast;
  ]
  in
  Op.create context Op_names.batchMatrixSolveLs inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ matrix)

let batchMatrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float ] as 't) t)
    (rhs : ([< `double | `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P matrix; Op.Tensor_handle.P rhs] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type matrix);
    "lower", `bool lower;
    "adjoint", `bool adjoint;
  ]
  in
  Op.create context Op_names.batchMatrixTriangularSolve inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ matrix)

let batchNormWithGlobalNormalization
    ~variance_epsilon
    ~scale_after_normalization
    (t : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (m : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (v : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (beta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gamma : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P t; Op.Tensor_handle.P m; Op.Tensor_handle.P v; Op.Tensor_handle.P beta; Op.Tensor_handle.P gamma] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type t);
    "variance_epsilon", `float variance_epsilon;
    "scale_after_normalization", `bool scale_after_normalization;
  ]
  in
  Op.create context Op_names.batchNormWithGlobalNormalization inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ t)

let batchNormWithGlobalNormalizationGrad
    ~variance_epsilon
    ~scale_after_normalization
    (t : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (m : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (v : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (gamma : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P t; Op.Tensor_handle.P m; Op.Tensor_handle.P v; Op.Tensor_handle.P gamma; Op.Tensor_handle.P backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type t);
    "variance_epsilon", `float variance_epsilon;
    "scale_after_normalization", `bool scale_after_normalization;
  ]
  in
  Op.create context Op_names.batchNormWithGlobalNormalizationGrad inputs attrs
  |> fun op -> Op.execute5 op
    (Op.Tensor_handle.type_ t)
    (Op.Tensor_handle.type_ t)
    (Op.Tensor_handle.type_ t)
    (Op.Tensor_handle.type_ t)
    (Op.Tensor_handle.type_ t)

let batchSelfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.batchSelfAdjointEig inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchSelfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "compute_v", `bool compute_v;
  ]
  in
  Op.create context Op_names.batchSelfAdjointEigV2 inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)

let batchSvd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "compute_uv", `bool compute_uv;
    "full_matrices", `bool full_matrices;
  ]
  in
  Op.create context Op_names.batchSvd inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)

let batchToSpace
    ~block_size
    (input : 't t)
    (crops : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P crops] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type crops);
    "block_size", `int block_size;
  ]
  in
  Op.create context Op_names.batchToSpace inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let batchToSpaceND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (crops : ([< `int32 | `int64 ] as 'tcrops) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P block_shape; Op.Tensor_handle.P crops] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tblock_shape", `type_ (Op.Tensor_handle.data_type block_shape);
    "Tcrops", `type_ (Op.Tensor_handle.data_type crops);
  ]
  in
  Op.create context Op_names.batchToSpaceND inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let betainc
    (a : ([< `float | `double ] as 't) t)
    (b : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P b; Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a);
  ]
  in
  Op.create context Op_names.betainc inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a)

let biasAdd
    ?(data_format="NHWC")
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P value; Op.Tensor_handle.P bias] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.biasAdd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ value)

let biasAddGrad
    ?(data_format="NHWC")
    (out_backprop : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type out_backprop);
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.biasAddGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ out_backprop)

let biasAddV1
    (value : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (bias : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P value; Op.Tensor_handle.P bias] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.biasAddV1 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ value)

let bincount
    (arr : [ `int32 ] t)
    (size : [ `int32 ] t)
    (weights : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P arr; Op.Tensor_handle.P size; Op.Tensor_handle.P weights] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type weights);
  ]
  in
  Op.create context Op_names.bincount inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ weights)

let bitcast
    ~type_type__
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "type", `type_ Operation.Type.(to_data_type (P type_type__));
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.bitcast inputs attrs
  |> fun op -> Op.execute1 op
    type_type__

let bitwiseAnd
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.bitwiseAnd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let bitwiseOr
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.bitwiseOr inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let bitwiseXor
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.bitwiseXor inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let broadcastArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P s0; Op.Tensor_handle.P s1] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type s0);
  ]
  in
  Op.create context Op_names.broadcastArgs inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ s0)

let broadcastGradientArgs
    (s0 : ([< `int32 | `int64 ] as 't) t)
    (s1 : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P s0; Op.Tensor_handle.P s1] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type s0);
  ]
  in
  Op.create context Op_names.broadcastGradientArgs inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ s0)
    (Op.Tensor_handle.type_ s0)

let bucketize
    ~boundaries
    (input : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "boundaries", `list_float boundaries;
  ]
  in
  Op.create context Op_names.bucketize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let cTCGreedyDecoder
    ?(merge_repeated=false)
    (inputs__ : [ `float ] t)
    (sequence_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P inputs__; Op.Tensor_handle.P sequence_length] in
  let attrs = [
    "merge_repeated", `bool merge_repeated;
  ]
  in
  Op.create context Op_names.cTCGreedyDecoder inputs attrs
  |> fun op -> Op.execute4 op
    Type.Int64
    Type.Int64
    Type.Int64
    Type.Float

let cTCLoss
    ?(preprocess_collapse_repeated=false)
    ?(ctc_merge_repeated=true)
    ?(ignore_longer_outputs_than_inputs=false)
    (inputs__ : [ `float ] t)
    (labels_indices : [ `int64 ] t)
    (labels_values : [ `int32 ] t)
    (sequence_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P inputs__; Op.Tensor_handle.P labels_indices; Op.Tensor_handle.P labels_values; Op.Tensor_handle.P sequence_length] in
  let attrs = [
    "preprocess_collapse_repeated", `bool preprocess_collapse_repeated;
    "ctc_merge_repeated", `bool ctc_merge_repeated;
    "ignore_longer_outputs_than_inputs", `bool ignore_longer_outputs_than_inputs;
  ]
  in
  Op.create context Op_names.cTCLoss inputs attrs
  |> fun op -> Op.execute2 op
    Type.Float
    Type.Float

let cacheDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (filename : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P filename] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.cacheDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let cast
    ~type_dstT
    (x : 'srcT t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "DstT", `type_ Operation.Type.(to_data_type (P type_dstT));
    "SrcT", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.cast inputs attrs
  |> fun op -> Op.execute1 op
    type_dstT

let ceil
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.ceil inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let checkNumerics
    ~message
    (tensor : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P tensor] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
    "message", `string message;
  ]
  in
  Op.create context Op_names.checkNumerics inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ tensor)

let cholesky
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.cholesky inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let choleskyGrad
    (l : ([< `float | `double ] as 't) t)
    (grad : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P l; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type l);
  ]
  in
  Op.create context Op_names.choleskyGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ l)

let compareAndBitpack
    (input : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
    (threshold : ([< `bool | `float | `double | `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P threshold] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.compareAndBitpack inputs attrs
  |> fun op -> Op.execute1 op
    Type.UInt8

let complex
    ~type_tout
    (real : ([< `float | `double ] as 't) t)
    (imag : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P real; Op.Tensor_handle.P imag] in
  let attrs = [
    "Tout", `type_ Operation.Type.(to_data_type (P type_tout));
    "T", `type_ (Op.Tensor_handle.data_type real);
  ]
  in
  Op.create context Op_names.complex inputs attrs
  |> fun op -> Op.execute1 op
    type_tout

let complexAbs
    ~type_tout
    (x : ([< `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "Tout", `type_ Operation.Type.(to_data_type (P type_tout));
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.complexAbs inputs attrs
  |> fun op -> Op.execute1 op
    type_tout

let computeAccidentalHits
    ~num_true
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
    (sampled_candidates : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P true_classes; Op.Tensor_handle.P sampled_candidates] in
  let attrs = [
    "num_true", `int num_true;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.computeAccidentalHits inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int32
    Type.Int64
    Type.Float

let concat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
  =
  let inputs = [Op.Tensor_handle.P concat_dim]@List.map values ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn values));
    "N", `int (List.length values);
  ]
  in
  Op.create context Op_names.concat inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn values))

let concatOffset
    (concat_dim : [ `int32 ] t)
    (shape : [ `int32 ] t list)
  =
  let inputs = [Op.Tensor_handle.P concat_dim]@List.map shape ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "N", `int (List.length shape);
  ]
  in
  Op.create context Op_names.concatOffset inputs attrs
  |> fun op -> Op.execute op Type.Int32 ~output_len:(List.length shape)

let concatV2
    (values : 't t list)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = List.map values ~f:(fun x -> Op.Tensor_handle.P x)@[Op.Tensor_handle.P axis] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn values));
    "Tidx", `type_ (Op.Tensor_handle.data_type axis);
    "N", `int (List.length values);
  ]
  in
  Op.create context Op_names.concatV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn values))

let concatenateDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (another_dataset : [ `variant ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P another_dataset] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.concatenateDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let conditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "shape", `shape shape;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.conditionalAccumulator inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let conj
    (input : ([< `complex64 | `variant ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.conj inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let controlTrigger
    ()
  =
  let inputs = [] in
  let attrs = [
  ]
  in
  Op.create context Op_names.controlTrigger inputs attrs
  |> fun op -> Op.execute0 op

let conv2D
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "use_cudnn_on_gpu", `bool use_cudnn_on_gpu;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.conv2D inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let conv2DBackpropFilter
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter_sizes; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "use_cudnn_on_gpu", `bool use_cudnn_on_gpu;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.conv2DBackpropFilter inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let conv2DBackpropInput
    ~strides
    ?(use_cudnn_on_gpu=true)
    ~padding
    ?(data_format="NHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float ] as 't) t)
    (out_backprop : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input_sizes; Op.Tensor_handle.P filter; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type filter);
    "strides", `list_int strides;
    "use_cudnn_on_gpu", `bool use_cudnn_on_gpu;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.conv2DBackpropInput inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ filter)

let conv3D
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.conv3D inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let conv3DBackpropFilter
    ~strides
    ~padding
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.conv3DBackpropFilter inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let conv3DBackpropFilterV2
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter_sizes; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.conv3DBackpropFilterV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let conv3DBackpropInput
    ~strides
    ~padding
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.conv3DBackpropInput inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let conv3DBackpropInputV2
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input_sizes; Op.Tensor_handle.P filter; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type filter);
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.conv3DBackpropInputV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ filter)

let copy
    ?(tensor_name="")
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "tensor_name", `string tensor_name;
  ]
  in
  Op.create context Op_names.copy inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let copyHost
    ?(tensor_name="")
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "tensor_name", `string tensor_name;
  ]
  in
  Op.create context Op_names.copyHost inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let cos
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.cos inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let cosh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.cosh inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let countUpTo
    ~limit
    (ref : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P ref] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "limit", `int limit;
  ]
  in
  Op.create context Op_names.countUpTo inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let cropAndResize
    ?(method_="bilinear")
    ?(extrapolation_value=0.)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
    (crop_size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P image; Op.Tensor_handle.P boxes; Op.Tensor_handle.P box_ind; Op.Tensor_handle.P crop_size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type image);
    "method", `string method_;
    "extrapolation_value", `float extrapolation_value;
  ]
  in
  Op.create context Op_names.cropAndResize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let cropAndResizeGradBoxes
    ?(method_="bilinear")
    (grads : [ `float ] t)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P grads; Op.Tensor_handle.P image; Op.Tensor_handle.P boxes; Op.Tensor_handle.P box_ind] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type image);
    "method", `string method_;
  ]
  in
  Op.create context Op_names.cropAndResizeGradBoxes inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let cropAndResizeGradImage
    ~type_t
    ?(method_="bilinear")
    (grads : [ `float ] t)
    (boxes : [ `float ] t)
    (box_ind : [ `int32 ] t)
    (image_size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P grads; Op.Tensor_handle.P boxes; Op.Tensor_handle.P box_ind; Op.Tensor_handle.P image_size] in
  let attrs = [
    "T", `type_ Operation.Type.(to_data_type (P type_t));
    "method", `string method_;
  ]
  in
  Op.create context Op_names.cropAndResizeGradImage inputs attrs
  |> fun op -> Op.execute1 op
    type_t

let cross
    (a : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P b] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a);
  ]
  in
  Op.create context Op_names.cross inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a)

let cumprod
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P axis] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "Tidx", `type_ (Op.Tensor_handle.data_type axis);
    "exclusive", `bool exclusive;
    "reverse", `bool reverse;
  ]
  in
  Op.create context Op_names.cumprod inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let cumsum
    ?(exclusive=false)
    ?(reverse=false)
    (x : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P axis] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "Tidx", `type_ (Op.Tensor_handle.data_type axis);
    "exclusive", `bool exclusive;
    "reverse", `bool reverse;
  ]
  in
  Op.create context Op_names.cumsum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let debugGradientIdentity
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.debugGradientIdentity inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let debugIdentity
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "device_name", `string device_name;
    "tensor_name", `string tensor_name;
    "gated_grpc", `bool gated_grpc;
  ]
  in
  Op.create context Op_names.debugIdentity inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let debugNanCount
    ?(device_name="")
    ?(tensor_name="")
    ?(gated_grpc=false)
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "device_name", `string device_name;
    "tensor_name", `string tensor_name;
    "gated_grpc", `bool gated_grpc;
  ]
  in
  Op.create context Op_names.debugNanCount inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let debugNumericSummary
    ?(device_name="")
    ?(tensor_name="")
    ?(lower_bound=(Float.neg_infinity))
    ?(upper_bound=Float.infinity)
    ?(mute_if_healthy=false)
    ?(gated_grpc=false)
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "device_name", `string device_name;
    "tensor_name", `string tensor_name;
    "lower_bound", `float lower_bound;
    "upper_bound", `float upper_bound;
    "mute_if_healthy", `bool mute_if_healthy;
    "gated_grpc", `bool gated_grpc;
  ]
  in
  Op.create context Op_names.debugNumericSummary inputs attrs
  |> fun op -> Op.execute1 op
    Type.Double

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
  let inputs = [Op.Tensor_handle.P contents; Op.Tensor_handle.P crop_window] in
  let attrs = [
    "channels", `int channels;
    "ratio", `int ratio;
    "fancy_upscaling", `bool fancy_upscaling;
    "try_recover_truncated", `bool try_recover_truncated;
    "acceptable_fraction", `float acceptable_fraction;
    "dct_method", `string dct_method;
  ]
  in
  Op.create context Op_names.decodeAndCropJpeg inputs attrs
  |> fun op -> Op.execute1 op
    Type.UInt8

let decodeBase64
    (input : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.decodeBase64 inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let decodeBmp
    ?(channels=0)
    (contents : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P contents] in
  let attrs = [
    "channels", `int channels;
  ]
  in
  Op.create context Op_names.decodeBmp inputs attrs
  |> fun op -> Op.execute1 op
    Type.UInt8

let decodeGif
    (contents : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P contents] in
  let attrs = [
  ]
  in
  Op.create context Op_names.decodeGif inputs attrs
  |> fun op -> Op.execute1 op
    Type.UInt8

let decodeJSONExample
    (json_examples : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P json_examples] in
  let attrs = [
  ]
  in
  Op.create context Op_names.decodeJSONExample inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let decodeJpeg
    ?(channels=0)
    ?(ratio=1)
    ?(fancy_upscaling=true)
    ?(try_recover_truncated=false)
    ?(acceptable_fraction=1.)
    ?(dct_method="")
    (contents : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P contents] in
  let attrs = [
    "channels", `int channels;
    "ratio", `int ratio;
    "fancy_upscaling", `bool fancy_upscaling;
    "try_recover_truncated", `bool try_recover_truncated;
    "acceptable_fraction", `float acceptable_fraction;
    "dct_method", `string dct_method;
  ]
  in
  Op.create context Op_names.decodeJpeg inputs attrs
  |> fun op -> Op.execute1 op
    Type.UInt8

let decodePng
    ~type_dtype
    ?(channels=0)
    (contents : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P contents] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "channels", `int channels;
  ]
  in
  Op.create context Op_names.decodePng inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let decodeRaw
    ~type_out_type
    ?(little_endian=true)
    (bytes : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P bytes] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "little_endian", `bool little_endian;
  ]
  in
  Op.create context Op_names.decodeRaw inputs attrs
  |> fun op -> Op.execute1 op
    type_out_type

let decodeWav
    ?(desired_channels=(-1))
    ?(desired_samples=(-1))
    (contents : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P contents] in
  let attrs = [
    "desired_channels", `int desired_channels;
    "desired_samples", `int desired_samples;
  ]
  in
  Op.create context Op_names.decodeWav inputs attrs
  |> fun op -> Op.execute2 op
    Type.Float
    Type.Int32

let deleteSessionTensor
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.deleteSessionTensor inputs attrs
  |> fun op -> Op.execute0 op

let denseToDenseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P set1; Op.Tensor_handle.P set2] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type set1);
    "set_operation", `string set_operation;
    "validate_indices", `bool validate_indices;
  ]
  in
  Op.create context Op_names.denseToDenseSetOperation inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ set1)
    Type.Int64

let denseToSparseBatchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (batch_size : [ `int64 ] t)
    (row_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P batch_size; Op.Tensor_handle.P row_shape] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.denseToSparseBatchDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let denseToSparseSetOperation
    ~set_operation
    ?(validate_indices=true)
    (set1 : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2_indices : [ `int64 ] t)
    (set2_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set2_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P set1; Op.Tensor_handle.P set2_indices; Op.Tensor_handle.P set2_values; Op.Tensor_handle.P set2_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type set1);
    "set_operation", `string set_operation;
    "validate_indices", `bool validate_indices;
  ]
  in
  Op.create context Op_names.denseToSparseSetOperation inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ set1)
    Type.Int64

let depthToSpace
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "block_size", `int block_size;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.depthToSpace inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let depthwiseConv2dNative
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.depthwiseConv2dNative inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let depthwiseConv2dNativeBackpropFilter
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double ] as 't) t)
    (filter_sizes : [ `int32 ] t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter_sizes; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.depthwiseConv2dNativeBackpropFilter inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let depthwiseConv2dNativeBackpropInput
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input_sizes : [ `int32 ] t)
    (filter : ([< `float | `double ] as 't) t)
    (out_backprop : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input_sizes; Op.Tensor_handle.P filter; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type filter);
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.depthwiseConv2dNativeBackpropInput inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ filter)

let dequantize
    ?(mode="MIN_COMBINED")
    (input : 't t)
    (min_range : [ `float ] t)
    (max_range : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P min_range; Op.Tensor_handle.P max_range] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "mode", `string mode;
  ]
  in
  Op.create context Op_names.dequantize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let deserializeManySparse
    ~type_dtype
    (serialized_sparse : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P serialized_sparse] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
  ]
  in
  Op.create context Op_names.deserializeManySparse inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    type_dtype
    Type.Int64

let destroyTemporaryVariable
    ~var_name
    (ref : 't t)
  =
  let inputs = [Op.Tensor_handle.P ref] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "var_name", `string var_name;
  ]
  in
  Op.create context Op_names.destroyTemporaryVariable inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let diag
    (diagonal : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P diagonal] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type diagonal);
  ]
  in
  Op.create context Op_names.diag inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ diagonal)

let diagPart
    (input : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.diagPart inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let digamma
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.digamma inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let dilation2D
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "rates", `list_int rates;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.dilation2D inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let dilation2DBackpropFilter
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "rates", `list_int rates;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.dilation2DBackpropFilter inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let dilation2DBackpropInput
    ~strides
    ~rates
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (filter : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter; Op.Tensor_handle.P out_backprop] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "strides", `list_int strides;
    "rates", `list_int rates;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.dilation2DBackpropInput inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let div
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.div inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let drawBoundingBoxes
    (images : ([< `float ] as 't) t)
    (boxes : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P boxes] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
  ]
  in
  Op.create context Op_names.drawBoundingBoxes inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ images)

let dynamicPartition
    ~num_partitions
    (data : 't t)
    (partitions : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P partitions] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "num_partitions", `int num_partitions;
  ]
  in
  Op.create context Op_names.dynamicPartition inputs attrs
  |> fun op -> Op.execute op (Op.Tensor_handle.type_ data) ~output_len:num_partitions

let dynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  let inputs = List.map indices ~f:(fun x -> Op.Tensor_handle.P x)@List.map data ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn data));
    "N", `int (List.length indices);
  ]
  in
  Op.create context Op_names.dynamicStitch inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn data))

let editDistance
    ?(normalize=true)
    (hypothesis_indices : [ `int64 ] t)
    (hypothesis_values : 't t)
    (hypothesis_shape : [ `int64 ] t)
    (truth_indices : [ `int64 ] t)
    (truth_values : 't t)
    (truth_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P hypothesis_indices; Op.Tensor_handle.P hypothesis_values; Op.Tensor_handle.P hypothesis_shape; Op.Tensor_handle.P truth_indices; Op.Tensor_handle.P truth_values; Op.Tensor_handle.P truth_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type hypothesis_values);
    "normalize", `bool normalize;
  ]
  in
  Op.create context Op_names.editDistance inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let elu
    (features : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.elu inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ features)

let eluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P outputs] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type gradients);
  ]
  in
  Op.create context Op_names.eluGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ gradients)

let encodeBase64
    ?(pad=false)
    (input : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "pad", `bool pad;
  ]
  in
  Op.create context Op_names.encodeBase64 inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

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
  let inputs = [Op.Tensor_handle.P image] in
  let attrs = [
    "format", `string format;
    "quality", `int quality;
    "progressive", `bool progressive;
    "optimize_size", `bool optimize_size;
    "chroma_downsampling", `bool chroma_downsampling;
    "density_unit", `string density_unit;
    "x_density", `int x_density;
    "y_density", `int y_density;
    "xmp_metadata", `string xmp_metadata;
  ]
  in
  Op.create context Op_names.encodeJpeg inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let encodePng
    ?(compression=(-1))
    (image : ([< `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P image] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type image);
    "compression", `int compression;
  ]
  in
  Op.create context Op_names.encodePng inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let encodeWav
    (audio : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P audio; Op.Tensor_handle.P sample_rate] in
  let attrs = [
  ]
  in
  Op.create context Op_names.encodeWav inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let enter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  let inputs = [Op.Tensor_handle.P data] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "frame_name", `string frame_name;
    "is_constant", `bool is_constant;
    "parallel_iterations", `int parallel_iterations;
  ]
  in
  Op.create context Op_names.enter inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let equal
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.equal inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let erf
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.erf inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let erfc
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.erfc inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let exit
    (data : 't t)
  =
  let inputs = [Op.Tensor_handle.P data] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
  ]
  in
  Op.create context Op_names.exit inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let exp
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.exp inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let expandDims
    (input : 't t)
    (dim : ([< `int32 | `int64 ] as 'tdim) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P dim] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tdim", `type_ (Op.Tensor_handle.data_type dim);
  ]
  in
  Op.create context Op_names.expandDims inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let expm1
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.expm1 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let extractGlimpse
    ?(centered=true)
    ?(normalized=true)
    ?(uniform_noise=true)
    (input : [ `float ] t)
    (size : [ `int32 ] t)
    (offsets : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P size; Op.Tensor_handle.P offsets] in
  let attrs = [
    "centered", `bool centered;
    "normalized", `bool normalized;
    "uniform_noise", `bool uniform_noise;
  ]
  in
  Op.create context Op_names.extractGlimpse inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let extractImagePatches
    ~ksizes
    ~strides
    ~rates
    ~padding
    (images : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P images] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
    "ksizes", `list_int ksizes;
    "strides", `list_int strides;
    "rates", `list_int rates;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.extractImagePatches inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ images)

let extractJpegShape
    ~type_output_type
    (contents : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P contents] in
  let attrs = [
    "output_type", `type_ Operation.Type.(to_data_type (P type_output_type));
  ]
  in
  Op.create context Op_names.extractJpegShape inputs attrs
  |> fun op -> Op.execute1 op
    type_output_type

let fFT
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.fFT inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let fFT2D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.fFT2D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let fFT3D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.fFT3D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let fIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.fIFOQueue inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let fIFOQueueV2
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.fIFOQueueV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let fact
    ()
  =
  let inputs = [] in
  let attrs = [
  ]
  in
  Op.create context Op_names.fact inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let fakeQuantWithMinMaxArgs
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P inputs__] in
  let attrs = [
    "min", `float min;
    "max", `float max;
    "num_bits", `int num_bits;
    "narrow_range", `bool narrow_range;
  ]
  in
  Op.create context Op_names.fakeQuantWithMinMaxArgs inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let fakeQuantWithMinMaxArgsGradient
    ?(min=(-6.))
    ?(max=6.)
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P inputs__] in
  let attrs = [
    "min", `float min;
    "max", `float max;
    "num_bits", `int num_bits;
    "narrow_range", `bool narrow_range;
  ]
  in
  Op.create context Op_names.fakeQuantWithMinMaxArgsGradient inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let fakeQuantWithMinMaxVars
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P inputs__; Op.Tensor_handle.P min; Op.Tensor_handle.P max] in
  let attrs = [
    "num_bits", `int num_bits;
    "narrow_range", `bool narrow_range;
  ]
  in
  Op.create context Op_names.fakeQuantWithMinMaxVars inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let fakeQuantWithMinMaxVarsGradient
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P inputs__; Op.Tensor_handle.P min; Op.Tensor_handle.P max] in
  let attrs = [
    "num_bits", `int num_bits;
    "narrow_range", `bool narrow_range;
  ]
  in
  Op.create context Op_names.fakeQuantWithMinMaxVarsGradient inputs attrs
  |> fun op -> Op.execute3 op
    Type.Float
    Type.Float
    Type.Float

let fakeQuantWithMinMaxVarsPerChannel
    ?(num_bits=8)
    ?(narrow_range=false)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P inputs__; Op.Tensor_handle.P min; Op.Tensor_handle.P max] in
  let attrs = [
    "num_bits", `int num_bits;
    "narrow_range", `bool narrow_range;
  ]
  in
  Op.create context Op_names.fakeQuantWithMinMaxVarsPerChannel inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let fakeQuantWithMinMaxVarsPerChannelGradient
    ?(num_bits=8)
    ?(narrow_range=false)
    (gradients : [ `float ] t)
    (inputs__ : [ `float ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P inputs__; Op.Tensor_handle.P min; Op.Tensor_handle.P max] in
  let attrs = [
    "num_bits", `int num_bits;
    "narrow_range", `bool narrow_range;
  ]
  in
  Op.create context Op_names.fakeQuantWithMinMaxVarsPerChannelGradient inputs attrs
  |> fun op -> Op.execute3 op
    Type.Float
    Type.Float
    Type.Float

let fakeQueue
    (resource : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P resource] in
  let attrs = [
  ]
  in
  Op.create context Op_names.fakeQueue inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let fill
    (dims : [ `int32 ] t)
    (value : 't t)
  =
  let inputs = [Op.Tensor_handle.P dims; Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.fill inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ value)

let fixedLengthRecordDataset
    (filenames : [ `string ] t)
    (header_bytes : [ `int64 ] t)
    (record_bytes : [ `int64 ] t)
    (footer_bytes : [ `int64 ] t)
    (buffer_size : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P filenames; Op.Tensor_handle.P header_bytes; Op.Tensor_handle.P record_bytes; Op.Tensor_handle.P footer_bytes; Op.Tensor_handle.P buffer_size] in
  let attrs = [
  ]
  in
  Op.create context Op_names.fixedLengthRecordDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let fixedLengthRecordReader
    ?(header_bytes=0)
    ~record_bytes
    ?(footer_bytes=0)
    ?(hop_bytes=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "header_bytes", `int header_bytes;
    "record_bytes", `int record_bytes;
    "footer_bytes", `int footer_bytes;
    "hop_bytes", `int hop_bytes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.fixedLengthRecordReader inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

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
  let inputs = [] in
  let attrs = [
    "header_bytes", `int header_bytes;
    "record_bytes", `int record_bytes;
    "footer_bytes", `int footer_bytes;
    "hop_bytes", `int hop_bytes;
    "container", `string container;
    "shared_name", `string shared_name;
    "encoding", `string encoding;
  ]
  in
  Op.create context Op_names.fixedLengthRecordReaderV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

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
  let inputs = [Op.Tensor_handle.P true_classes] in
  let attrs = [
    "num_true", `int num_true;
    "num_sampled", `int num_sampled;
    "unique", `bool unique;
    "range_max", `int range_max;
    "vocab_file", `string vocab_file;
    "distortion", `float distortion;
    "num_reserved_ids", `int num_reserved_ids;
    "num_shards", `int num_shards;
    "shard", `int shard;
    "unigrams", `list_float unigrams;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.fixedUnigramCandidateSampler inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    Type.Float
    Type.Float

let floor
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.floor inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let floorDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.floorDiv inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let floorMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.floorMod inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let fractionalAvgPool
    ~pooling_ratio
    ?(pseudo_random=false)
    ?(overlapping=false)
    ?(deterministic=false)
    ?(seed=0)
    ?(seed2=0)
    (value : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "pooling_ratio", `list_float pooling_ratio;
    "pseudo_random", `bool pseudo_random;
    "overlapping", `bool overlapping;
    "deterministic", `bool deterministic;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.fractionalAvgPool inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ value)
    Type.Int64
    Type.Int64

let fractionalAvgPoolGrad
    ?(overlapping=false)
    (orig_input_tensor_shape : [ `int64 ] t)
    (out_backprop : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (row_pooling_sequence : [ `int64 ] t)
    (col_pooling_sequence : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P orig_input_tensor_shape; Op.Tensor_handle.P out_backprop; Op.Tensor_handle.P row_pooling_sequence; Op.Tensor_handle.P col_pooling_sequence] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type out_backprop);
    "overlapping", `bool overlapping;
  ]
  in
  Op.create context Op_names.fractionalAvgPoolGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ out_backprop)

let fractionalMaxPool
    ~pooling_ratio
    ?(pseudo_random=false)
    ?(overlapping=false)
    ?(deterministic=false)
    ?(seed=0)
    ?(seed2=0)
    (value : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "pooling_ratio", `list_float pooling_ratio;
    "pseudo_random", `bool pseudo_random;
    "overlapping", `bool overlapping;
    "deterministic", `bool deterministic;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.fractionalMaxPool inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ value)
    Type.Int64
    Type.Int64

let fractionalMaxPoolGrad
    ?(overlapping=false)
    (orig_input : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (out_backprop : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (row_pooling_sequence : [ `int64 ] t)
    (col_pooling_sequence : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P orig_input; Op.Tensor_handle.P orig_output; Op.Tensor_handle.P out_backprop; Op.Tensor_handle.P row_pooling_sequence; Op.Tensor_handle.P col_pooling_sequence] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type orig_input);
    "overlapping", `bool overlapping;
  ]
  in
  Op.create context Op_names.fractionalMaxPoolGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ orig_input)

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
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P scale; Op.Tensor_handle.P offset; Op.Tensor_handle.P mean; Op.Tensor_handle.P variance] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "epsilon", `float epsilon;
    "data_format", `string data_format;
    "is_training", `bool is_training;
  ]
  in
  Op.create context Op_names.fusedBatchNorm inputs attrs
  |> fun op -> Op.execute5 op
    (Op.Tensor_handle.type_ x)
    (Op.Tensor_handle.type_ x)
    (Op.Tensor_handle.type_ x)
    (Op.Tensor_handle.type_ x)
    (Op.Tensor_handle.type_ x)

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
  let inputs = [Op.Tensor_handle.P y_backprop; Op.Tensor_handle.P x; Op.Tensor_handle.P scale; Op.Tensor_handle.P reserve_space_1; Op.Tensor_handle.P reserve_space_2] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y_backprop);
    "epsilon", `float epsilon;
    "data_format", `string data_format;
    "is_training", `bool is_training;
  ]
  in
  Op.create context Op_names.fusedBatchNormGrad inputs attrs
  |> fun op -> Op.execute5 op
    (Op.Tensor_handle.type_ y_backprop)
    (Op.Tensor_handle.type_ y_backprop)
    (Op.Tensor_handle.type_ y_backprop)
    (Op.Tensor_handle.type_ y_backprop)
    (Op.Tensor_handle.type_ y_backprop)

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
  let inputs = [Op.Tensor_handle.P y_backprop; Op.Tensor_handle.P x; Op.Tensor_handle.P scale; Op.Tensor_handle.P reserve_space_1; Op.Tensor_handle.P reserve_space_2] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y_backprop);
    "U", `type_ (Op.Tensor_handle.data_type reserve_space_1);
    "epsilon", `float epsilon;
    "data_format", `string data_format;
    "is_training", `bool is_training;
  ]
  in
  Op.create context Op_names.fusedBatchNormGradV2 inputs attrs
  |> fun op -> Op.execute5 op
    (Op.Tensor_handle.type_ y_backprop)
    (Op.Tensor_handle.type_ reserve_space_1)
    (Op.Tensor_handle.type_ reserve_space_1)
    (Op.Tensor_handle.type_ reserve_space_1)
    (Op.Tensor_handle.type_ reserve_space_1)

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
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P scale; Op.Tensor_handle.P offset; Op.Tensor_handle.P mean; Op.Tensor_handle.P variance] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "U", `type_ (Op.Tensor_handle.data_type scale);
    "epsilon", `float epsilon;
    "data_format", `string data_format;
    "is_training", `bool is_training;
  ]
  in
  Op.create context Op_names.fusedBatchNormV2 inputs attrs
  |> fun op -> Op.execute5 op
    (Op.Tensor_handle.type_ x)
    (Op.Tensor_handle.type_ scale)
    (Op.Tensor_handle.type_ scale)
    (Op.Tensor_handle.type_ scale)
    (Op.Tensor_handle.type_ scale)

let fusedPadConv2D
    ~mode
    ~strides
    ~padding
    (input : ([< `float ] as 't) t)
    (paddings : [ `int32 ] t)
    (filter : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P paddings; Op.Tensor_handle.P filter] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "mode", `string mode;
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.fusedPadConv2D inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

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
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P size; Op.Tensor_handle.P paddings; Op.Tensor_handle.P filter] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "resize_align_corners", `bool resize_align_corners;
    "mode", `string mode;
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.fusedResizeAndPadConv2D inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let gather
    ?(validate_indices=true)
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P params; Op.Tensor_handle.P indices] in
  let attrs = [
    "Tparams", `type_ (Op.Tensor_handle.data_type params);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "validate_indices", `bool validate_indices;
  ]
  in
  Op.create context Op_names.gather inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ params)

let gatherNd
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P params; Op.Tensor_handle.P indices] in
  let attrs = [
    "Tparams", `type_ (Op.Tensor_handle.data_type params);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.gatherNd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ params)

let gatherV2
    (params : 'tparams t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (axis : ([< `int32 | `int64 ] as 'taxis) t)
  =
  let inputs = [Op.Tensor_handle.P params; Op.Tensor_handle.P indices; Op.Tensor_handle.P axis] in
  let attrs = [
    "Tparams", `type_ (Op.Tensor_handle.data_type params);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "Taxis", `type_ (Op.Tensor_handle.data_type axis);
  ]
  in
  Op.create context Op_names.gatherV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ params)

let generateVocabRemapping
    ~new_vocab_offset
    ~num_new_vocab
    (new_vocab_file : [ `string ] t)
    (old_vocab_file : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P new_vocab_file; Op.Tensor_handle.P old_vocab_file] in
  let attrs = [
    "new_vocab_offset", `int new_vocab_offset;
    "num_new_vocab", `int num_new_vocab;
  ]
  in
  Op.create context Op_names.generateVocabRemapping inputs attrs
  |> fun op -> Op.execute2 op
    Type.Int64
    Type.Int32

let getSessionHandle
    (value : 't t)
  =
  let inputs = [Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.getSessionHandle inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let getSessionHandleV2
    (value : 't t)
  =
  let inputs = [Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.getSessionHandleV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let getSessionTensor
    ~type_dtype
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
  ]
  in
  Op.create context Op_names.getSessionTensor inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let greater
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.greater inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let greaterEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.greaterEqual inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let hSVToRGB
    (images : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P images] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
  ]
  in
  Op.create context Op_names.hSVToRGB inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ images)

let hashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
  ]
  in
  Op.create context Op_names.hashTable inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let hashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
  ]
  in
  Op.create context Op_names.hashTableV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let histogramSummary
    (tag : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P tag; Op.Tensor_handle.P values] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.histogramSummary inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let iFFT
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.iFFT inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let iFFT2D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.iFFT2D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let iFFT3D
    (input : [ `complex64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.iFFT3D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let iRFFT
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P fft_length] in
  let attrs = [
  ]
  in
  Op.create context Op_names.iRFFT inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let iRFFT2D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P fft_length] in
  let attrs = [
  ]
  in
  Op.create context Op_names.iRFFT2D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let iRFFT3D
    (input : [ `complex64 ] t)
    (fft_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P fft_length] in
  let attrs = [
  ]
  in
  Op.create context Op_names.iRFFT3D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let identity
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.identity inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let identityReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.identityReader inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let identityReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.identityReaderV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let igamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a);
  ]
  in
  Op.create context Op_names.igamma inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a)

let igammac
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a);
  ]
  in
  Op.create context Op_names.igammac inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a)

let ignoreErrorsDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.ignoreErrorsDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let imag
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "Tout", `type_ Operation.Type.(to_data_type (P type_tout));
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.imag inputs attrs
  |> fun op -> Op.execute1 op
    type_tout

let imageSummary
    ?(max_images=3)
    (tag : [ `string ] t)
    (tensor : ([< `uInt8 | `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P tag; Op.Tensor_handle.P tensor] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
    "max_images", `int max_images;
  ]
  in
  Op.create context Op_names.imageSummary inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let immutableConst
    ~type_dtype
    ~shape
    ~memory_region_name
    ()
  =
  let inputs = [] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "shape", `shape shape;
    "memory_region_name", `string memory_region_name;
  ]
  in
  Op.create context Op_names.immutableConst inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let inTopK
    ~k
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P predictions; Op.Tensor_handle.P targets] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type targets);
    "k", `int k;
  ]
  in
  Op.create context Op_names.inTopK inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let inTopKV2
    (predictions : [ `float ] t)
    (targets : ([< `int32 | `int64 ] as 't) t)
    (k : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P predictions; Op.Tensor_handle.P targets; Op.Tensor_handle.P k] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type targets);
  ]
  in
  Op.create context Op_names.inTopKV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let initializeTable
    (table_handle : [ `string ] t)
    (keys : 'tkey t)
    (values : 'tval t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P values] in
  let attrs = [
    "Tkey", `type_ (Op.Tensor_handle.data_type keys);
    "Tval", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.initializeTable inputs attrs
  |> fun op -> Op.execute0 op

let initializeTableFromTextFile
    ~key_index
    ~value_index
    ?(vocab_size=(-1))
    ?(delimiter="	")
    (table_handle : [ `string ] t)
    (filename : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P filename] in
  let attrs = [
    "key_index", `int key_index;
    "value_index", `int value_index;
    "vocab_size", `int vocab_size;
    "delimiter", `string delimiter;
  ]
  in
  Op.create context Op_names.initializeTableFromTextFile inputs attrs
  |> fun op -> Op.execute0 op

let initializeTableFromTextFileV2
    ~key_index
    ~value_index
    ?(vocab_size=(-1))
    ?(delimiter="	")
    (table_handle : [ `resource ] t)
    (filename : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P filename] in
  let attrs = [
    "key_index", `int key_index;
    "value_index", `int value_index;
    "vocab_size", `int vocab_size;
    "delimiter", `string delimiter;
  ]
  in
  Op.create context Op_names.initializeTableFromTextFileV2 inputs attrs
  |> fun op -> Op.execute0 op

let initializeTableV2
    (table_handle : [ `resource ] t)
    (keys : 'tkey t)
    (values : 'tval t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P values] in
  let attrs = [
    "Tkey", `type_ (Op.Tensor_handle.data_type keys);
    "Tval", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.initializeTableV2 inputs attrs
  |> fun op -> Op.execute0 op

let inv
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.inv inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let invGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P y; Op.Tensor_handle.P dy] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.invGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ y)

let invert
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.invert inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let invertPermutation
    (x : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.invertPermutation inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let isFinite
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.isFinite inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let isInf
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.isInf inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let isNan
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.isNan inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let isVariableInitialized
    (ref : 'dtype t)
  =
  let inputs = [Op.Tensor_handle.P ref] in
  let attrs = [
    "dtype", `type_ (Op.Tensor_handle.data_type ref);
  ]
  in
  Op.create context Op_names.isVariableInitialized inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let iterator
    ~shared_name
    ~container
    ~output_types
    ~output_shapes
    ()
  =
  let inputs = [] in
  let attrs = [
    "shared_name", `string shared_name;
    "container", `string container;
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.iterator inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let iteratorFromStringHandle
    ?(output_types=[])
    ?(output_shapes=[])
    (string_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P string_handle] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.iteratorFromStringHandle inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let iteratorToStringHandle
    (resource_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P resource_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.iteratorToStringHandle inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let l2Loss
    (t : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P t] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type t);
  ]
  in
  Op.create context Op_names.l2Loss inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ t)

let lMDBReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.lMDBReader inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let lRN
    ?(depth_radius=5)
    ?(bias=1.)
    ?(alpha=1.)
    ?(beta=0.5)
    (input : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "depth_radius", `int depth_radius;
    "bias", `float bias;
    "alpha", `float alpha;
    "beta", `float beta;
  ]
  in
  Op.create context Op_names.lRN inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let lRNGrad
    ?(depth_radius=5)
    ?(bias=1.)
    ?(alpha=1.)
    ?(beta=0.5)
    (input_grads : ([< `float ] as 't) t)
    (input_image : ([< `float ] as 't) t)
    (output_image : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input_grads; Op.Tensor_handle.P input_image; Op.Tensor_handle.P output_image] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input_grads);
    "depth_radius", `int depth_radius;
    "bias", `float bias;
    "alpha", `float alpha;
    "beta", `float beta;
  ]
  in
  Op.create context Op_names.lRNGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input_grads)

let learnedUnigramCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P true_classes] in
  let attrs = [
    "num_true", `int num_true;
    "num_sampled", `int num_sampled;
    "unique", `bool unique;
    "range_max", `int range_max;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.learnedUnigramCandidateSampler inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    Type.Float
    Type.Float

let less
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.less inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let lessEqual
    (x : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.lessEqual inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let lgamma
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.lgamma inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let linSpace
    (start : ([< `float | `double ] as 't) t)
    (stop : ([< `float | `double ] as 't) t)
    (num : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P start; Op.Tensor_handle.P stop; Op.Tensor_handle.P num] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type start);
    "Tidx", `type_ (Op.Tensor_handle.data_type num);
  ]
  in
  Op.create context Op_names.linSpace inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ start)

let listDiff
    ~type_out_idx
    (x : 't t)
    (y : 't t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "out_idx", `type_ Operation.Type.(to_data_type (P type_out_idx));
  ]
  in
  Op.create context Op_names.listDiff inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ x)
    type_out_idx

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
  let inputs = [Op.Tensor_handle.P ckpt_path; Op.Tensor_handle.P old_tensor_name; Op.Tensor_handle.P row_remapping; Op.Tensor_handle.P col_remapping; Op.Tensor_handle.P initializing_values] in
  let attrs = [
    "num_rows", `int num_rows;
    "num_cols", `int num_cols;
    "max_rows_in_memory", `int max_rows_in_memory;
  ]
  in
  Op.create context Op_names.loadAndRemapMatrix inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let log
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.log inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let log1p
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.log1p inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let logMatrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.logMatrixDeterminant inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)

let logSoftmax
    (logits : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P logits] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type logits);
  ]
  in
  Op.create context Op_names.logSoftmax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ logits)

let logUniformCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P true_classes] in
  let attrs = [
    "num_true", `int num_true;
    "num_sampled", `int num_sampled;
    "unique", `bool unique;
    "range_max", `int range_max;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.logUniformCandidateSampler inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    Type.Float
    Type.Float

let logicalAnd
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
  ]
  in
  Op.create context Op_names.logicalAnd inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let logicalNot
    (x : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
  ]
  in
  Op.create context Op_names.logicalNot inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let logicalOr
    (x : [ `bool ] t)
    (y : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
  ]
  in
  Op.create context Op_names.logicalOr inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let lookupTableExport
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P table_handle] in
  let attrs = [
    "Tkeys", `type_ Operation.Type.(to_data_type (P type_tkeys));
    "Tvalues", `type_ Operation.Type.(to_data_type (P type_tvalues));
  ]
  in
  Op.create context Op_names.lookupTableExport inputs attrs
  |> fun op -> Op.execute2 op
    type_tkeys
    type_tvalues

let lookupTableExportV2
    ~type_tkeys
    ~type_tvalues
    (table_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P table_handle] in
  let attrs = [
    "Tkeys", `type_ Operation.Type.(to_data_type (P type_tkeys));
    "Tvalues", `type_ Operation.Type.(to_data_type (P type_tvalues));
  ]
  in
  Op.create context Op_names.lookupTableExportV2 inputs attrs
  |> fun op -> Op.execute2 op
    type_tkeys
    type_tvalues

let lookupTableFind
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P default_value] in
  let attrs = [
    "Tout", `type_ (Op.Tensor_handle.data_type default_value);
    "Tin", `type_ (Op.Tensor_handle.data_type keys);
  ]
  in
  Op.create context Op_names.lookupTableFind inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ default_value)

let lookupTableFindV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (default_value : 'tout t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P default_value] in
  let attrs = [
    "Tout", `type_ (Op.Tensor_handle.data_type default_value);
    "Tin", `type_ (Op.Tensor_handle.data_type keys);
  ]
  in
  Op.create context Op_names.lookupTableFindV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ default_value)

let lookupTableImport
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P values] in
  let attrs = [
    "Tin", `type_ (Op.Tensor_handle.data_type keys);
    "Tout", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.lookupTableImport inputs attrs
  |> fun op -> Op.execute0 op

let lookupTableImportV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P values] in
  let attrs = [
    "Tin", `type_ (Op.Tensor_handle.data_type keys);
    "Tout", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.lookupTableImportV2 inputs attrs
  |> fun op -> Op.execute0 op

let lookupTableInsert
    (table_handle : [ `string ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P values] in
  let attrs = [
    "Tin", `type_ (Op.Tensor_handle.data_type keys);
    "Tout", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.lookupTableInsert inputs attrs
  |> fun op -> Op.execute0 op

let lookupTableInsertV2
    (table_handle : [ `resource ] t)
    (keys : 'tin t)
    (values : 'tout t)
  =
  let inputs = [Op.Tensor_handle.P table_handle; Op.Tensor_handle.P keys; Op.Tensor_handle.P values] in
  let attrs = [
    "Tin", `type_ (Op.Tensor_handle.data_type keys);
    "Tout", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.lookupTableInsertV2 inputs attrs
  |> fun op -> Op.execute0 op

let lookupTableSize
    (table_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P table_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.lookupTableSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let lookupTableSizeV2
    (table_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P table_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.lookupTableSizeV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let loopCond
    (input : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.loopCond inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let makeIterator
    (dataset : [ `variant ] t)
    (iterator : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P dataset; Op.Tensor_handle.P iterator] in
  let attrs = [
  ]
  in
  Op.create context Op_names.makeIterator inputs attrs
  |> fun op -> Op.execute0 op

let mapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.mapClear inputs attrs
  |> fun op -> Op.execute0 op

let mapIncompleteSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.mapIncompleteSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let mapSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.mapSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let matMul
    ?(transpose_a=false)
    ?(transpose_b=false)
    (a : ([< `float | `double | `int32 | `complex64 ] as 't) t)
    (b : ([< `float | `double | `int32 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P b] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a);
    "transpose_a", `bool transpose_a;
    "transpose_b", `bool transpose_b;
  ]
  in
  Op.create context Op_names.matMul inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a)

let matchingFiles
    (pattern : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P pattern] in
  let attrs = [
  ]
  in
  Op.create context Op_names.matchingFiles inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let matrixBandPart
    (input : 't t)
    (num_lower : [ `int64 ] t)
    (num_upper : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P num_lower; Op.Tensor_handle.P num_upper] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.matrixBandPart inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let matrixDeterminant
    (input : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.matrixDeterminant inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let matrixDiag
    (diagonal : 't t)
  =
  let inputs = [Op.Tensor_handle.P diagonal] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type diagonal);
  ]
  in
  Op.create context Op_names.matrixDiag inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ diagonal)

let matrixDiagPart
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.matrixDiagPart inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let matrixInverse
    ?(adjoint=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "adjoint", `bool adjoint;
  ]
  in
  Op.create context Op_names.matrixInverse inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let matrixSetDiag
    (input : 't t)
    (diagonal : 't t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P diagonal] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.matrixSetDiag inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let matrixSolve
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P matrix; Op.Tensor_handle.P rhs] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type matrix);
    "adjoint", `bool adjoint;
  ]
  in
  Op.create context Op_names.matrixSolve inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ matrix)

let matrixSolveLs
    ?(fast=true)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
    (l2_regularizer : [ `double ] t)
  =
  let inputs = [Op.Tensor_handle.P matrix; Op.Tensor_handle.P rhs; Op.Tensor_handle.P l2_regularizer] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type matrix);
    "fast", `bool fast;
  ]
  in
  Op.create context Op_names.matrixSolveLs inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ matrix)

let matrixTriangularSolve
    ?(lower=true)
    ?(adjoint=false)
    (matrix : ([< `double | `float | `complex64 ] as 't) t)
    (rhs : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P matrix; Op.Tensor_handle.P rhs] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type matrix);
    "lower", `bool lower;
    "adjoint", `bool adjoint;
  ]
  in
  Op.create context Op_names.matrixTriangularSolve inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ matrix)

let max
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type reduction_indices);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.max inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let maxPool
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPool inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let maxPool3D
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (input : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPool3D inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let maxPool3DGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input : ([< `float ] as 'tInput) t)
    (orig_output : ([< `float ] as 'tInput) t)
    (grad : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P orig_input; Op.Tensor_handle.P orig_output; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "TInput", `type_ (Op.Tensor_handle.data_type orig_input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPool3DGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ grad)

let maxPool3DGradGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NDHWC")
    (orig_input : ([< `float ] as 't) t)
    (orig_output : ([< `float ] as 't) t)
    (grad : ([< `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P orig_input; Op.Tensor_handle.P orig_output; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type orig_input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPool3DGradGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ orig_input)

let maxPoolGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P orig_input; Op.Tensor_handle.P orig_output; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type orig_input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPoolGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ orig_input)

let maxPoolGradGrad
    ~ksize
    ~strides
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P orig_input; Op.Tensor_handle.P orig_output; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type orig_input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPoolGradGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ orig_input)

let maxPoolGradGradV2
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P orig_input; Op.Tensor_handle.P orig_output; Op.Tensor_handle.P grad; Op.Tensor_handle.P ksize; Op.Tensor_handle.P strides] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type orig_input);
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPoolGradGradV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ orig_input)

let maxPoolGradGradWithArgmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (argmax : ([< `int32 | `int64 ] as 'targmax) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P grad; Op.Tensor_handle.P argmax] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Targmax", `type_ (Op.Tensor_handle.data_type argmax);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.maxPoolGradGradWithArgmax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let maxPoolGradV2
    ~padding
    ?(data_format="NHWC")
    (orig_input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (orig_output : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P orig_input; Op.Tensor_handle.P orig_output; Op.Tensor_handle.P grad; Op.Tensor_handle.P ksize; Op.Tensor_handle.P strides] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type orig_input);
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPoolGradV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ orig_input)

let maxPoolGradWithArgmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (grad : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (argmax : ([< `int32 | `int64 ] as 'targmax) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P grad; Op.Tensor_handle.P argmax] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Targmax", `type_ (Op.Tensor_handle.data_type argmax);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.maxPoolGradWithArgmax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let maxPoolV2
    ~padding
    ?(data_format="NHWC")
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (ksize : [ `int32 ] t)
    (strides : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P ksize; Op.Tensor_handle.P strides] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "padding", `string padding;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.maxPoolV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let maxPoolWithArgmax
    ~type_targmax
    ~ksize
    ~strides
    ~padding
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Targmax", `type_ Operation.Type.(to_data_type (P type_targmax));
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.maxPoolWithArgmax inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ input)
    type_targmax

let maximum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.maximum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let mean
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type reduction_indices);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.mean inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let merge
    (inputs__ : 't t list)
  =
  let inputs = List.map inputs__ ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn inputs__));
    "N", `int (List.length inputs__);
  ]
  in
  Op.create context Op_names.merge inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ (List.hd_exn inputs__))
    Type.Int32

let mergeSummary
    (inputs__ : [ `string ] t list)
  =
  let inputs = List.map inputs__ ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "N", `int (List.length inputs__);
  ]
  in
  Op.create context Op_names.mergeSummary inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let mergeV2Checkpoints
    ?(delete_old_dirs=true)
    (checkpoint_prefixes : [ `string ] t)
    (destination_prefix : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P checkpoint_prefixes; Op.Tensor_handle.P destination_prefix] in
  let attrs = [
    "delete_old_dirs", `bool delete_old_dirs;
  ]
  in
  Op.create context Op_names.mergeV2Checkpoints inputs attrs
  |> fun op -> Op.execute0 op

let mfcc
    ?(upper_frequency_limit=4000.)
    ?(lower_frequency_limit=20.)
    ?(filterbank_channel_count=40)
    ?(dct_coefficient_count=13)
    (spectrogram : [ `float ] t)
    (sample_rate : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P spectrogram; Op.Tensor_handle.P sample_rate] in
  let attrs = [
    "upper_frequency_limit", `float upper_frequency_limit;
    "lower_frequency_limit", `float lower_frequency_limit;
    "filterbank_channel_count", `int filterbank_channel_count;
    "dct_coefficient_count", `int dct_coefficient_count;
  ]
  in
  Op.create context Op_names.mfcc inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let min
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type reduction_indices);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.min inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let minimum
    (x : ([< `float | `double | `int32 | `int64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.minimum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let mirrorPad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P paddings] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tpaddings", `type_ (Op.Tensor_handle.data_type paddings);
    "mode", `string mode;
  ]
  in
  Op.create context Op_names.mirrorPad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let mirrorPadGrad
    ~mode
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P paddings] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tpaddings", `type_ (Op.Tensor_handle.data_type paddings);
    "mode", `string mode;
  ]
  in
  Op.create context Op_names.mirrorPadGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let mod_
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.mod_ inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let mul
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.mul inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let multinomial
    ?(seed=0)
    ?(seed2=0)
    (logits : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (num_samples : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P logits; Op.Tensor_handle.P num_samples] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type logits);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.multinomial inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let mutableDenseHashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ?(initial_num_buckets=131072)
    ?(max_load_factor=0.800000011920929)
    (empty_key : 'key_dtype t)
  =
  let inputs = [Op.Tensor_handle.P empty_key] in
  let attrs = [
    "key_dtype", `type_ (Op.Tensor_handle.data_type empty_key);
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
    "value_shape", `shape value_shape;
    "initial_num_buckets", `int initial_num_buckets;
    "max_load_factor", `float max_load_factor;
  ]
  in
  Op.create context Op_names.mutableDenseHashTable inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let mutableDenseHashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ?(initial_num_buckets=131072)
    ?(max_load_factor=0.800000011920929)
    (empty_key : 'key_dtype t)
  =
  let inputs = [Op.Tensor_handle.P empty_key] in
  let attrs = [
    "key_dtype", `type_ (Op.Tensor_handle.data_type empty_key);
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
    "value_shape", `shape value_shape;
    "initial_num_buckets", `int initial_num_buckets;
    "max_load_factor", `float max_load_factor;
  ]
  in
  Op.create context Op_names.mutableDenseHashTableV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let mutableHashTable
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
  ]
  in
  Op.create context Op_names.mutableHashTable inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let mutableHashTableOfTensors
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
    "value_shape", `shape value_shape;
  ]
  in
  Op.create context Op_names.mutableHashTableOfTensors inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let mutableHashTableOfTensorsV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ?(value_shape=[])
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
    "value_shape", `shape value_shape;
  ]
  in
  Op.create context Op_names.mutableHashTableOfTensorsV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let mutableHashTableV2
    ?(container="")
    ?(shared_name="")
    ?(use_node_name_sharing=false)
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "use_node_name_sharing", `bool use_node_name_sharing;
  ]
  in
  Op.create context Op_names.mutableHashTableV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let neg
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.neg inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let negTrain
    ~vocab_count
    ~num_negative_samples
    (w_in : [ `float ] t)
    (w_out : [ `float ] t)
    (examples : [ `int32 ] t)
    (labels : [ `int32 ] t)
    (lr : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P w_in; Op.Tensor_handle.P w_out; Op.Tensor_handle.P examples; Op.Tensor_handle.P labels; Op.Tensor_handle.P lr] in
  let attrs = [
    "vocab_count", `list_int vocab_count;
    "num_negative_samples", `int num_negative_samples;
  ]
  in
  Op.create context Op_names.negTrain inputs attrs
  |> fun op -> Op.execute0 op

let nextIteration
    (data : 't t)
  =
  let inputs = [Op.Tensor_handle.P data] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
  ]
  in
  Op.create context Op_names.nextIteration inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let noOp
    ()
  =
  let inputs = [] in
  let attrs = [
  ]
  in
  Op.create context Op_names.noOp inputs attrs
  |> fun op -> Op.execute0 op

let nonMaxSuppression
    ?(iou_threshold=0.5)
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P boxes; Op.Tensor_handle.P scores; Op.Tensor_handle.P max_output_size] in
  let attrs = [
    "iou_threshold", `float iou_threshold;
  ]
  in
  Op.create context Op_names.nonMaxSuppression inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let nonMaxSuppressionV2
    (boxes : [ `float ] t)
    (scores : [ `float ] t)
    (max_output_size : [ `int32 ] t)
    (iou_threshold : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P boxes; Op.Tensor_handle.P scores; Op.Tensor_handle.P max_output_size; Op.Tensor_handle.P iou_threshold] in
  let attrs = [
  ]
  in
  Op.create context Op_names.nonMaxSuppressionV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let notEqual
    (x : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.notEqual inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let oneHot
    ?(axis=(-1))
    (indices : ([< `uInt8 | `int32 | `int64 ] as 'tI) t)
    (depth : [ `int32 ] t)
    (on_value : 't t)
    (off_value : 't t)
  =
  let inputs = [Op.Tensor_handle.P indices; Op.Tensor_handle.P depth; Op.Tensor_handle.P on_value; Op.Tensor_handle.P off_value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type on_value);
    "TI", `type_ (Op.Tensor_handle.data_type indices);
    "axis", `int axis;
  ]
  in
  Op.create context Op_names.oneHot inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ on_value)

let oneShotIterator
    ~output_types
    ~output_shapes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.oneShotIterator inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let onesLike
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.onesLike inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let orderedMapClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.orderedMapClear inputs attrs
  |> fun op -> Op.execute0 op

let orderedMapIncompleteSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.orderedMapIncompleteSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let orderedMapSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.orderedMapSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let pack
    ?(axis=0)
    (values : 't t list)
  =
  let inputs = List.map values ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn values));
    "N", `int (List.length values);
    "axis", `int axis;
  ]
  in
  Op.create context Op_names.pack inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn values))

let pad
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P paddings] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tpaddings", `type_ (Op.Tensor_handle.data_type paddings);
  ]
  in
  Op.create context Op_names.pad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let padV2
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
    (constant_values : 't t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P paddings; Op.Tensor_handle.P constant_values] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tpaddings", `type_ (Op.Tensor_handle.data_type paddings);
  ]
  in
  Op.create context Op_names.padV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let paddingFIFOQueue
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.paddingFIFOQueue inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let paddingFIFOQueueV2
    ~component_types
    ?(shapes=[])
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.paddingFIFOQueueV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let parallelConcat
    ~shape
    (values : 't t list)
  =
  let inputs = List.map values ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn values));
    "N", `int (List.length values);
    "shape", `shape shape;
  ]
  in
  Op.create context Op_names.parallelConcat inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn values))

let parallelDynamicStitch
    (indices : [ `int32 ] t list)
    (data : 't t list)
  =
  let inputs = List.map indices ~f:(fun x -> Op.Tensor_handle.P x)@List.map data ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn data));
    "N", `int (List.length indices);
  ]
  in
  Op.create context Op_names.parallelDynamicStitch inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn data))

let parameterizedTruncatedNormal
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
    (means : ([< `float | `double ] as 'dtype) t)
    (stdevs : ([< `float | `double ] as 'dtype) t)
    (minvals : ([< `float | `double ] as 'dtype) t)
    (maxvals : ([< `float | `double ] as 'dtype) t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P means; Op.Tensor_handle.P stdevs; Op.Tensor_handle.P minvals; Op.Tensor_handle.P maxvals] in
  let attrs = [
    "dtype", `type_ (Op.Tensor_handle.data_type means);
    "T", `type_ (Op.Tensor_handle.data_type shape);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.parameterizedTruncatedNormal inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ means)

let parseTensor
    ~type_out_type
    (serialized : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P serialized] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
  ]
  in
  Op.create context Op_names.parseTensor inputs attrs
  |> fun op -> Op.execute1 op
    type_out_type

let placeholder
    ~type_dtype
    ?(shape=[])
    ()
  =
  let inputs = [] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "shape", `shape shape;
  ]
  in
  Op.create context Op_names.placeholder inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let placeholderV2
    ~type_dtype
    ~shape
    ()
  =
  let inputs = [] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "shape", `shape shape;
  ]
  in
  Op.create context Op_names.placeholderV2 inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let placeholderWithDefault
    ~shape
    (input : 'dtype t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "dtype", `type_ (Op.Tensor_handle.data_type input);
    "shape", `shape shape;
  ]
  in
  Op.create context Op_names.placeholderWithDefault inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let polygamma
    (a : ([< `float | `double ] as 't) t)
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a);
  ]
  in
  Op.create context Op_names.polygamma inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a)

let populationCount
    (x : ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.populationCount inputs attrs
  |> fun op -> Op.execute1 op
    Type.UInt8

let pow
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.pow inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let prefetchDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (buffer_size : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P buffer_size] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.prefetchDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let preventGradient
    ?(message="")
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "message", `string message;
  ]
  in
  Op.create context Op_names.preventGradient inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let priorityQueue
    ?(component_types=[])
    ~shapes
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.priorityQueue inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let priorityQueueV2
    ?(component_types=[])
    ~shapes
    ?(capacity=(-1))
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.priorityQueueV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let prod
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type reduction_indices);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.prod inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let qr
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "full_matrices", `bool full_matrices;
  ]
  in
  Op.create context Op_names.qr inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)

let quantizeAndDequantize
    ?(signed_input=true)
    ?(num_bits=8)
    ?(range_given=false)
    ?(input_min=0.)
    ?(input_max=0.)
    (input : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "signed_input", `bool signed_input;
    "num_bits", `int num_bits;
    "range_given", `bool range_given;
    "input_min", `float input_min;
    "input_max", `float input_max;
  ]
  in
  Op.create context Op_names.quantizeAndDequantize inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let quantizeAndDequantizeV2
    ?(signed_input=true)
    ?(num_bits=8)
    ?(range_given=false)
    (input : ([< `float | `double ] as 't) t)
    (input_min : ([< `float | `double ] as 't) t)
    (input_max : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P input_min; Op.Tensor_handle.P input_max] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "signed_input", `bool signed_input;
    "num_bits", `int num_bits;
    "range_given", `bool range_given;
  ]
  in
  Op.create context Op_names.quantizeAndDequantizeV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let quantizeAndDequantizeV3
    ?(signed_input=true)
    ?(range_given=true)
    (input : ([< `float | `double ] as 't) t)
    (input_min : ([< `float | `double ] as 't) t)
    (input_max : ([< `float | `double ] as 't) t)
    (num_bits : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P input_min; Op.Tensor_handle.P input_max; Op.Tensor_handle.P num_bits] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "signed_input", `bool signed_input;
    "range_given", `bool range_given;
  ]
  in
  Op.create context Op_names.quantizeAndDequantizeV3 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let quantizeDownAndShrinkRange
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P input_min; Op.Tensor_handle.P input_max] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "Tinput", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.quantizeDownAndShrinkRange inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

let quantizeV2
    ~type_t
    ?(mode="MIN_COMBINED")
    (input : [ `float ] t)
    (min_range : [ `float ] t)
    (max_range : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P min_range; Op.Tensor_handle.P max_range] in
  let attrs = [
    "T", `type_ Operation.Type.(to_data_type (P type_t));
    "mode", `string mode;
  ]
  in
  Op.create context Op_names.quantizeV2 inputs attrs
  |> fun op -> Op.execute3 op
    type_t
    Type.Float
    Type.Float

let quantizedAdd
    ~type_toutput
    (x : 't1 t)
    (y : 't2 t)
    (min_x : [ `float ] t)
    (max_x : [ `float ] t)
    (min_y : [ `float ] t)
    (max_y : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y; Op.Tensor_handle.P min_x; Op.Tensor_handle.P max_x; Op.Tensor_handle.P min_y; Op.Tensor_handle.P max_y] in
  let attrs = [
    "Toutput", `type_ Operation.Type.(to_data_type (P type_toutput));
    "T1", `type_ (Op.Tensor_handle.data_type x);
    "T2", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.quantizedAdd inputs attrs
  |> fun op -> Op.execute3 op
    type_toutput
    Type.Float
    Type.Float

let quantizedAvgPool
    ~ksize
    ~strides
    ~padding
    (input : 't t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P min_input; Op.Tensor_handle.P max_input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.quantizedAvgPool inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ input)
    Type.Float
    Type.Float

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
  let inputs = [Op.Tensor_handle.P t; Op.Tensor_handle.P t_min; Op.Tensor_handle.P t_max; Op.Tensor_handle.P m; Op.Tensor_handle.P m_min; Op.Tensor_handle.P m_max; Op.Tensor_handle.P v; Op.Tensor_handle.P v_min; Op.Tensor_handle.P v_max; Op.Tensor_handle.P beta; Op.Tensor_handle.P beta_min; Op.Tensor_handle.P beta_max; Op.Tensor_handle.P gamma; Op.Tensor_handle.P gamma_min; Op.Tensor_handle.P gamma_max] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "Tinput", `type_ (Op.Tensor_handle.data_type t);
    "variance_epsilon", `float variance_epsilon;
    "scale_after_normalization", `bool scale_after_normalization;
  ]
  in
  Op.create context Op_names.quantizedBatchNormWithGlobalNormalization inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

let quantizedBiasAdd
    ~type_out_type
    (input : 't1 t)
    (bias : 't2 t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
    (min_bias : [ `float ] t)
    (max_bias : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P bias; Op.Tensor_handle.P min_input; Op.Tensor_handle.P max_input; Op.Tensor_handle.P min_bias; Op.Tensor_handle.P max_bias] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "T1", `type_ (Op.Tensor_handle.data_type input);
    "T2", `type_ (Op.Tensor_handle.data_type bias);
  ]
  in
  Op.create context Op_names.quantizedBiasAdd inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

let quantizedConcat
    (concat_dim : [ `int32 ] t)
    (values : 't t list)
    (input_mins : [ `float ] t list)
    (input_maxes : [ `float ] t list)
  =
  let inputs = [Op.Tensor_handle.P concat_dim]@List.map values ~f:(fun x -> Op.Tensor_handle.P x)@List.map input_mins ~f:(fun x -> Op.Tensor_handle.P x)@List.map input_maxes ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn values));
    "N", `int (List.length values);
  ]
  in
  Op.create context Op_names.quantizedConcat inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ (List.hd_exn values))
    Type.Float
    Type.Float

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
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P filter; Op.Tensor_handle.P min_input; Op.Tensor_handle.P max_input; Op.Tensor_handle.P min_filter; Op.Tensor_handle.P max_filter] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "Tinput", `type_ (Op.Tensor_handle.data_type input);
    "Tfilter", `type_ (Op.Tensor_handle.data_type filter);
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.quantizedConv2D inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

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
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P x_min; Op.Tensor_handle.P x_max] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "output_range_given", `bool output_range_given;
    "given_y_min", `float given_y_min;
    "given_y_max", `float given_y_max;
    "variance_epsilon", `float variance_epsilon;
    "min_separation", `float min_separation;
  ]
  in
  Op.create context Op_names.quantizedInstanceNorm inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ x)
    Type.Float
    Type.Float

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
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P b; Op.Tensor_handle.P min_a; Op.Tensor_handle.P max_a; Op.Tensor_handle.P min_b; Op.Tensor_handle.P max_b] in
  let attrs = [
    "Toutput", `type_ Operation.Type.(to_data_type (P type_toutput));
    "T1", `type_ (Op.Tensor_handle.data_type a);
    "T2", `type_ (Op.Tensor_handle.data_type b);
    "transpose_a", `bool transpose_a;
    "transpose_b", `bool transpose_b;
  ]
  in
  Op.create context Op_names.quantizedMatMul inputs attrs
  |> fun op -> Op.execute3 op
    type_toutput
    Type.Float
    Type.Float

let quantizedMaxPool
    ~ksize
    ~strides
    ~padding
    (input : 't t)
    (min_input : [ `float ] t)
    (max_input : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P min_input; Op.Tensor_handle.P max_input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "ksize", `list_int ksize;
    "strides", `list_int strides;
    "padding", `string padding;
  ]
  in
  Op.create context Op_names.quantizedMaxPool inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ input)
    Type.Float
    Type.Float

let quantizedMul
    ~type_toutput
    (x : 't1 t)
    (y : 't2 t)
    (min_x : [ `float ] t)
    (max_x : [ `float ] t)
    (min_y : [ `float ] t)
    (max_y : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y; Op.Tensor_handle.P min_x; Op.Tensor_handle.P max_x; Op.Tensor_handle.P min_y; Op.Tensor_handle.P max_y] in
  let attrs = [
    "Toutput", `type_ Operation.Type.(to_data_type (P type_toutput));
    "T1", `type_ (Op.Tensor_handle.data_type x);
    "T2", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.quantizedMul inputs attrs
  |> fun op -> Op.execute3 op
    type_toutput
    Type.Float
    Type.Float

let quantizedRelu
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P features; Op.Tensor_handle.P min_features; Op.Tensor_handle.P max_features] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "Tinput", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.quantizedRelu inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

let quantizedRelu6
    ~type_out_type
    (features : 'tinput t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P features; Op.Tensor_handle.P min_features; Op.Tensor_handle.P max_features] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "Tinput", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.quantizedRelu6 inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

let quantizedReluX
    ~type_out_type
    (features : 'tinput t)
    (max_value : [ `float ] t)
    (min_features : [ `float ] t)
    (max_features : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P features; Op.Tensor_handle.P max_value; Op.Tensor_handle.P min_features; Op.Tensor_handle.P max_features] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "Tinput", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.quantizedReluX inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

let quantizedReshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P tensor; Op.Tensor_handle.P shape; Op.Tensor_handle.P input_min; Op.Tensor_handle.P input_max] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
    "Tshape", `type_ (Op.Tensor_handle.data_type shape);
  ]
  in
  Op.create context Op_names.quantizedReshape inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ tensor)
    Type.Float
    Type.Float

let quantizedResizeBilinear
    ?(align_corners=false)
    (images : ([< `float ] as 't) t)
    (size : [ `int32 ] t)
    (min : [ `float ] t)
    (max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P size; Op.Tensor_handle.P min; Op.Tensor_handle.P max] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.quantizedResizeBilinear inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ images)
    Type.Float
    Type.Float

let queueClose
    ?(cancel_pending_enqueues=false)
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
    "cancel_pending_enqueues", `bool cancel_pending_enqueues;
  ]
  in
  Op.create context Op_names.queueClose inputs attrs
  |> fun op -> Op.execute0 op

let queueCloseV2
    ?(cancel_pending_enqueues=false)
    (handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
    "cancel_pending_enqueues", `bool cancel_pending_enqueues;
  ]
  in
  Op.create context Op_names.queueCloseV2 inputs attrs
  |> fun op -> Op.execute0 op

let queueIsClosed
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.queueIsClosed inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let queueIsClosedV2
    (handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.queueIsClosedV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Bool

let queueSize
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.queueSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let queueSizeV2
    (handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.queueSizeV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let rFFT
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P fft_length] in
  let attrs = [
  ]
  in
  Op.create context Op_names.rFFT inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let rFFT2D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P fft_length] in
  let attrs = [
  ]
  in
  Op.create context Op_names.rFFT2D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let rFFT3D
    (input : [ `float ] t)
    (fft_length : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P fft_length] in
  let attrs = [
  ]
  in
  Op.create context Op_names.rFFT3D inputs attrs
  |> fun op -> Op.execute1 op
    Type.Complex64

let rGBToHSV
    (images : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P images] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
  ]
  in
  Op.create context Op_names.rGBToHSV inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ images)

let randomCrop
    ?(seed=0)
    ?(seed2=0)
    (image : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P image; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type image);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomCrop inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ image)

let randomGamma
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (alpha : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P alpha] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type alpha);
    "S", `type_ (Op.Tensor_handle.data_type shape);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomGamma inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ alpha)

let randomPoisson
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (rate : ([< `float | `double ] as 'dtype) t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P rate] in
  let attrs = [
    "dtype", `type_ (Op.Tensor_handle.data_type rate);
    "S", `type_ (Op.Tensor_handle.data_type shape);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomPoisson inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ rate)

let randomPoissonV2
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 's) t)
    (rate : ([< `float | `double | `int32 | `int64 ] as 'r) t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P rate] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "S", `type_ (Op.Tensor_handle.data_type shape);
    "R", `type_ (Op.Tensor_handle.data_type rate);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomPoissonV2 inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let randomShuffle
    ?(seed=0)
    ?(seed2=0)
    (value : 't t)
  =
  let inputs = [Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomShuffle inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ value)

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
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "min_after_dequeue", `int min_after_dequeue;
    "seed", `int seed;
    "seed2", `int seed2;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.randomShuffleQueue inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

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
  let inputs = [] in
  let attrs = [
    "component_types", `list_type_p component_types;
    "shapes", `list_shape shapes;
    "capacity", `int capacity;
    "min_after_dequeue", `int min_after_dequeue;
    "seed", `int seed;
    "seed2", `int seed2;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.randomShuffleQueueV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let randomStandardNormal
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P shape] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "T", `type_ (Op.Tensor_handle.data_type shape);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomStandardNormal inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let randomUniform
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P shape] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "T", `type_ (Op.Tensor_handle.data_type shape);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomUniform inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let randomUniformInt
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
    (minval : ([< `int32 | `int64 ] as 'tout) t)
    (maxval : ([< `int32 | `int64 ] as 'tout) t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P minval; Op.Tensor_handle.P maxval] in
  let attrs = [
    "Tout", `type_ (Op.Tensor_handle.data_type minval);
    "T", `type_ (Op.Tensor_handle.data_type shape);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.randomUniformInt inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ minval)

let range
    (start : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (limit : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
    (delta : ([< `float | `double | `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P start; Op.Tensor_handle.P limit; Op.Tensor_handle.P delta] in
  let attrs = [
    "Tidx", `type_ (Op.Tensor_handle.data_type start);
  ]
  in
  Op.create context Op_names.range inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ start)

let rangeDataset
    ~output_types
    ~output_shapes
    (start : [ `int64 ] t)
    (stop : [ `int64 ] t)
    (step : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P start; Op.Tensor_handle.P stop; Op.Tensor_handle.P step] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.rangeDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let rank
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.rank inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let readFile
    (filename : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P filename] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readFile inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let readerNumRecordsProduced
    (reader_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerNumRecordsProduced inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let readerNumRecordsProducedV2
    (reader_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerNumRecordsProducedV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let readerNumWorkUnitsCompleted
    (reader_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerNumWorkUnitsCompleted inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let readerNumWorkUnitsCompletedV2
    (reader_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerNumWorkUnitsCompletedV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let readerRead
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle; Op.Tensor_handle.P queue_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerRead inputs attrs
  |> fun op -> Op.execute2 op
    Type.String
    Type.String

let readerReadUpTo
    (reader_handle : [ `string ] t)
    (queue_handle : [ `string ] t)
    (num_records : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle; Op.Tensor_handle.P queue_handle; Op.Tensor_handle.P num_records] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerReadUpTo inputs attrs
  |> fun op -> Op.execute2 op
    Type.String
    Type.String

let readerReadUpToV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
    (num_records : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle; Op.Tensor_handle.P queue_handle; Op.Tensor_handle.P num_records] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerReadUpToV2 inputs attrs
  |> fun op -> Op.execute2 op
    Type.String
    Type.String

let readerReadV2
    (reader_handle : [ `resource ] t)
    (queue_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle; Op.Tensor_handle.P queue_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerReadV2 inputs attrs
  |> fun op -> Op.execute2 op
    Type.String
    Type.String

let readerReset
    (reader_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerReset inputs attrs
  |> fun op -> Op.execute0 op

let readerResetV2
    (reader_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerResetV2 inputs attrs
  |> fun op -> Op.execute0 op

let readerRestoreState
    (reader_handle : [ `string ] t)
    (state : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle; Op.Tensor_handle.P state] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerRestoreState inputs attrs
  |> fun op -> Op.execute0 op

let readerRestoreStateV2
    (reader_handle : [ `resource ] t)
    (state : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle; Op.Tensor_handle.P state] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerRestoreStateV2 inputs attrs
  |> fun op -> Op.execute0 op

let readerSerializeState
    (reader_handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerSerializeState inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let readerSerializeStateV2
    (reader_handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P reader_handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.readerSerializeStateV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let real
    ~type_tout
    (input : ([< `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "Tout", `type_ Operation.Type.(to_data_type (P type_tout));
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.real inputs attrs
  |> fun op -> Op.execute1 op
    type_tout

let realDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.realDiv inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let reciprocal
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.reciprocal inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let reciprocalGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P y; Op.Tensor_handle.P dy] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.reciprocalGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ y)

let recordInput
    ~file_pattern
    ?(file_random_seed=301)
    ?(file_shuffle_shift_ratio=0.)
    ?(file_buffer_size=10000)
    ?(file_parallelism=16)
    ?(batch_size=32)
    ()
  =
  let inputs = [] in
  let attrs = [
    "file_pattern", `string file_pattern;
    "file_random_seed", `int file_random_seed;
    "file_shuffle_shift_ratio", `float file_shuffle_shift_ratio;
    "file_buffer_size", `int file_buffer_size;
    "file_parallelism", `int file_parallelism;
    "batch_size", `int batch_size;
  ]
  in
  Op.create context Op_names.recordInput inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let reduceJoin
    ?(keep_dims=false)
    ?(separator="")
    (inputs__ : [ `string ] t)
    (reduction_indices : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P inputs__; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "keep_dims", `bool keep_dims;
    "separator", `string separator;
  ]
  in
  Op.create context Op_names.reduceJoin inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let refEnter
    ~frame_name
    ?(is_constant=false)
    ?(parallel_iterations=10)
    (data : 't t)
  =
  let inputs = [Op.Tensor_handle.P data] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "frame_name", `string frame_name;
    "is_constant", `bool is_constant;
    "parallel_iterations", `int parallel_iterations;
  ]
  in
  Op.create context Op_names.refEnter inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let refExit
    (data : 't t)
  =
  let inputs = [Op.Tensor_handle.P data] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
  ]
  in
  Op.create context Op_names.refExit inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let refIdentity
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.refIdentity inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let refMerge
    (inputs__ : 't t list)
  =
  let inputs = List.map inputs__ ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn inputs__));
    "N", `int (List.length inputs__);
  ]
  in
  Op.create context Op_names.refMerge inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ (List.hd_exn inputs__))
    Type.Int32

let refNextIteration
    (data : 't t)
  =
  let inputs = [Op.Tensor_handle.P data] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
  ]
  in
  Op.create context Op_names.refNextIteration inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let refSelect
    (index : [ `int32 ] t)
    (inputs__ : 't t list)
  =
  let inputs = [Op.Tensor_handle.P index]@List.map inputs__ ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn inputs__));
    "N", `int (List.length inputs__);
  ]
  in
  Op.create context Op_names.refSelect inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ (List.hd_exn inputs__))

let refSwitch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P pred] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
  ]
  in
  Op.create context Op_names.refSwitch inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ data)
    (Op.Tensor_handle.type_ data)

let relu
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.relu inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ features)

let relu6
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.relu6 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ features)

let relu6Grad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type gradients);
  ]
  in
  Op.create context Op_names.relu6Grad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ gradients)

let reluGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type gradients);
  ]
  in
  Op.create context Op_names.reluGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ gradients)

let repeatDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P count] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.repeatDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let requantizationRange
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P input_min; Op.Tensor_handle.P input_max] in
  let attrs = [
    "Tinput", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.requantizationRange inputs attrs
  |> fun op -> Op.execute2 op
    Type.Float
    Type.Float

let requantize
    ~type_out_type
    (input : 'tinput t)
    (input_min : [ `float ] t)
    (input_max : [ `float ] t)
    (requested_output_min : [ `float ] t)
    (requested_output_max : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P input_min; Op.Tensor_handle.P input_max; Op.Tensor_handle.P requested_output_min; Op.Tensor_handle.P requested_output_max] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "Tinput", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.requantize inputs attrs
  |> fun op -> Op.execute3 op
    type_out_type
    Type.Float
    Type.Float

let reshape
    (tensor : 't t)
    (shape : ([< `int32 | `int64 ] as 'tshape) t)
  =
  let inputs = [Op.Tensor_handle.P tensor; Op.Tensor_handle.P shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
    "Tshape", `type_ (Op.Tensor_handle.data_type shape);
  ]
  in
  Op.create context Op_names.reshape inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ tensor)

let resizeArea
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.resizeArea inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let resizeBicubic
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.resizeBicubic inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let resizeBicubicGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P grads; Op.Tensor_handle.P original_image] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type original_image);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.resizeBicubicGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ original_image)

let resizeBilinear
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.resizeBilinear inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let resizeBilinearGrad
    ?(align_corners=false)
    (grads : [ `float ] t)
    (original_image : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P grads; Op.Tensor_handle.P original_image] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type original_image);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.resizeBilinearGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ original_image)

let resizeNearestNeighbor
    ?(align_corners=false)
    (images : ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P images; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type images);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.resizeNearestNeighbor inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ images)

let resizeNearestNeighborGrad
    ?(align_corners=false)
    (grads : ([< `uInt8 | `int32 | `float | `double ] as 't) t)
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P grads; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grads);
    "align_corners", `bool align_corners;
  ]
  in
  Op.create context Op_names.resizeNearestNeighborGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ grads)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P accum_update; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyAdadelta inputs attrs
  |> fun op -> Op.execute0 op

let resourceApplyAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyAdagrad inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P gradient_accumulator; Op.Tensor_handle.P gradient_squared_accumulator; Op.Tensor_handle.P grad; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P global_step] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyAdagradDA inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P m; Op.Tensor_handle.P v; Op.Tensor_handle.P beta1_power; Op.Tensor_handle.P beta2_power; Op.Tensor_handle.P lr; Op.Tensor_handle.P beta1; Op.Tensor_handle.P beta2; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type beta1_power);
    "use_locking", `bool use_locking;
    "use_nesterov", `bool use_nesterov;
  ]
  in
  Op.create context Op_names.resourceApplyAdam inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P mg; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyCenteredRMSProp inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyFtrl inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P l2_shrinkage; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyFtrlV2 inputs attrs
  |> fun op -> Op.execute0 op

let resourceApplyGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P alpha; Op.Tensor_handle.P delta] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type alpha);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyGradientDescent inputs attrs
  |> fun op -> Op.execute0 op

let resourceApplyMomentum
    ?(use_locking=false)
    ?(use_nesterov=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (momentum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad; Op.Tensor_handle.P momentum] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "use_locking", `bool use_locking;
    "use_nesterov", `bool use_nesterov;
  ]
  in
  Op.create context Op_names.resourceApplyMomentum inputs attrs
  |> fun op -> Op.execute0 op

let resourceApplyProximalAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyProximalAdagrad inputs attrs
  |> fun op -> Op.execute0 op

let resourceApplyProximalGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (delta : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P alpha; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P delta] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type alpha);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyProximalGradientDescent inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceApplyRMSProp inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P accum_update; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyAdadelta inputs attrs
  |> fun op -> Op.execute0 op

let resourceSparseApplyAdagrad
    ?(use_locking=false)
    (var : [ `resource ] t)
    (accum : [ `resource ] t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyAdagrad inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P gradient_accumulator; Op.Tensor_handle.P gradient_squared_accumulator; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P global_step] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyAdagradDA inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P mg; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyCenteredRMSProp inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyFtrl inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P l2_shrinkage; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyFtrlV2 inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P momentum] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
    "use_nesterov", `bool use_nesterov;
  ]
  in
  Op.create context Op_names.resourceSparseApplyMomentum inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyProximalAdagrad inputs attrs
  |> fun op -> Op.execute0 op

let resourceSparseApplyProximalGradientDescent
    ?(use_locking=false)
    (var : [ `resource ] t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P alpha; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type alpha);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyProximalGradientDescent inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type lr);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.resourceSparseApplyRMSProp inputs attrs
  |> fun op -> Op.execute0 op

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
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P begin__; Op.Tensor_handle.P end__; Op.Tensor_handle.P strides; Op.Tensor_handle.P value] in
  let attrs = [
    "Index", `type_ (Op.Tensor_handle.data_type begin__);
    "T", `type_ (Op.Tensor_handle.data_type value);
    "begin_mask", `int begin_mask;
    "end_mask", `int end_mask;
    "ellipsis_mask", `int ellipsis_mask;
    "new_axis_mask", `int new_axis_mask;
    "shrink_axis_mask", `int shrink_axis_mask;
  ]
  in
  Op.create context Op_names.resourceStridedSliceAssign inputs attrs
  |> fun op -> Op.execute0 op

let restore
    ~type_dt
    ?(preferred_shard=(-1))
    (file_pattern : [ `string ] t)
    (tensor_name : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P file_pattern; Op.Tensor_handle.P tensor_name] in
  let attrs = [
    "dt", `type_ Operation.Type.(to_data_type (P type_dt));
    "preferred_shard", `int preferred_shard;
  ]
  in
  Op.create context Op_names.restore inputs attrs
  |> fun op -> Op.execute1 op
    type_dt

let restoreIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P iterator; Op.Tensor_handle.P path] in
  let attrs = [
  ]
  in
  Op.create context Op_names.restoreIterator inputs attrs
  |> fun op -> Op.execute0 op

let restoreSlice
    ~type_dt
    ?(preferred_shard=(-1))
    (file_pattern : [ `string ] t)
    (tensor_name : [ `string ] t)
    (shape_and_slice : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P file_pattern; Op.Tensor_handle.P tensor_name; Op.Tensor_handle.P shape_and_slice] in
  let attrs = [
    "dt", `type_ Operation.Type.(to_data_type (P type_dt));
    "preferred_shard", `int preferred_shard;
  ]
  in
  Op.create context Op_names.restoreSlice inputs attrs
  |> fun op -> Op.execute1 op
    type_dt

let reverse
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (dims : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P tensor; Op.Tensor_handle.P dims] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
  ]
  in
  Op.create context Op_names.reverse inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ tensor)

let reverseSequence
    ~seq_dim
    ?(batch_dim=0)
    (input : 't t)
    (seq_lengths : ([< `int32 | `int64 ] as 'tlen) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P seq_lengths] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tlen", `type_ (Op.Tensor_handle.data_type seq_lengths);
    "seq_dim", `int seq_dim;
    "batch_dim", `int batch_dim;
  ]
  in
  Op.create context Op_names.reverseSequence inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let reverseV2
    (tensor : ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t)
    (axis : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P tensor; Op.Tensor_handle.P axis] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
    "Tidx", `type_ (Op.Tensor_handle.data_type axis);
  ]
  in
  Op.create context Op_names.reverseV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ tensor)

let rint
    (x : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.rint inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let round
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.round inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let rsqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.rsqrt inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let rsqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P y; Op.Tensor_handle.P dy] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.rsqrtGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ y)

let saveIterator
    (iterator : [ `resource ] t)
    (path : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P iterator; Op.Tensor_handle.P path] in
  let attrs = [
  ]
  in
  Op.create context Op_names.saveIterator inputs attrs
  |> fun op -> Op.execute0 op

let scalarSummary
    (tags : [ `string ] t)
    (values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P tags; Op.Tensor_handle.P values] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.scalarSummary inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let scatterAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterAdd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let scatterDiv
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterDiv inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let scatterMul
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterMul inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let scatterNd
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
    (shape : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P indices; Op.Tensor_handle.P updates; Op.Tensor_handle.P shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type updates);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.scatterNd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ updates)

let scatterNdAdd
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterNdAdd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let scatterNdNonAliasingAdd
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.scatterNdNonAliasingAdd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let scatterNdSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterNdSub inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let scatterNdUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterNdUpdate inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let scatterSub
    ?(use_locking=false)
    (ref : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterSub inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let scatterUpdate
    ?(use_locking=true)
    (ref : 't t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
    (updates : 't t)
  =
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P indices; Op.Tensor_handle.P updates] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.scatterUpdate inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

let sdcaFprint
    (input : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.sdcaFprint inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let sdcaShrinkL1
    ~l1
    ~l2
    (weights : [ `float ] t list)
  =
  let inputs = List.map weights ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "num_features", `int (List.length weights);
    "l1", `float l1;
    "l2", `float l2;
  ]
  in
  Op.create context Op_names.sdcaShrinkL1 inputs attrs
  |> fun op -> Op.execute0 op

let segmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tindices", `type_ (Op.Tensor_handle.data_type segment_ids);
  ]
  in
  Op.create context Op_names.segmentMax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let segmentMean
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tindices", `type_ (Op.Tensor_handle.data_type segment_ids);
  ]
  in
  Op.create context Op_names.segmentMean inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let segmentMin
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tindices", `type_ (Op.Tensor_handle.data_type segment_ids);
  ]
  in
  Op.create context Op_names.segmentMin inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let segmentProd
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tindices", `type_ (Op.Tensor_handle.data_type segment_ids);
  ]
  in
  Op.create context Op_names.segmentProd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let segmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tindices", `type_ (Op.Tensor_handle.data_type segment_ids);
  ]
  in
  Op.create context Op_names.segmentSum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let select
    (condition : [ `bool ] t)
    (t : 't t)
    (e : 't t)
  =
  let inputs = [Op.Tensor_handle.P condition; Op.Tensor_handle.P t; Op.Tensor_handle.P e] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type t);
  ]
  in
  Op.create context Op_names.select inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ t)

let selfAdjointEig
    (input : ([< `double | `float ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.selfAdjointEig inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let selfAdjointEigV2
    ?(compute_v=true)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "compute_v", `bool compute_v;
  ]
  in
  Op.create context Op_names.selfAdjointEigV2 inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)

let selu
    (features : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.selu inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ features)

let seluGrad
    (gradients : ([< `float | `double ] as 't) t)
    (outputs : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P outputs] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type gradients);
  ]
  in
  Op.create context Op_names.seluGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ gradients)

let serializeManySparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P sparse_indices; Op.Tensor_handle.P sparse_values; Op.Tensor_handle.P sparse_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sparse_values);
  ]
  in
  Op.create context Op_names.serializeManySparse inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let serializeSparse
    (sparse_indices : [ `int64 ] t)
    (sparse_values : 't t)
    (sparse_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P sparse_indices; Op.Tensor_handle.P sparse_values; Op.Tensor_handle.P sparse_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sparse_values);
  ]
  in
  Op.create context Op_names.serializeSparse inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let serializeTensor
    (tensor : 't t)
  =
  let inputs = [Op.Tensor_handle.P tensor] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
  ]
  in
  Op.create context Op_names.serializeTensor inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let setSize
    ?(validate_indices=true)
    (set_indices : [ `int64 ] t)
    (set_values : ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t)
    (set_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P set_indices; Op.Tensor_handle.P set_values; Op.Tensor_handle.P set_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type set_values);
    "validate_indices", `bool validate_indices;
  ]
  in
  Op.create context Op_names.setSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let shape
    ~type_out_type
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.shape inputs attrs
  |> fun op -> Op.execute1 op
    type_out_type

let shapeN
    ~type_out_type
    (input : 't t list)
  =
  let inputs = List.map input ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn input));
    "N", `int (List.length input);
  ]
  in
  Op.create context Op_names.shapeN inputs attrs
  |> fun op -> Op.execute op type_out_type ~output_len:(List.length input)

let shardedFilename
    (basename : [ `string ] t)
    (shard : [ `int32 ] t)
    (num_shards : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P basename; Op.Tensor_handle.P shard; Op.Tensor_handle.P num_shards] in
  let attrs = [
  ]
  in
  Op.create context Op_names.shardedFilename inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let shardedFilespec
    (basename : [ `string ] t)
    (num_shards : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P basename; Op.Tensor_handle.P num_shards] in
  let attrs = [
  ]
  in
  Op.create context Op_names.shardedFilespec inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let shuffleDataset
    ?(reshuffle_each_iteration=true)
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (buffer_size : [ `int64 ] t)
    (seed : [ `int64 ] t)
    (seed2 : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P buffer_size; Op.Tensor_handle.P seed; Op.Tensor_handle.P seed2] in
  let attrs = [
    "reshuffle_each_iteration", `bool reshuffle_each_iteration;
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.shuffleDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let sigmoid
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.sigmoid inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let sigmoidGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P y; Op.Tensor_handle.P dy] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.sigmoidGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ y)

let sign
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.sign inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let sin
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.sin inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let sinh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.sinh inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let size
    ~type_out_type
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.size inputs attrs
  |> fun op -> Op.execute1 op
    type_out_type

let skipDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P count] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.skipDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let skipgram
    ~filename
    ~batch_size
    ?(window_size=5)
    ?(min_count=5)
    ?(subsample=0.0010000000474974513)
    ()
  =
  let inputs = [] in
  let attrs = [
    "filename", `string filename;
    "batch_size", `int batch_size;
    "window_size", `int window_size;
    "min_count", `int min_count;
    "subsample", `float subsample;
  ]
  in
  Op.create context Op_names.skipgram inputs attrs
  |> fun op -> Op.execute7 op
    Type.String
    Type.Int32
    Type.Int64
    Type.Int32
    Type.Int64
    Type.Int32
    Type.Int32

let slice
    (input : 't t)
    (begin__ : ([< `int32 | `int64 ] as 'index) t)
    (size : ([< `int32 | `int64 ] as 'index) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P begin__; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Index", `type_ (Op.Tensor_handle.data_type begin__);
  ]
  in
  Op.create context Op_names.slice inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let softmax
    (logits : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P logits] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type logits);
  ]
  in
  Op.create context Op_names.softmax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ logits)

let softmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P features; Op.Tensor_handle.P labels] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.softmaxCrossEntropyWithLogits inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ features)
    (Op.Tensor_handle.type_ features)

let softplus
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.softplus inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ features)

let softplusGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type gradients);
  ]
  in
  Op.create context Op_names.softplusGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ gradients)

let softsign
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
  ]
  in
  Op.create context Op_names.softsign inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ features)

let softsignGrad
    (gradients : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (features : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P gradients; Op.Tensor_handle.P features] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type gradients);
  ]
  in
  Op.create context Op_names.softsignGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ gradients)

let spaceToBatch
    ~block_size
    (input : 't t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P paddings] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tpaddings", `type_ (Op.Tensor_handle.data_type paddings);
    "block_size", `int block_size;
  ]
  in
  Op.create context Op_names.spaceToBatch inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let spaceToBatchND
    (input : 't t)
    (block_shape : ([< `int32 | `int64 ] as 'tblock_shape) t)
    (paddings : ([< `int32 | `int64 ] as 'tpaddings) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P block_shape; Op.Tensor_handle.P paddings] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tblock_shape", `type_ (Op.Tensor_handle.data_type block_shape);
    "Tpaddings", `type_ (Op.Tensor_handle.data_type paddings);
  ]
  in
  Op.create context Op_names.spaceToBatchND inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let spaceToDepth
    ~block_size
    ?(data_format="NHWC")
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "block_size", `int block_size;
    "data_format", `string data_format;
  ]
  in
  Op.create context Op_names.spaceToDepth inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let sparseAccumulatorApplyGradient
    ~has_known_shape
    (handle : [ `string ] t)
    (local_step : [ `int64 ] t)
    (gradient_indices : [ `int64 ] t)
    (gradient_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t)
    (gradient_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P local_step; Op.Tensor_handle.P gradient_indices; Op.Tensor_handle.P gradient_values; Op.Tensor_handle.P gradient_shape] in
  let attrs = [
    "dtype", `type_ (Op.Tensor_handle.data_type gradient_values);
    "has_known_shape", `bool has_known_shape;
  ]
  in
  Op.create context Op_names.sparseAccumulatorApplyGradient inputs attrs
  |> fun op -> Op.execute0 op

let sparseAccumulatorTakeGradient
    ~type_dtype
    (handle : [ `string ] t)
    (num_required : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P num_required] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
  ]
  in
  Op.create context Op_names.sparseAccumulatorTakeGradient inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    type_dtype
    Type.Int64

let sparseAdd
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (b_shape : [ `int64 ] t)
    (thresh : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 'treal) t)
  =
  let inputs = [Op.Tensor_handle.P a_indices; Op.Tensor_handle.P a_values; Op.Tensor_handle.P a_shape; Op.Tensor_handle.P b_indices; Op.Tensor_handle.P b_values; Op.Tensor_handle.P b_shape; Op.Tensor_handle.P thresh] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a_values);
    "Treal", `type_ (Op.Tensor_handle.data_type thresh);
  ]
  in
  Op.create context Op_names.sparseAdd inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ a_values)
    Type.Int64

let sparseAddGrad
    (backprop_val_grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_indices : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (sum_indices : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P backprop_val_grad; Op.Tensor_handle.P a_indices; Op.Tensor_handle.P b_indices; Op.Tensor_handle.P sum_indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type backprop_val_grad);
  ]
  in
  Op.create context Op_names.sparseAddGrad inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ backprop_val_grad)
    (Op.Tensor_handle.type_ backprop_val_grad)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P accum_update; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyAdadelta inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let sparseApplyAdagrad
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (accum : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (lr : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyAdagrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P gradient_accumulator; Op.Tensor_handle.P gradient_squared_accumulator; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P global_step] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyAdagradDA inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P mg; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyCenteredRMSProp inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyFtrl inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P linear; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P l2_shrinkage; Op.Tensor_handle.P lr_power] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyFtrlV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P momentum] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
    "use_nesterov", `bool use_nesterov;
  ]
  in
  Op.create context Op_names.sparseApplyMomentum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P accum; Op.Tensor_handle.P lr; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyProximalAdagrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let sparseApplyProximalGradientDescent
    ?(use_locking=false)
    (var : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (alpha : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l1 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (l2 : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (grad : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tindices) t)
  =
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P alpha; Op.Tensor_handle.P l1; Op.Tensor_handle.P l2; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyProximalGradientDescent inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

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
  let inputs = [Op.Tensor_handle.P var; Op.Tensor_handle.P ms; Op.Tensor_handle.P mom; Op.Tensor_handle.P lr; Op.Tensor_handle.P rho; Op.Tensor_handle.P momentum; Op.Tensor_handle.P epsilon; Op.Tensor_handle.P grad; Op.Tensor_handle.P indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type var);
    "Tindices", `type_ (Op.Tensor_handle.data_type indices);
    "use_locking", `bool use_locking;
  ]
  in
  Op.create context Op_names.sparseApplyRMSProp inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ var)

let sparseConcat
    ~concat_dim
    (indices : [ `int64 ] t list)
    (values : 't t list)
    (shapes : [ `int64 ] t list)
  =
  let inputs = List.map indices ~f:(fun x -> Op.Tensor_handle.P x)@List.map values ~f:(fun x -> Op.Tensor_handle.P x)@List.map shapes ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type (List.hd_exn values));
    "concat_dim", `int concat_dim;
    "N", `int (List.length indices);
  ]
  in
  Op.create context Op_names.sparseConcat inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ (List.hd_exn values))
    Type.Int64

let sparseConditionalAccumulator
    ~shape
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "shape", `shape shape;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.sparseConditionalAccumulator inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let sparseDenseCwiseAdd
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P sp_indices; Op.Tensor_handle.P sp_values; Op.Tensor_handle.P sp_shape; Op.Tensor_handle.P dense] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sp_values);
  ]
  in
  Op.create context Op_names.sparseDenseCwiseAdd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ sp_values)

let sparseDenseCwiseDiv
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P sp_indices; Op.Tensor_handle.P sp_values; Op.Tensor_handle.P sp_shape; Op.Tensor_handle.P dense] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sp_values);
  ]
  in
  Op.create context Op_names.sparseDenseCwiseDiv inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ sp_values)

let sparseDenseCwiseMul
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (sp_shape : [ `int64 ] t)
    (dense : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P sp_indices; Op.Tensor_handle.P sp_values; Op.Tensor_handle.P sp_shape; Op.Tensor_handle.P dense] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sp_values);
  ]
  in
  Op.create context Op_names.sparseDenseCwiseMul inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ sp_values)

let sparseFillEmptyRows
    (indices : [ `int64 ] t)
    (values : 't t)
    (dense_shape : [ `int64 ] t)
    (default_value : 't t)
  =
  let inputs = [Op.Tensor_handle.P indices; Op.Tensor_handle.P values; Op.Tensor_handle.P dense_shape; Op.Tensor_handle.P default_value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.sparseFillEmptyRows inputs attrs
  |> fun op -> Op.execute4 op
    Type.Int64
    (Op.Tensor_handle.type_ values)
    Type.Bool
    Type.Int64

let sparseFillEmptyRowsGrad
    (reverse_index_map : [ `int64 ] t)
    (grad_values : 't t)
  =
  let inputs = [Op.Tensor_handle.P reverse_index_map; Op.Tensor_handle.P grad_values] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad_values);
  ]
  in
  Op.create context Op_names.sparseFillEmptyRowsGrad inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ grad_values)
    (Op.Tensor_handle.type_ grad_values)

let sparseMatMul
    ?(transpose_a=false)
    ?(transpose_b=false)
    ?(a_is_sparse=false)
    ?(b_is_sparse=false)
    (a : ([< `float ] as 'ta) t)
    (b : ([< `float ] as 'tb) t)
  =
  let inputs = [Op.Tensor_handle.P a; Op.Tensor_handle.P b] in
  let attrs = [
    "Ta", `type_ (Op.Tensor_handle.data_type a);
    "Tb", `type_ (Op.Tensor_handle.data_type b);
    "transpose_a", `bool transpose_a;
    "transpose_b", `bool transpose_b;
    "a_is_sparse", `bool a_is_sparse;
    "b_is_sparse", `bool b_is_sparse;
  ]
  in
  Op.create context Op_names.sparseMatMul inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let sparseReduceMax
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_indices; Op.Tensor_handle.P input_values; Op.Tensor_handle.P input_shape; Op.Tensor_handle.P reduction_axes] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input_values);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.sparseReduceMax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input_values)

let sparseReduceMaxSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_indices; Op.Tensor_handle.P input_values; Op.Tensor_handle.P input_shape; Op.Tensor_handle.P reduction_axes] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input_values);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.sparseReduceMaxSparse inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ input_values)
    Type.Int64

let sparseReduceSum
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_indices; Op.Tensor_handle.P input_values; Op.Tensor_handle.P input_shape; Op.Tensor_handle.P reduction_axes] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input_values);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.sparseReduceSum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input_values)

let sparseReduceSumSparse
    ?(keep_dims=false)
    (input_indices : [ `int64 ] t)
    (input_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (input_shape : [ `int64 ] t)
    (reduction_axes : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_indices; Op.Tensor_handle.P input_values; Op.Tensor_handle.P input_shape; Op.Tensor_handle.P reduction_axes] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input_values);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.sparseReduceSumSparse inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ input_values)
    Type.Int64

let sparseReorder
    (input_indices : [ `int64 ] t)
    (input_values : 't t)
    (input_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_indices; Op.Tensor_handle.P input_values; Op.Tensor_handle.P input_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input_values);
  ]
  in
  Op.create context Op_names.sparseReorder inputs attrs
  |> fun op -> Op.execute2 op
    Type.Int64
    (Op.Tensor_handle.type_ input_values)

let sparseReshape
    (input_indices : [ `int64 ] t)
    (input_shape : [ `int64 ] t)
    (new_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_indices; Op.Tensor_handle.P input_shape; Op.Tensor_handle.P new_shape] in
  let attrs = [
  ]
  in
  Op.create context Op_names.sparseReshape inputs attrs
  |> fun op -> Op.execute2 op
    Type.Int64
    Type.Int64

let sparseSegmentMean
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P indices; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tidx", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.sparseSegmentMean inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let sparseSegmentMeanGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P segment_ids; Op.Tensor_handle.P output_dim0] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "Tidx", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.sparseSegmentMeanGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ grad)

let sparseSegmentSqrtN
    (data : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P indices; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tidx", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.sparseSegmentSqrtN inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let sparseSegmentSqrtNGrad
    (grad : ([< `float | `double ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
    (output_dim0 : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P grad; Op.Tensor_handle.P indices; Op.Tensor_handle.P segment_ids; Op.Tensor_handle.P output_dim0] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type grad);
    "Tidx", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.sparseSegmentSqrtNGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ grad)

let sparseSegmentSum
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (indices : ([< `int32 | `int64 ] as 'tidx) t)
    (segment_ids : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P indices; Op.Tensor_handle.P segment_ids] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tidx", `type_ (Op.Tensor_handle.data_type indices);
  ]
  in
  Op.create context Op_names.sparseSegmentSum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let sparseSlice
    (indices : [ `int64 ] t)
    (values : 't t)
    (shape : [ `int64 ] t)
    (start : [ `int64 ] t)
    (size : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P indices; Op.Tensor_handle.P values; Op.Tensor_handle.P shape; Op.Tensor_handle.P start; Op.Tensor_handle.P size] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.sparseSlice inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ values)
    Type.Int64

let sparseSoftmax
    (sp_indices : [ `int64 ] t)
    (sp_values : ([< `float | `double ] as 't) t)
    (sp_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P sp_indices; Op.Tensor_handle.P sp_values; Op.Tensor_handle.P sp_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sp_values);
  ]
  in
  Op.create context Op_names.sparseSoftmax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ sp_values)

let sparseSoftmaxCrossEntropyWithLogits
    (features : ([< `float | `double ] as 't) t)
    (labels : ([< `int32 | `int64 ] as 'tlabels) t)
  =
  let inputs = [Op.Tensor_handle.P features; Op.Tensor_handle.P labels] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type features);
    "Tlabels", `type_ (Op.Tensor_handle.data_type labels);
  ]
  in
  Op.create context Op_names.sparseSoftmaxCrossEntropyWithLogits inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ features)
    (Op.Tensor_handle.type_ features)

let sparseSparseMaximum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P a_indices; Op.Tensor_handle.P a_values; Op.Tensor_handle.P a_shape; Op.Tensor_handle.P b_indices; Op.Tensor_handle.P b_values; Op.Tensor_handle.P b_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a_values);
  ]
  in
  Op.create context Op_names.sparseSparseMaximum inputs attrs
  |> fun op -> Op.execute2 op
    Type.Int64
    (Op.Tensor_handle.type_ a_values)

let sparseSparseMinimum
    (a_indices : [ `int64 ] t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : [ `int64 ] t)
    (b_indices : [ `int64 ] t)
    (b_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (b_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P a_indices; Op.Tensor_handle.P a_values; Op.Tensor_handle.P a_shape; Op.Tensor_handle.P b_indices; Op.Tensor_handle.P b_values; Op.Tensor_handle.P b_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a_values);
  ]
  in
  Op.create context Op_names.sparseSparseMinimum inputs attrs
  |> fun op -> Op.execute2 op
    Type.Int64
    (Op.Tensor_handle.type_ a_values)

let sparseTensorDenseAdd
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (a_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (b : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P a_indices; Op.Tensor_handle.P a_values; Op.Tensor_handle.P a_shape; Op.Tensor_handle.P b] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a_values);
    "Tindices", `type_ (Op.Tensor_handle.data_type a_indices);
  ]
  in
  Op.create context Op_names.sparseTensorDenseAdd inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a_values)

let sparseTensorDenseMatMul
    ?(adjoint_a=false)
    ?(adjoint_b=false)
    (a_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (a_values : 't t)
    (a_shape : [ `int64 ] t)
    (b : 't t)
  =
  let inputs = [Op.Tensor_handle.P a_indices; Op.Tensor_handle.P a_values; Op.Tensor_handle.P a_shape; Op.Tensor_handle.P b] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type a_values);
    "Tindices", `type_ (Op.Tensor_handle.data_type a_indices);
    "adjoint_a", `bool adjoint_a;
    "adjoint_b", `bool adjoint_b;
  ]
  in
  Op.create context Op_names.sparseTensorDenseMatMul inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ a_values)

let sparseTensorSliceDataset
    (indices : [ `int64 ] t)
    (values : 'tvalues t)
    (dense_shape : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P indices; Op.Tensor_handle.P values; Op.Tensor_handle.P dense_shape] in
  let attrs = [
    "Tvalues", `type_ (Op.Tensor_handle.data_type values);
  ]
  in
  Op.create context Op_names.sparseTensorSliceDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let sparseToDense
    ?(validate_indices=true)
    (sparse_indices : ([< `int32 | `int64 ] as 'tindices) t)
    (output_shape : ([< `int32 | `int64 ] as 'tindices) t)
    (sparse_values : 't t)
    (default_value : 't t)
  =
  let inputs = [Op.Tensor_handle.P sparse_indices; Op.Tensor_handle.P output_shape; Op.Tensor_handle.P sparse_values; Op.Tensor_handle.P default_value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type sparse_values);
    "Tindices", `type_ (Op.Tensor_handle.data_type sparse_indices);
    "validate_indices", `bool validate_indices;
  ]
  in
  Op.create context Op_names.sparseToDense inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ sparse_values)

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
  let inputs = [Op.Tensor_handle.P set1_indices; Op.Tensor_handle.P set1_values; Op.Tensor_handle.P set1_shape; Op.Tensor_handle.P set2_indices; Op.Tensor_handle.P set2_values; Op.Tensor_handle.P set2_shape] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type set1_values);
    "set_operation", `string set_operation;
    "validate_indices", `bool validate_indices;
  ]
  in
  Op.create context Op_names.sparseToSparseSetOperation inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    (Op.Tensor_handle.type_ set1_values)
    Type.Int64

let split
    ~num_split
    (split_dim : [ `int32 ] t)
    (value : 't t)
  =
  let inputs = [Op.Tensor_handle.P split_dim; Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "num_split", `int num_split;
  ]
  in
  Op.create context Op_names.split inputs attrs
  |> fun op -> Op.execute op (Op.Tensor_handle.type_ value) ~output_len:num_split

let splitV
    ~num_split
    (value : 't t)
    (size_splits : ([< `int32 | `int64 ] as 'tlen) t)
    (split_dim : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P value; Op.Tensor_handle.P size_splits; Op.Tensor_handle.P split_dim] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "Tlen", `type_ (Op.Tensor_handle.data_type size_splits);
    "num_split", `int num_split;
  ]
  in
  Op.create context Op_names.splitV inputs attrs
  |> fun op -> Op.execute op (Op.Tensor_handle.type_ value) ~output_len:num_split

let sqlDataset
    ~output_types
    ~output_shapes
    (driver_name : [ `string ] t)
    (data_source_name : [ `string ] t)
    (query : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P driver_name; Op.Tensor_handle.P data_source_name; Op.Tensor_handle.P query] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.sqlDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let sqrt
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.sqrt inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let sqrtGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P y; Op.Tensor_handle.P dy] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.sqrtGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ y)

let square
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.square inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let squaredDifference
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.squaredDifference inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let squeeze
    ?(squeeze_dims=[])
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "squeeze_dims", `list_int squeeze_dims;
  ]
  in
  Op.create context Op_names.squeeze inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let stack
    ?(stack_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "stack_name", `string stack_name;
  ]
  in
  Op.create context Op_names.stack inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let stackClose
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.stackClose inputs attrs
  |> fun op -> Op.execute0 op

let stackCloseV2
    (handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.stackCloseV2 inputs attrs
  |> fun op -> Op.execute0 op

let stackPop
    ~type_elem_type
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
    "elem_type", `type_ Operation.Type.(to_data_type (P type_elem_type));
  ]
  in
  Op.create context Op_names.stackPop inputs attrs
  |> fun op -> Op.execute1 op
    type_elem_type

let stackPopV2
    ~type_elem_type
    (handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
    "elem_type", `type_ Operation.Type.(to_data_type (P type_elem_type));
  ]
  in
  Op.create context Op_names.stackPopV2 inputs attrs
  |> fun op -> Op.execute1 op
    type_elem_type

let stackPush
    ?(swap_memory=false)
    (handle : [ `string ] t)
    (elem : 't t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P elem] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type elem);
    "swap_memory", `bool swap_memory;
  ]
  in
  Op.create context Op_names.stackPush inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ elem)

let stackPushV2
    ?(swap_memory=false)
    (handle : [ `resource ] t)
    (elem : 't t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P elem] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type elem);
    "swap_memory", `bool swap_memory;
  ]
  in
  Op.create context Op_names.stackPushV2 inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ elem)

let stackV2
    ?(stack_name="")
    (max_size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P max_size] in
  let attrs = [
    "stack_name", `string stack_name;
  ]
  in
  Op.create context Op_names.stackV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let stageClear
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.stageClear inputs attrs
  |> fun op -> Op.execute0 op

let stageSize
    ?(capacity=0)
    ?(memory_limit=0)
    ~dtypes
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "capacity", `int capacity;
    "memory_limit", `int memory_limit;
    "dtypes", `list_type_p dtypes;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.stageSize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let statelessRandomNormal
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P seed] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "T", `type_ (Op.Tensor_handle.data_type shape);
  ]
  in
  Op.create context Op_names.statelessRandomNormal inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let statelessRandomUniform
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P seed] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "T", `type_ (Op.Tensor_handle.data_type shape);
  ]
  in
  Op.create context Op_names.statelessRandomUniform inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let statelessTruncatedNormal
    ~type_dtype
    (shape : ([< `int32 | `int64 ] as 't) t)
    (seed : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P seed] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "T", `type_ (Op.Tensor_handle.data_type shape);
  ]
  in
  Op.create context Op_names.statelessTruncatedNormal inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let stopGradient
    (input : 't t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.stopGradient inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

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
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P begin__; Op.Tensor_handle.P end__; Op.Tensor_handle.P strides] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Index", `type_ (Op.Tensor_handle.data_type begin__);
    "begin_mask", `int begin_mask;
    "end_mask", `int end_mask;
    "ellipsis_mask", `int ellipsis_mask;
    "new_axis_mask", `int new_axis_mask;
    "shrink_axis_mask", `int shrink_axis_mask;
  ]
  in
  Op.create context Op_names.stridedSlice inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

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
  let inputs = [Op.Tensor_handle.P ref; Op.Tensor_handle.P begin__; Op.Tensor_handle.P end__; Op.Tensor_handle.P strides; Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type ref);
    "Index", `type_ (Op.Tensor_handle.data_type begin__);
    "begin_mask", `int begin_mask;
    "end_mask", `int end_mask;
    "ellipsis_mask", `int ellipsis_mask;
    "new_axis_mask", `int new_axis_mask;
    "shrink_axis_mask", `int shrink_axis_mask;
  ]
  in
  Op.create context Op_names.stridedSliceAssign inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ ref)

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
  let inputs = [Op.Tensor_handle.P shape; Op.Tensor_handle.P begin__; Op.Tensor_handle.P end__; Op.Tensor_handle.P strides; Op.Tensor_handle.P dy] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type dy);
    "Index", `type_ (Op.Tensor_handle.data_type shape);
    "begin_mask", `int begin_mask;
    "end_mask", `int end_mask;
    "ellipsis_mask", `int ellipsis_mask;
    "new_axis_mask", `int new_axis_mask;
    "shrink_axis_mask", `int shrink_axis_mask;
  ]
  in
  Op.create context Op_names.stridedSliceGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ dy)

let stringJoin
    ?(separator="")
    (inputs__ : [ `string ] t list)
  =
  let inputs = List.map inputs__ ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "N", `int (List.length inputs__);
    "separator", `string separator;
  ]
  in
  Op.create context Op_names.stringJoin inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let stringSplit
    ?(skip_empty=true)
    (input : [ `string ] t)
    (delimiter : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P delimiter] in
  let attrs = [
    "skip_empty", `bool skip_empty;
  ]
  in
  Op.create context Op_names.stringSplit inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    Type.String
    Type.Int64

let stringToHashBucket
    ~num_buckets
    (string_tensor : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P string_tensor] in
  let attrs = [
    "num_buckets", `int num_buckets;
  ]
  in
  Op.create context Op_names.stringToHashBucket inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let stringToHashBucketFast
    ~num_buckets
    (input : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "num_buckets", `int num_buckets;
  ]
  in
  Op.create context Op_names.stringToHashBucketFast inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let stringToHashBucketStrong
    ~num_buckets
    ~key
    (input : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "num_buckets", `int num_buckets;
    "key", `list_int key;
  ]
  in
  Op.create context Op_names.stringToHashBucketStrong inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let stringToNumber
    ~type_out_type
    (string_tensor : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P string_tensor] in
  let attrs = [
    "out_type", `type_ Operation.Type.(to_data_type (P type_out_type));
  ]
  in
  Op.create context Op_names.stringToNumber inputs attrs
  |> fun op -> Op.execute1 op
    type_out_type

let sub
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.sub inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let substr
    (input : [ `string ] t)
    (pos : ([< `int32 | `int64 ] as 't) t)
    (len : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P pos; Op.Tensor_handle.P len] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type pos);
  ]
  in
  Op.create context Op_names.substr inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let sum
    ?(keep_dims=false)
    (input : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (reduction_indices : ([< `int32 | `int64 ] as 'tidx) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P reduction_indices] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tidx", `type_ (Op.Tensor_handle.data_type reduction_indices);
    "keep_dims", `bool keep_dims;
  ]
  in
  Op.create context Op_names.sum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let svd
    ?(compute_uv=true)
    ?(full_matrices=false)
    (input : ([< `double | `float | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "compute_uv", `bool compute_uv;
    "full_matrices", `bool full_matrices;
  ]
  in
  Op.create context Op_names.svd inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)
    (Op.Tensor_handle.type_ input)

let switch
    (data : 't t)
    (pred : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P pred] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
  ]
  in
  Op.create context Op_names.switch inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ data)
    (Op.Tensor_handle.type_ data)

let tFRecordDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P filenames; Op.Tensor_handle.P compression_type; Op.Tensor_handle.P buffer_size] in
  let attrs = [
  ]
  in
  Op.create context Op_names.tFRecordDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let tFRecordReader
    ?(container="")
    ?(shared_name="")
    ?(compression_type="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "compression_type", `string compression_type;
  ]
  in
  Op.create context Op_names.tFRecordReader inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let tFRecordReaderV2
    ?(container="")
    ?(shared_name="")
    ?(compression_type="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
    "compression_type", `string compression_type;
  ]
  in
  Op.create context Op_names.tFRecordReaderV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let takeDataset
    ~output_types
    ~output_shapes
    (input_dataset : [ `variant ] t)
    (count : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P input_dataset; Op.Tensor_handle.P count] in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
  ]
  in
  Op.create context Op_names.takeDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let takeManySparseFromTensorsMap
    ~type_dtype
    ?(container="")
    ?(shared_name="")
    (sparse_handles : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P sparse_handles] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.takeManySparseFromTensorsMap inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    type_dtype
    Type.Int64

let tan
    (x : ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.tan inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let tanh
    (x : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.tanh inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let tanhGrad
    (y : ([< `float | `double | `complex64 ] as 't) t)
    (dy : ([< `float | `double | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P y; Op.Tensor_handle.P dy] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type y);
  ]
  in
  Op.create context Op_names.tanhGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ y)

let temporaryVariable
    ~type_dtype
    ~shape
    ?(var_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "shape", `shape shape;
    "var_name", `string var_name;
  ]
  in
  Op.create context Op_names.temporaryVariable inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArray
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    ?(element_shape=[])
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P size] in
  let attrs = [
    "dynamic_size", `bool dynamic_size;
    "clear_after_read", `bool clear_after_read;
    "tensor_array_name", `string tensor_array_name;
    "element_shape", `shape element_shape;
  ]
  in
  Op.create context Op_names.tensorArray inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let tensorArrayClose
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.tensorArrayClose inputs attrs
  |> fun op -> Op.execute0 op

let tensorArrayCloseV2
    (handle : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.tensorArrayCloseV2 inputs attrs
  |> fun op -> Op.execute0 op

let tensorArrayCloseV3
    (handle : [ `resource ] t)
  =
  let inputs = [Op.Tensor_handle.P handle] in
  let attrs = [
  ]
  in
  Op.create context Op_names.tensorArrayCloseV3 inputs attrs
  |> fun op -> Op.execute0 op

let tensorArrayConcat
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "element_shape_except0", `shape element_shape_except0;
  ]
  in
  Op.create context Op_names.tensorArrayConcat inputs attrs
  |> fun op -> Op.execute2 op
    type_dtype
    Type.Int64

let tensorArrayConcatV2
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "element_shape_except0", `shape element_shape_except0;
  ]
  in
  Op.create context Op_names.tensorArrayConcatV2 inputs attrs
  |> fun op -> Op.execute2 op
    type_dtype
    Type.Int64

let tensorArrayConcatV3
    ~type_dtype
    ?(element_shape_except0=[])
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "element_shape_except0", `shape element_shape_except0;
  ]
  in
  Op.create context Op_names.tensorArrayConcatV3 inputs attrs
  |> fun op -> Op.execute2 op
    type_dtype
    Type.Int64

let tensorArrayGather
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P indices; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "element_shape", `shape element_shape;
  ]
  in
  Op.create context Op_names.tensorArrayGather inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArrayGatherV2
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P indices; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "element_shape", `shape element_shape;
  ]
  in
  Op.create context Op_names.tensorArrayGatherV2 inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArrayGatherV3
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `resource ] t)
    (indices : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P indices; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "element_shape", `shape element_shape;
  ]
  in
  Op.create context Op_names.tensorArrayGatherV3 inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArrayGrad
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "source", `string source;
  ]
  in
  Op.create context Op_names.tensorArrayGrad inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let tensorArrayGradV2
    ~source
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "source", `string source;
  ]
  in
  Op.create context Op_names.tensorArrayGradV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let tensorArrayGradV3
    ~source
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "source", `string source;
  ]
  in
  Op.create context Op_names.tensorArrayGradV3 inputs attrs
  |> fun op -> Op.execute2 op
    Type.Resource
    Type.Float

let tensorArrayPack
    ~type_dtype
    ?(element_shape=[])
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "element_shape", `shape element_shape;
  ]
  in
  Op.create context Op_names.tensorArrayPack inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArrayRead
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P index; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
  ]
  in
  Op.create context Op_names.tensorArrayRead inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArrayReadV2
    ~type_dtype
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P index; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
  ]
  in
  Op.create context Op_names.tensorArrayReadV2 inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArrayReadV3
    ~type_dtype
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P index; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
  ]
  in
  Op.create context Op_names.tensorArrayReadV3 inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let tensorArrayScatter
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P indices; Op.Tensor_handle.P value; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArrayScatter inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArrayScatterV2
    (handle : [ `string ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P indices; Op.Tensor_handle.P value; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArrayScatterV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArrayScatterV3
    (handle : [ `resource ] t)
    (indices : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P indices; Op.Tensor_handle.P value; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArrayScatterV3 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArraySize
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
  ]
  in
  Op.create context Op_names.tensorArraySize inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let tensorArraySizeV2
    (handle : [ `string ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
  ]
  in
  Op.create context Op_names.tensorArraySizeV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let tensorArraySizeV3
    (handle : [ `resource ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P flow_in] in
  let attrs = [
  ]
  in
  Op.create context Op_names.tensorArraySizeV3 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int32

let tensorArraySplit
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P value; Op.Tensor_handle.P lengths; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArraySplit inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArraySplitV2
    (handle : [ `string ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P value; Op.Tensor_handle.P lengths; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArraySplitV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArraySplitV3
    (handle : [ `resource ] t)
    (value : 't t)
    (lengths : [ `int64 ] t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P value; Op.Tensor_handle.P lengths; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArraySplitV3 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArrayUnpack
    (handle : [ `string ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P value; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArrayUnpack inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArrayV2
    ?(element_shape=[])
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P size] in
  let attrs = [
    "element_shape", `shape element_shape;
    "dynamic_size", `bool dynamic_size;
    "clear_after_read", `bool clear_after_read;
    "tensor_array_name", `string tensor_array_name;
  ]
  in
  Op.create context Op_names.tensorArrayV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let tensorArrayV3
    ?(element_shape=[])
    ?(dynamic_size=false)
    ?(clear_after_read=true)
    ?(tensor_array_name="")
    (size : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P size] in
  let attrs = [
    "element_shape", `shape element_shape;
    "dynamic_size", `bool dynamic_size;
    "clear_after_read", `bool clear_after_read;
    "tensor_array_name", `string tensor_array_name;
  ]
  in
  Op.create context Op_names.tensorArrayV3 inputs attrs
  |> fun op -> Op.execute2 op
    Type.Resource
    Type.Float

let tensorArrayWrite
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P index; Op.Tensor_handle.P value; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArrayWrite inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArrayWriteV2
    (handle : [ `string ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P index; Op.Tensor_handle.P value; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArrayWriteV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorArrayWriteV3
    (handle : [ `resource ] t)
    (index : [ `int32 ] t)
    (value : 't t)
    (flow_in : [ `float ] t)
  =
  let inputs = [Op.Tensor_handle.P handle; Op.Tensor_handle.P index; Op.Tensor_handle.P value; Op.Tensor_handle.P flow_in] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
  ]
  in
  Op.create context Op_names.tensorArrayWriteV3 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Float

let tensorSummary
    ?(description="")
    ?(display_name="")
    (tensor : 't t)
  =
  let inputs = [Op.Tensor_handle.P tensor] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
    "description", `string description;
    "display_name", `string display_name;
  ]
  in
  Op.create context Op_names.tensorSummary inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let tensorSummaryV2
    (tag : [ `string ] t)
    (tensor : 't t)
    (serialized_summary_metadata : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P tag; Op.Tensor_handle.P tensor; Op.Tensor_handle.P serialized_summary_metadata] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type tensor);
  ]
  in
  Op.create context Op_names.tensorSummaryV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let textLineDataset
    (filenames : [ `string ] t)
    (compression_type : [ `string ] t)
    (buffer_size : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P filenames; Op.Tensor_handle.P compression_type; Op.Tensor_handle.P buffer_size] in
  let attrs = [
  ]
  in
  Op.create context Op_names.textLineDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

let textLineReader
    ?(skip_header_lines=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "skip_header_lines", `int skip_header_lines;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.textLineReader inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let textLineReaderV2
    ?(skip_header_lines=0)
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "skip_header_lines", `int skip_header_lines;
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.textLineReaderV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let threadUnsafeUnigramCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P true_classes] in
  let attrs = [
    "num_true", `int num_true;
    "num_sampled", `int num_sampled;
    "unique", `bool unique;
    "range_max", `int range_max;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.threadUnsafeUnigramCandidateSampler inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    Type.Float
    Type.Float

let tile
    (input : 't t)
    (multiples : ([< `int32 | `int64 ] as 'tmultiples) t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P multiples] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "Tmultiples", `type_ (Op.Tensor_handle.data_type multiples);
  ]
  in
  Op.create context Op_names.tile inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let tileGrad
    (input : 't t)
    (multiples : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P multiples] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
  ]
  in
  Op.create context Op_names.tileGrad inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ input)

let topK
    ~k
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "k", `int k;
    "sorted", `bool sorted;
  ]
  in
  Op.create context Op_names.topK inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ input)
    Type.Int32

let topKV2
    ?(sorted=true)
    (input : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (k : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P input; Op.Tensor_handle.P k] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type input);
    "sorted", `bool sorted;
  ]
  in
  Op.create context Op_names.topKV2 inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ input)
    Type.Int32

let transpose
    (x : 't t)
    (perm : ([< `int32 | `int64 ] as 'tperm) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P perm] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "Tperm", `type_ (Op.Tensor_handle.data_type perm);
  ]
  in
  Op.create context Op_names.transpose inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let truncateDiv
    (x : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
    (y : ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.truncateDiv inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let truncateMod
    (x : ([< `int32 | `int64 | `float | `double ] as 't) t)
    (y : ([< `int32 | `int64 | `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P y] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.truncateMod inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let truncatedNormal
    ~type_dtype
    ?(seed=0)
    ?(seed2=0)
    (shape : ([< `int32 | `int64 ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P shape] in
  let attrs = [
    "dtype", `type_ Operation.Type.(to_data_type (P type_dtype));
    "T", `type_ (Op.Tensor_handle.data_type shape);
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.truncatedNormal inputs attrs
  |> fun op -> Op.execute1 op
    type_dtype

let uniformCandidateSampler
    ~num_true
    ~num_sampled
    ~unique
    ~range_max
    ?(seed=0)
    ?(seed2=0)
    (true_classes : [ `int64 ] t)
  =
  let inputs = [Op.Tensor_handle.P true_classes] in
  let attrs = [
    "num_true", `int num_true;
    "num_sampled", `int num_sampled;
    "unique", `bool unique;
    "range_max", `int range_max;
    "seed", `int seed;
    "seed2", `int seed2;
  ]
  in
  Op.create context Op_names.uniformCandidateSampler inputs attrs
  |> fun op -> Op.execute3 op
    Type.Int64
    Type.Float
    Type.Float

let unique
    ~type_out_idx
    (x : 't t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "out_idx", `type_ Operation.Type.(to_data_type (P type_out_idx));
  ]
  in
  Op.create context Op_names.unique inputs attrs
  |> fun op -> Op.execute2 op
    (Op.Tensor_handle.type_ x)
    type_out_idx

let uniqueWithCounts
    ~type_out_idx
    (x : 't t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
    "out_idx", `type_ Operation.Type.(to_data_type (P type_out_idx));
  ]
  in
  Op.create context Op_names.uniqueWithCounts inputs attrs
  |> fun op -> Op.execute3 op
    (Op.Tensor_handle.type_ x)
    type_out_idx
    type_out_idx

let unpack
    ~num
    ?(axis=0)
    (value : 't t)
  =
  let inputs = [Op.Tensor_handle.P value] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type value);
    "num", `int num;
    "axis", `int axis;
  ]
  in
  Op.create context Op_names.unpack inputs attrs
  |> fun op -> Op.execute op (Op.Tensor_handle.type_ value) ~output_len:num

let unsortedSegmentMax
    (data : ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P segment_ids; Op.Tensor_handle.P num_segments] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tindices", `type_ (Op.Tensor_handle.data_type segment_ids);
  ]
  in
  Op.create context Op_names.unsortedSegmentMax inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let unsortedSegmentSum
    (data : ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t)
    (segment_ids : ([< `int32 | `int64 ] as 'tindices) t)
    (num_segments : [ `int32 ] t)
  =
  let inputs = [Op.Tensor_handle.P data; Op.Tensor_handle.P segment_ids; Op.Tensor_handle.P num_segments] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type data);
    "Tindices", `type_ (Op.Tensor_handle.data_type segment_ids);
  ]
  in
  Op.create context Op_names.unsortedSegmentSum inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ data)

let where
    (input : [ `bool ] t)
  =
  let inputs = [Op.Tensor_handle.P input] in
  let attrs = [
  ]
  in
  Op.create context Op_names.where inputs attrs
  |> fun op -> Op.execute1 op
    Type.Int64

let wholeFileReader
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.wholeFileReader inputs attrs
  |> fun op -> Op.execute1 op
    Type.String

let wholeFileReaderV2
    ?(container="")
    ?(shared_name="")
    ()
  =
  let inputs = [] in
  let attrs = [
    "container", `string container;
    "shared_name", `string shared_name;
  ]
  in
  Op.create context Op_names.wholeFileReaderV2 inputs attrs
  |> fun op -> Op.execute1 op
    Type.Resource

let writeFile
    (filename : [ `string ] t)
    (contents : [ `string ] t)
  =
  let inputs = [Op.Tensor_handle.P filename; Op.Tensor_handle.P contents] in
  let attrs = [
  ]
  in
  Op.create context Op_names.writeFile inputs attrs
  |> fun op -> Op.execute0 op

let zerosLike
    (x : 't t)
  =
  let inputs = [Op.Tensor_handle.P x] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.zerosLike inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let zeta
    (x : ([< `float | `double ] as 't) t)
    (q : ([< `float | `double ] as 't) t)
  =
  let inputs = [Op.Tensor_handle.P x; Op.Tensor_handle.P q] in
  let attrs = [
    "T", `type_ (Op.Tensor_handle.data_type x);
  ]
  in
  Op.create context Op_names.zeta inputs attrs
  |> fun op -> Op.execute1 op
    (Op.Tensor_handle.type_ x)

let zipDataset
    ~output_types
    ~output_shapes
    (input_datasets : [ `variant ] t list)
  =
  let inputs = List.map input_datasets ~f:(fun x -> Op.Tensor_handle.P x) in
  let attrs = [
    "output_types", `list_type_p output_types;
    "output_shapes", `list_shape output_shapes;
    "N", `int (List.length input_datasets);
  ]
  in
  Op.create context Op_names.zipDataset inputs attrs
  |> fun op -> Op.execute1 op
    Type.Variant

