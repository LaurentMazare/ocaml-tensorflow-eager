(* THIS FILE HAS BEEN AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND! *)

open Tf_core

type 'a t = 'a Op.Tensor_handle.t
module Dim = Operation.Dim
module Type = Operation.Type

module Op_names : sig
  val abort : Op.Name.t
  val abs : Op.Name.t
  val accumulateNV2 : Op.Name.t
  val accumulatorApplyGradient : Op.Name.t
  val accumulatorNumAccumulated : Op.Name.t
  val accumulatorSetGlobalStep : Op.Name.t
  val accumulatorTakeGradient : Op.Name.t
  val acos : Op.Name.t
  val acosh : Op.Name.t
  val add : Op.Name.t
  val addManySparseToTensorsMap : Op.Name.t
  val addN : Op.Name.t
  val addSparseToTensorsMap : Op.Name.t
  val addV2 : Op.Name.t
  val adjustContrast : Op.Name.t
  val adjustContrastv2 : Op.Name.t
  val adjustHue : Op.Name.t
  val adjustSaturation : Op.Name.t
  val all : Op.Name.t
  val allCandidateSampler : Op.Name.t
  val angle : Op.Name.t
  val any : Op.Name.t
  val applyAdadelta : Op.Name.t
  val applyAdagrad : Op.Name.t
  val applyAdagradDA : Op.Name.t
  val applyAdam : Op.Name.t
  val applyAddSign : Op.Name.t
  val applyCenteredRMSProp : Op.Name.t
  val applyFtrl : Op.Name.t
  val applyFtrlV2 : Op.Name.t
  val applyGradientDescent : Op.Name.t
  val applyMomentum : Op.Name.t
  val applyPowerSign : Op.Name.t
  val applyProximalAdagrad : Op.Name.t
  val applyProximalGradientDescent : Op.Name.t
  val applyRMSProp : Op.Name.t
  val approximateEqual : Op.Name.t
  val argMax : Op.Name.t
  val argMin : Op.Name.t
  val asString : Op.Name.t
  val asin : Op.Name.t
  val asinh : Op.Name.t
  val assignAddVariableOp : Op.Name.t
  val assignSubVariableOp : Op.Name.t
  val assignVariableOp : Op.Name.t
  val atan : Op.Name.t
  val atan2 : Op.Name.t
  val atanh : Op.Name.t
  val audioSpectrogram : Op.Name.t
  val audioSummary : Op.Name.t
  val audioSummaryV2 : Op.Name.t
  val avgPool : Op.Name.t
  val avgPool3D : Op.Name.t
  val avgPool3DGrad : Op.Name.t
  val avgPoolGrad : Op.Name.t
  val barrier : Op.Name.t
  val barrierClose : Op.Name.t
  val barrierIncompleteSize : Op.Name.t
  val barrierInsertMany : Op.Name.t
  val barrierReadySize : Op.Name.t
  val batchCholesky : Op.Name.t
  val batchCholeskyGrad : Op.Name.t
  val batchDataset : Op.Name.t
  val batchFFT : Op.Name.t
  val batchFFT2D : Op.Name.t
  val batchFFT3D : Op.Name.t
  val batchIFFT : Op.Name.t
  val batchIFFT2D : Op.Name.t
  val batchIFFT3D : Op.Name.t
  val batchMatMul : Op.Name.t
  val batchMatrixBandPart : Op.Name.t
  val batchMatrixDeterminant : Op.Name.t
  val batchMatrixDiag : Op.Name.t
  val batchMatrixDiagPart : Op.Name.t
  val batchMatrixInverse : Op.Name.t
  val batchMatrixSetDiag : Op.Name.t
  val batchMatrixSolve : Op.Name.t
  val batchMatrixSolveLs : Op.Name.t
  val batchMatrixTriangularSolve : Op.Name.t
  val batchNormWithGlobalNormalization : Op.Name.t
  val batchNormWithGlobalNormalizationGrad : Op.Name.t
  val batchSelfAdjointEig : Op.Name.t
  val batchSelfAdjointEigV2 : Op.Name.t
  val batchSvd : Op.Name.t
  val batchToSpace : Op.Name.t
  val batchToSpaceND : Op.Name.t
  val betainc : Op.Name.t
  val biasAdd : Op.Name.t
  val biasAddGrad : Op.Name.t
  val biasAddV1 : Op.Name.t
  val bincount : Op.Name.t
  val bitcast : Op.Name.t
  val bitwiseAnd : Op.Name.t
  val bitwiseOr : Op.Name.t
  val bitwiseXor : Op.Name.t
  val broadcastArgs : Op.Name.t
  val broadcastGradientArgs : Op.Name.t
  val bucketize : Op.Name.t
  val bytesProducedStatsDataset : Op.Name.t
  val cTCGreedyDecoder : Op.Name.t
  val cTCLoss : Op.Name.t
  val cacheDataset : Op.Name.t
  val cast : Op.Name.t
  val ceil : Op.Name.t
  val checkNumerics : Op.Name.t
  val cholesky : Op.Name.t
  val choleskyGrad : Op.Name.t
  val compareAndBitpack : Op.Name.t
  val complex : Op.Name.t
  val complexAbs : Op.Name.t
  val computeAccidentalHits : Op.Name.t
  val concat : Op.Name.t
  val concatOffset : Op.Name.t
  val concatV2 : Op.Name.t
  val concatenateDataset : Op.Name.t
  val conditionalAccumulator : Op.Name.t
  val conj : Op.Name.t
  val conjugateTranspose : Op.Name.t
  val consumeMutexLock : Op.Name.t
  val controlTrigger : Op.Name.t
  val conv2D : Op.Name.t
  val conv2DBackpropFilter : Op.Name.t
  val conv2DBackpropInput : Op.Name.t
  val conv3D : Op.Name.t
  val conv3DBackpropFilter : Op.Name.t
  val conv3DBackpropFilterV2 : Op.Name.t
  val conv3DBackpropInput : Op.Name.t
  val conv3DBackpropInputV2 : Op.Name.t
  val copy : Op.Name.t
  val copyHost : Op.Name.t
  val cos : Op.Name.t
  val cosh : Op.Name.t
  val countUpTo : Op.Name.t
  val cropAndResize : Op.Name.t
  val cropAndResizeGradBoxes : Op.Name.t
  val cropAndResizeGradImage : Op.Name.t
  val cross : Op.Name.t
  val cumprod : Op.Name.t
  val cumsum : Op.Name.t
  val dataFormatDimMap : Op.Name.t
  val dataFormatVecPermute : Op.Name.t
  val debugGradientIdentity : Op.Name.t
  val debugGradientRefIdentity : Op.Name.t
  val debugIdentity : Op.Name.t
  val debugNanCount : Op.Name.t
  val debugNumericSummary : Op.Name.t
  val decodeAndCropJpeg : Op.Name.t
  val decodeBase64 : Op.Name.t
  val decodeBmp : Op.Name.t
  val decodeCompressed : Op.Name.t
  val decodeGif : Op.Name.t
  val decodeJSONExample : Op.Name.t
  val decodeJpeg : Op.Name.t
  val decodePng : Op.Name.t
  val decodeRaw : Op.Name.t
  val decodeWav : Op.Name.t
  val deleteSessionTensor : Op.Name.t
  val denseToDenseSetOperation : Op.Name.t
  val denseToSparseBatchDataset : Op.Name.t
  val denseToSparseSetOperation : Op.Name.t
  val depthToSpace : Op.Name.t
  val depthwiseConv2dNative : Op.Name.t
  val depthwiseConv2dNativeBackpropFilter : Op.Name.t
  val depthwiseConv2dNativeBackpropInput : Op.Name.t
  val dequantize : Op.Name.t
  val deserializeIterator : Op.Name.t
  val deserializeManySparse : Op.Name.t
  val deserializeSparse : Op.Name.t
  val destroyResourceOp : Op.Name.t
  val destroyTemporaryVariable : Op.Name.t
  val diag : Op.Name.t
  val diagPart : Op.Name.t
  val digamma : Op.Name.t
  val dilation2D : Op.Name.t
  val dilation2DBackpropFilter : Op.Name.t
  val dilation2DBackpropInput : Op.Name.t
  val div : Op.Name.t
  val drawBoundingBoxes : Op.Name.t
  val dynamicPartition : Op.Name.t
  val dynamicStitch : Op.Name.t
  val editDistance : Op.Name.t
  val elu : Op.Name.t
  val eluGrad : Op.Name.t
  val emptyTensorList : Op.Name.t
  val encodeBase64 : Op.Name.t
  val encodeJpeg : Op.Name.t
  val encodePng : Op.Name.t
  val encodeWav : Op.Name.t
  val enter : Op.Name.t
  val equal : Op.Name.t
  val erf : Op.Name.t
  val erfc : Op.Name.t
  val exit : Op.Name.t
  val exp : Op.Name.t
  val expandDims : Op.Name.t
  val expm1 : Op.Name.t
  val extractGlimpse : Op.Name.t
  val extractImagePatches : Op.Name.t
  val extractJpegShape : Op.Name.t
  val fFT : Op.Name.t
  val fFT2D : Op.Name.t
  val fFT3D : Op.Name.t
  val fIFOQueue : Op.Name.t
  val fIFOQueueV2 : Op.Name.t
  val fact : Op.Name.t
  val fakeQuantWithMinMaxArgs : Op.Name.t
  val fakeQuantWithMinMaxArgsGradient : Op.Name.t
  val fakeQuantWithMinMaxVars : Op.Name.t
  val fakeQuantWithMinMaxVarsGradient : Op.Name.t
  val fakeQuantWithMinMaxVarsPerChannel : Op.Name.t
  val fakeQuantWithMinMaxVarsPerChannelGradient : Op.Name.t
  val fakeQueue : Op.Name.t
  val fill : Op.Name.t
  val fixedLengthRecordDataset : Op.Name.t
  val fixedLengthRecordReader : Op.Name.t
  val fixedLengthRecordReaderV2 : Op.Name.t
  val fixedUnigramCandidateSampler : Op.Name.t
  val floor : Op.Name.t
  val floorDiv : Op.Name.t
  val floorMod : Op.Name.t
  val fractionalAvgPool : Op.Name.t
  val fractionalAvgPoolGrad : Op.Name.t
  val fractionalMaxPool : Op.Name.t
  val fractionalMaxPoolGrad : Op.Name.t
  val fusedBatchNorm : Op.Name.t
  val fusedBatchNormGrad : Op.Name.t
  val fusedBatchNormGradV2 : Op.Name.t
  val fusedBatchNormV2 : Op.Name.t
  val fusedPadConv2D : Op.Name.t
  val fusedResizeAndPadConv2D : Op.Name.t
  val gather : Op.Name.t
  val gatherNd : Op.Name.t
  val gatherV2 : Op.Name.t
  val generateVocabRemapping : Op.Name.t
  val getSessionHandle : Op.Name.t
  val getSessionHandleV2 : Op.Name.t
  val getSessionTensor : Op.Name.t
  val greater : Op.Name.t
  val greaterEqual : Op.Name.t
  val guaranteeConst : Op.Name.t
  val hSVToRGB : Op.Name.t
  val hashTable : Op.Name.t
  val hashTableV2 : Op.Name.t
  val histogramFixedWidth : Op.Name.t
  val histogramSummary : Op.Name.t
  val iFFT : Op.Name.t
  val iFFT2D : Op.Name.t
  val iFFT3D : Op.Name.t
  val iRFFT : Op.Name.t
  val iRFFT2D : Op.Name.t
  val iRFFT3D : Op.Name.t
  val identity : Op.Name.t
  val identityReader : Op.Name.t
  val identityReaderV2 : Op.Name.t
  val igamma : Op.Name.t
  val igammac : Op.Name.t
  val imag : Op.Name.t
  val imageSummary : Op.Name.t
  val immutableConst : Op.Name.t
  val inTopK : Op.Name.t
  val inTopKV2 : Op.Name.t
  val initializeTable : Op.Name.t
  val initializeTableFromTextFile : Op.Name.t
  val initializeTableFromTextFileV2 : Op.Name.t
  val initializeTableV2 : Op.Name.t
  val inv : Op.Name.t
  val invGrad : Op.Name.t
  val invert : Op.Name.t
  val invertPermutation : Op.Name.t
  val isFinite : Op.Name.t
  val isInf : Op.Name.t
  val isNan : Op.Name.t
  val isVariableInitialized : Op.Name.t
  val iterator : Op.Name.t
  val iteratorFromStringHandle : Op.Name.t
  val iteratorSetStatsAggregator : Op.Name.t
  val iteratorToStringHandle : Op.Name.t
  val l2Loss : Op.Name.t
  val lMDBReader : Op.Name.t
  val lRN : Op.Name.t
  val lRNGrad : Op.Name.t
  val latencyStatsDataset : Op.Name.t
  val learnedUnigramCandidateSampler : Op.Name.t
  val leftShift : Op.Name.t
  val less : Op.Name.t
  val lessEqual : Op.Name.t
  val lgamma : Op.Name.t
  val linSpace : Op.Name.t
  val listDiff : Op.Name.t
  val loadAndRemapMatrix : Op.Name.t
  val log : Op.Name.t
  val log1p : Op.Name.t
  val logMatrixDeterminant : Op.Name.t
  val logSoftmax : Op.Name.t
  val logUniformCandidateSampler : Op.Name.t
  val logicalAnd : Op.Name.t
  val logicalNot : Op.Name.t
  val logicalOr : Op.Name.t
  val lookupTableExport : Op.Name.t
  val lookupTableExportV2 : Op.Name.t
  val lookupTableFind : Op.Name.t
  val lookupTableFindV2 : Op.Name.t
  val lookupTableImport : Op.Name.t
  val lookupTableImportV2 : Op.Name.t
  val lookupTableInsert : Op.Name.t
  val lookupTableInsertV2 : Op.Name.t
  val lookupTableSize : Op.Name.t
  val lookupTableSizeV2 : Op.Name.t
  val loopCond : Op.Name.t
  val makeIterator : Op.Name.t
  val mapClear : Op.Name.t
  val mapIncompleteSize : Op.Name.t
  val mapSize : Op.Name.t
  val matMul : Op.Name.t
  val matchingFiles : Op.Name.t
  val matrixBandPart : Op.Name.t
  val matrixDeterminant : Op.Name.t
  val matrixDiag : Op.Name.t
  val matrixDiagPart : Op.Name.t
  val matrixExponential : Op.Name.t
  val matrixInverse : Op.Name.t
  val matrixLogarithm : Op.Name.t
  val matrixSetDiag : Op.Name.t
  val matrixSolve : Op.Name.t
  val matrixSolveLs : Op.Name.t
  val matrixTriangularSolve : Op.Name.t
  val max : Op.Name.t
  val maxPool : Op.Name.t
  val maxPool3D : Op.Name.t
  val maxPool3DGrad : Op.Name.t
  val maxPool3DGradGrad : Op.Name.t
  val maxPoolGrad : Op.Name.t
  val maxPoolGradGrad : Op.Name.t
  val maxPoolGradGradV2 : Op.Name.t
  val maxPoolGradGradWithArgmax : Op.Name.t
  val maxPoolGradV2 : Op.Name.t
  val maxPoolGradWithArgmax : Op.Name.t
  val maxPoolV2 : Op.Name.t
  val maxPoolWithArgmax : Op.Name.t
  val maximum : Op.Name.t
  val mean : Op.Name.t
  val merge : Op.Name.t
  val mergeSummary : Op.Name.t
  val mergeV2Checkpoints : Op.Name.t
  val mfcc : Op.Name.t
  val min : Op.Name.t
  val minimum : Op.Name.t
  val mirrorPad : Op.Name.t
  val mirrorPadGrad : Op.Name.t
  val mod_ : Op.Name.t
  val mul : Op.Name.t
  val multinomial : Op.Name.t
  val mutableDenseHashTable : Op.Name.t
  val mutableDenseHashTableV2 : Op.Name.t
  val mutableHashTable : Op.Name.t
  val mutableHashTableOfTensors : Op.Name.t
  val mutableHashTableOfTensorsV2 : Op.Name.t
  val mutableHashTableV2 : Op.Name.t
  val mutexLock : Op.Name.t
  val mutexV2 : Op.Name.t
  val neg : Op.Name.t
  val negTrain : Op.Name.t
  val nextIteration : Op.Name.t
  val noOp : Op.Name.t
  val nonMaxSuppression : Op.Name.t
  val nonMaxSuppressionV2 : Op.Name.t
  val notEqual : Op.Name.t
  val nthElement : Op.Name.t
  val oneHot : Op.Name.t
  val oneShotIterator : Op.Name.t
  val onesLike : Op.Name.t
  val orderedMapClear : Op.Name.t
  val orderedMapIncompleteSize : Op.Name.t
  val orderedMapSize : Op.Name.t
  val pack : Op.Name.t
  val pad : Op.Name.t
  val padV2 : Op.Name.t
  val paddingFIFOQueue : Op.Name.t
  val paddingFIFOQueueV2 : Op.Name.t
  val parallelConcat : Op.Name.t
  val parallelDynamicStitch : Op.Name.t
  val parameterizedTruncatedNormal : Op.Name.t
  val parseTensor : Op.Name.t
  val placeholder : Op.Name.t
  val placeholderV2 : Op.Name.t
  val placeholderWithDefault : Op.Name.t
  val polygamma : Op.Name.t
  val populationCount : Op.Name.t
  val pow : Op.Name.t
  val prefetchDataset : Op.Name.t
  val preventGradient : Op.Name.t
  val priorityQueue : Op.Name.t
  val priorityQueueV2 : Op.Name.t
  val prod : Op.Name.t
  val qr : Op.Name.t
  val quantizeAndDequantize : Op.Name.t
  val quantizeAndDequantizeV2 : Op.Name.t
  val quantizeAndDequantizeV3 : Op.Name.t
  val quantizeDownAndShrinkRange : Op.Name.t
  val quantizeV2 : Op.Name.t
  val quantizedAdd : Op.Name.t
  val quantizedAvgPool : Op.Name.t
  val quantizedBatchNormWithGlobalNormalization : Op.Name.t
  val quantizedBiasAdd : Op.Name.t
  val quantizedConcat : Op.Name.t
  val quantizedConv2D : Op.Name.t
  val quantizedInstanceNorm : Op.Name.t
  val quantizedMatMul : Op.Name.t
  val quantizedMaxPool : Op.Name.t
  val quantizedMul : Op.Name.t
  val quantizedRelu : Op.Name.t
  val quantizedRelu6 : Op.Name.t
  val quantizedReluX : Op.Name.t
  val quantizedReshape : Op.Name.t
  val quantizedResizeBilinear : Op.Name.t
  val queueClose : Op.Name.t
  val queueCloseV2 : Op.Name.t
  val queueIsClosed : Op.Name.t
  val queueIsClosedV2 : Op.Name.t
  val queueSize : Op.Name.t
  val queueSizeV2 : Op.Name.t
  val rFFT : Op.Name.t
  val rFFT2D : Op.Name.t
  val rFFT3D : Op.Name.t
  val rGBToHSV : Op.Name.t
  val randomCrop : Op.Name.t
  val randomDataset : Op.Name.t
  val randomGamma : Op.Name.t
  val randomPoisson : Op.Name.t
  val randomPoissonV2 : Op.Name.t
  val randomShuffle : Op.Name.t
  val randomShuffleQueue : Op.Name.t
  val randomShuffleQueueV2 : Op.Name.t
  val randomStandardNormal : Op.Name.t
  val randomUniform : Op.Name.t
  val randomUniformInt : Op.Name.t
  val range : Op.Name.t
  val rangeDataset : Op.Name.t
  val rank : Op.Name.t
  val readFile : Op.Name.t
  val readVariableOp : Op.Name.t
  val readerNumRecordsProduced : Op.Name.t
  val readerNumRecordsProducedV2 : Op.Name.t
  val readerNumWorkUnitsCompleted : Op.Name.t
  val readerNumWorkUnitsCompletedV2 : Op.Name.t
  val readerRead : Op.Name.t
  val readerReadUpTo : Op.Name.t
  val readerReadUpToV2 : Op.Name.t
  val readerReadV2 : Op.Name.t
  val readerReset : Op.Name.t
  val readerResetV2 : Op.Name.t
  val readerRestoreState : Op.Name.t
  val readerRestoreStateV2 : Op.Name.t
  val readerSerializeState : Op.Name.t
  val readerSerializeStateV2 : Op.Name.t
  val real : Op.Name.t
  val realDiv : Op.Name.t
  val reciprocal : Op.Name.t
  val reciprocalGrad : Op.Name.t
  val recordInput : Op.Name.t
  val reduceJoin : Op.Name.t
  val refEnter : Op.Name.t
  val refExit : Op.Name.t
  val refIdentity : Op.Name.t
  val refMerge : Op.Name.t
  val refNextIteration : Op.Name.t
  val refSelect : Op.Name.t
  val refSwitch : Op.Name.t
  val regexReplace : Op.Name.t
  val relu : Op.Name.t
  val relu6 : Op.Name.t
  val relu6Grad : Op.Name.t
  val reluGrad : Op.Name.t
  val repeatDataset : Op.Name.t
  val requantizationRange : Op.Name.t
  val requantize : Op.Name.t
  val reshape : Op.Name.t
  val resizeArea : Op.Name.t
  val resizeBicubic : Op.Name.t
  val resizeBicubicGrad : Op.Name.t
  val resizeBilinear : Op.Name.t
  val resizeBilinearGrad : Op.Name.t
  val resizeNearestNeighbor : Op.Name.t
  val resizeNearestNeighborGrad : Op.Name.t
  val resourceApplyAdadelta : Op.Name.t
  val resourceApplyAdagrad : Op.Name.t
  val resourceApplyAdagradDA : Op.Name.t
  val resourceApplyAdam : Op.Name.t
  val resourceApplyAddSign : Op.Name.t
  val resourceApplyCenteredRMSProp : Op.Name.t
  val resourceApplyFtrl : Op.Name.t
  val resourceApplyFtrlV2 : Op.Name.t
  val resourceApplyGradientDescent : Op.Name.t
  val resourceApplyMomentum : Op.Name.t
  val resourceApplyPowerSign : Op.Name.t
  val resourceApplyProximalAdagrad : Op.Name.t
  val resourceApplyProximalGradientDescent : Op.Name.t
  val resourceApplyRMSProp : Op.Name.t
  val resourceCountUpTo : Op.Name.t
  val resourceGather : Op.Name.t
  val resourceScatterAdd : Op.Name.t
  val resourceScatterNdUpdate : Op.Name.t
  val resourceScatterUpdate : Op.Name.t
  val resourceSparseApplyAdadelta : Op.Name.t
  val resourceSparseApplyAdagrad : Op.Name.t
  val resourceSparseApplyAdagradDA : Op.Name.t
  val resourceSparseApplyCenteredRMSProp : Op.Name.t
  val resourceSparseApplyFtrl : Op.Name.t
  val resourceSparseApplyFtrlV2 : Op.Name.t
  val resourceSparseApplyMomentum : Op.Name.t
  val resourceSparseApplyProximalAdagrad : Op.Name.t
  val resourceSparseApplyProximalGradientDescent : Op.Name.t
  val resourceSparseApplyRMSProp : Op.Name.t
  val resourceStridedSliceAssign : Op.Name.t
  val restore : Op.Name.t
  val restoreSlice : Op.Name.t
  val reverse : Op.Name.t
  val reverseSequence : Op.Name.t
  val reverseV2 : Op.Name.t
  val rightShift : Op.Name.t
  val rint : Op.Name.t
  val roll : Op.Name.t
  val round : Op.Name.t
  val rsqrt : Op.Name.t
  val rsqrtGrad : Op.Name.t
  val scalarSummary : Op.Name.t
  val scatterAdd : Op.Name.t
  val scatterDiv : Op.Name.t
  val scatterMul : Op.Name.t
  val scatterNd : Op.Name.t
  val scatterNdAdd : Op.Name.t
  val scatterNdNonAliasingAdd : Op.Name.t
  val scatterNdSub : Op.Name.t
  val scatterNdUpdate : Op.Name.t
  val scatterSub : Op.Name.t
  val scatterUpdate : Op.Name.t
  val sdcaFprint : Op.Name.t
  val sdcaShrinkL1 : Op.Name.t
  val segmentMax : Op.Name.t
  val segmentMean : Op.Name.t
  val segmentMin : Op.Name.t
  val segmentProd : Op.Name.t
  val segmentSum : Op.Name.t
  val select : Op.Name.t
  val selfAdjointEig : Op.Name.t
  val selfAdjointEigV2 : Op.Name.t
  val selu : Op.Name.t
  val seluGrad : Op.Name.t
  val serializeIterator : Op.Name.t
  val serializeManySparse : Op.Name.t
  val serializeSparse : Op.Name.t
  val serializeTensor : Op.Name.t
  val setSize : Op.Name.t
  val shape : Op.Name.t
  val shapeN : Op.Name.t
  val shardedFilename : Op.Name.t
  val shardedFilespec : Op.Name.t
  val shuffleAndRepeatDataset : Op.Name.t
  val shuffleDataset : Op.Name.t
  val sigmoid : Op.Name.t
  val sigmoidGrad : Op.Name.t
  val sign : Op.Name.t
  val sin : Op.Name.t
  val sinh : Op.Name.t
  val size : Op.Name.t
  val skipDataset : Op.Name.t
  val skipgram : Op.Name.t
  val slice : Op.Name.t
  val snapshot : Op.Name.t
  val softmax : Op.Name.t
  val softmaxCrossEntropyWithLogits : Op.Name.t
  val softplus : Op.Name.t
  val softplusGrad : Op.Name.t
  val softsign : Op.Name.t
  val softsignGrad : Op.Name.t
  val spaceToBatch : Op.Name.t
  val spaceToBatchND : Op.Name.t
  val spaceToDepth : Op.Name.t
  val sparseAccumulatorApplyGradient : Op.Name.t
  val sparseAccumulatorTakeGradient : Op.Name.t
  val sparseAdd : Op.Name.t
  val sparseAddGrad : Op.Name.t
  val sparseApplyAdadelta : Op.Name.t
  val sparseApplyAdagrad : Op.Name.t
  val sparseApplyAdagradDA : Op.Name.t
  val sparseApplyCenteredRMSProp : Op.Name.t
  val sparseApplyFtrl : Op.Name.t
  val sparseApplyFtrlV2 : Op.Name.t
  val sparseApplyMomentum : Op.Name.t
  val sparseApplyProximalAdagrad : Op.Name.t
  val sparseApplyProximalGradientDescent : Op.Name.t
  val sparseApplyRMSProp : Op.Name.t
  val sparseConcat : Op.Name.t
  val sparseConditionalAccumulator : Op.Name.t
  val sparseDenseCwiseAdd : Op.Name.t
  val sparseDenseCwiseDiv : Op.Name.t
  val sparseDenseCwiseMul : Op.Name.t
  val sparseFillEmptyRows : Op.Name.t
  val sparseFillEmptyRowsGrad : Op.Name.t
  val sparseMatMul : Op.Name.t
  val sparseReduceMax : Op.Name.t
  val sparseReduceMaxSparse : Op.Name.t
  val sparseReduceSum : Op.Name.t
  val sparseReduceSumSparse : Op.Name.t
  val sparseReorder : Op.Name.t
  val sparseReshape : Op.Name.t
  val sparseSegmentMean : Op.Name.t
  val sparseSegmentMeanGrad : Op.Name.t
  val sparseSegmentMeanWithNumSegments : Op.Name.t
  val sparseSegmentSqrtN : Op.Name.t
  val sparseSegmentSqrtNGrad : Op.Name.t
  val sparseSegmentSqrtNWithNumSegments : Op.Name.t
  val sparseSegmentSum : Op.Name.t
  val sparseSegmentSumWithNumSegments : Op.Name.t
  val sparseSlice : Op.Name.t
  val sparseSoftmax : Op.Name.t
  val sparseSoftmaxCrossEntropyWithLogits : Op.Name.t
  val sparseSparseMaximum : Op.Name.t
  val sparseSparseMinimum : Op.Name.t
  val sparseTensorDenseAdd : Op.Name.t
  val sparseTensorDenseMatMul : Op.Name.t
  val sparseTensorSliceDataset : Op.Name.t
  val sparseToDense : Op.Name.t
  val sparseToSparseSetOperation : Op.Name.t
  val split : Op.Name.t
  val splitV : Op.Name.t
  val sqlDataset : Op.Name.t
  val sqrt : Op.Name.t
  val sqrtGrad : Op.Name.t
  val square : Op.Name.t
  val squaredDifference : Op.Name.t
  val squeeze : Op.Name.t
  val stack : Op.Name.t
  val stackClose : Op.Name.t
  val stackCloseV2 : Op.Name.t
  val stackPop : Op.Name.t
  val stackPopV2 : Op.Name.t
  val stackPush : Op.Name.t
  val stackPushV2 : Op.Name.t
  val stackV2 : Op.Name.t
  val stageClear : Op.Name.t
  val stageSize : Op.Name.t
  val statelessRandomNormal : Op.Name.t
  val statelessRandomUniform : Op.Name.t
  val statelessTruncatedNormal : Op.Name.t
  val statsAggregatorHandle : Op.Name.t
  val statsAggregatorSummary : Op.Name.t
  val stopGradient : Op.Name.t
  val stridedSlice : Op.Name.t
  val stridedSliceAssign : Op.Name.t
  val stridedSliceGrad : Op.Name.t
  val stringJoin : Op.Name.t
  val stringSplit : Op.Name.t
  val stringToHashBucket : Op.Name.t
  val stringToHashBucketFast : Op.Name.t
  val stringToHashBucketStrong : Op.Name.t
  val stringToNumber : Op.Name.t
  val sub : Op.Name.t
  val substr : Op.Name.t
  val sum : Op.Name.t
  val svd : Op.Name.t
  val switch : Op.Name.t
  val tFRecordDataset : Op.Name.t
  val tFRecordReader : Op.Name.t
  val tFRecordReaderV2 : Op.Name.t
  val takeDataset : Op.Name.t
  val takeManySparseFromTensorsMap : Op.Name.t
  val tan : Op.Name.t
  val tanh : Op.Name.t
  val tanhGrad : Op.Name.t
  val temporaryVariable : Op.Name.t
  val tensorArray : Op.Name.t
  val tensorArrayClose : Op.Name.t
  val tensorArrayCloseV2 : Op.Name.t
  val tensorArrayCloseV3 : Op.Name.t
  val tensorArrayConcat : Op.Name.t
  val tensorArrayConcatV2 : Op.Name.t
  val tensorArrayConcatV3 : Op.Name.t
  val tensorArrayGather : Op.Name.t
  val tensorArrayGatherV2 : Op.Name.t
  val tensorArrayGatherV3 : Op.Name.t
  val tensorArrayGrad : Op.Name.t
  val tensorArrayGradV2 : Op.Name.t
  val tensorArrayGradV3 : Op.Name.t
  val tensorArrayPack : Op.Name.t
  val tensorArrayRead : Op.Name.t
  val tensorArrayReadV2 : Op.Name.t
  val tensorArrayReadV3 : Op.Name.t
  val tensorArrayScatter : Op.Name.t
  val tensorArrayScatterV2 : Op.Name.t
  val tensorArrayScatterV3 : Op.Name.t
  val tensorArraySize : Op.Name.t
  val tensorArraySizeV2 : Op.Name.t
  val tensorArraySizeV3 : Op.Name.t
  val tensorArraySplit : Op.Name.t
  val tensorArraySplitV2 : Op.Name.t
  val tensorArraySplitV3 : Op.Name.t
  val tensorArrayUnpack : Op.Name.t
  val tensorArrayV2 : Op.Name.t
  val tensorArrayV3 : Op.Name.t
  val tensorArrayWrite : Op.Name.t
  val tensorArrayWriteV2 : Op.Name.t
  val tensorArrayWriteV3 : Op.Name.t
  val tensorListElementShape : Op.Name.t
  val tensorListFromTensor : Op.Name.t
  val tensorListGetItem : Op.Name.t
  val tensorListLength : Op.Name.t
  val tensorListPopBack : Op.Name.t
  val tensorListPushBack : Op.Name.t
  val tensorListReserve : Op.Name.t
  val tensorListSetItem : Op.Name.t
  val tensorListStack : Op.Name.t
  val tensorSummary : Op.Name.t
  val tensorSummaryV2 : Op.Name.t
  val textLineDataset : Op.Name.t
  val textLineReader : Op.Name.t
  val textLineReaderV2 : Op.Name.t
  val threadUnsafeUnigramCandidateSampler : Op.Name.t
  val tile : Op.Name.t
  val tileGrad : Op.Name.t
  val timestamp : Op.Name.t
  val topK : Op.Name.t
  val topKV2 : Op.Name.t
  val transpose : Op.Name.t
  val truncateDiv : Op.Name.t
  val truncateMod : Op.Name.t
  val truncatedNormal : Op.Name.t
  val unbatch : Op.Name.t
  val unbatchGrad : Op.Name.t
  val uniformCandidateSampler : Op.Name.t
  val unique : Op.Name.t
  val uniqueV2 : Op.Name.t
  val uniqueWithCounts : Op.Name.t
  val unpack : Op.Name.t
  val unravelIndex : Op.Name.t
  val unsortedSegmentMax : Op.Name.t
  val unsortedSegmentSum : Op.Name.t
  val varHandleOp : Op.Name.t
  val varIsInitializedOp : Op.Name.t
  val variableShape : Op.Name.t
  val where : Op.Name.t
  val wholeFileReader : Op.Name.t
  val wholeFileReaderV2 : Op.Name.t
  val writeFile : Op.Name.t
  val zerosLike : Op.Name.t
  val zeta : Op.Name.t
  val zipDataset : Op.Name.t
end

val abort:
  ?error_msg:string ->
  ?exit_without_error:bool ->
  unit ->
    unit

val abs:
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

val accumulateNV2:
  shape:int list ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t list ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val accumulatorApplyGradient:
  [ `string ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 'dtype) t ->
    unit

val accumulatorNumAccumulated:
  [ `string ] t ->
    [ `int32 ] t

val accumulatorSetGlobalStep:
  [ `string ] t ->
  [ `int64 ] t ->
    unit

val accumulatorTakeGradient:
  type_dtype:([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 'dtype) Type.t ->
  [ `string ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 'dtype) t

val acos:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val acosh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val add:
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t ->
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t ->
    ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t

val addManySparseToTensorsMap:
  ?container:string ->
  ?shared_name:string ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `int64 ] t

val addN:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 | `variant ] as 't) t list ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 | `variant ] as 't) t

val addSparseToTensorsMap:
  ?container:string ->
  ?shared_name:string ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `int64 ] t

val addV2:
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 ] as 't) t

val adjustContrast:
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val adjustContrastv2:
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val adjustHue:
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val adjustSaturation:
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val all:
  ?keep_dims:bool ->
  [ `bool ] t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    [ `bool ] t

val allCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

val angle:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

val any:
  ?keep_dims:bool ->
  [ `bool ] t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    [ `bool ] t

val applyAdadelta:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyAdagradDA:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyAdam:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyAddSign:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyCenteredRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyFtrl:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyFtrlV2:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyGradientDescent:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyPowerSign:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyProximalAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyProximalGradientDescent:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val applyRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val approximateEqual:
  ?tolerance:float ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    [ `bool ] t

val argMax:
  type_output_type:([< `int32 | `int64 ] as 'output_type) Type.t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `int32 | `int64 ] as 'output_type) t

val argMin:
  type_output_type:([< `int32 | `int64 ] as 'output_type) Type.t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `int32 | `int64 ] as 'output_type) t

val asString:
  ?precision:int ->
  ?scientific:bool ->
  ?shortest:bool ->
  ?width:int ->
  ?fill:string ->
  ([< `int32 | `int64 | `complex64 | `float | `double | `bool ] as 't) t ->
    [ `string ] t

val asin:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val asinh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val assignAddVariableOp:
  [ `resource ] t ->
  'dtype t ->
    unit

val assignSubVariableOp:
  [ `resource ] t ->
  'dtype t ->
    unit

val assignVariableOp:
  [ `resource ] t ->
  'dtype t ->
    unit

val atan:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val atan2:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val atanh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val audioSpectrogram:
  window_size:int ->
  stride:int ->
  ?magnitude_squared:bool ->
  [ `float ] t ->
    [ `float ] t

val audioSummary:
  sample_rate:float ->
  ?max_outputs:int ->
  [ `string ] t ->
  [ `float ] t ->
    [ `string ] t

val audioSummaryV2:
  ?max_outputs:int ->
  [ `string ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `string ] t

val avgPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val avgPool3D:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val avgPool3DGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val avgPoolGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val barrier:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val barrierClose:
  ?cancel_pending_enqueues:bool ->
  [ `string ] t ->
    unit

val barrierIncompleteSize:
  [ `string ] t ->
    [ `int32 ] t

val barrierInsertMany:
  component_index:int ->
  [ `string ] t ->
  [ `string ] t ->
  't t ->
    unit

val barrierReadySize:
  [ `string ] t ->
    [ `int32 ] t

val batchCholesky:
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t

val batchCholeskyGrad:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val batchDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val batchFFT:
  [ `complex64 ] t ->
    [ `complex64 ] t

val batchFFT2D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val batchFFT3D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val batchIFFT:
  [ `complex64 ] t ->
    [ `complex64 ] t

val batchIFFT2D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val batchIFFT3D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val batchMatMul:
  ?adj_x:bool ->
  ?adj_y:bool ->
  ([< `float | `double | `int32 | `complex64 ] as 't) t ->
  ([< `float | `double | `int32 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `complex64 ] as 't) t

val batchMatrixBandPart:
  't t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    't t

val batchMatrixDeterminant:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val batchMatrixDiag:
  't t ->
    't t

val batchMatrixDiagPart:
  't t ->
    't t

val batchMatrixInverse:
  ?adjoint:bool ->
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t

val batchMatrixSetDiag:
  't t ->
  't t ->
    't t

val batchMatrixSolve:
  ?adjoint:bool ->
  ([< `double | `float ] as 't) t ->
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t

val batchMatrixSolveLs:
  ?fast:bool ->
  ([< `double | `float ] as 't) t ->
  ([< `double | `float ] as 't) t ->
  [ `double ] t ->
    ([< `double | `float ] as 't) t

val batchMatrixTriangularSolve:
  ?lower:bool ->
  ?adjoint:bool ->
  ([< `double | `float ] as 't) t ->
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t

val batchNormWithGlobalNormalization:
  variance_epsilon:float ->
  scale_after_normalization:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val batchNormWithGlobalNormalizationGrad:
  variance_epsilon:float ->
  scale_after_normalization:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val batchSelfAdjointEig:
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t

val batchSelfAdjointEigV2:
  ?compute_v:bool ->
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t * ([< `double | `float ] as 't) t

val batchSvd:
  ?compute_uv:bool ->
  ?full_matrices:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t

val batchToSpace:
  block_size:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    't t

val batchToSpaceND:
  't t ->
  ([< `int32 | `int64 ] as 'tblock_shape) t ->
  ([< `int32 | `int64 ] as 'tcrops) t ->
    't t

val betainc:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val biasAdd:
  ?data_format:string ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val biasAddGrad:
  ?data_format:string ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val biasAddV1:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val bincount:
  [ `int32 ] t ->
  [ `int32 ] t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

val bitcast:
  type_type__:([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'type__) Type.t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'type__) t

val bitwiseAnd:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val bitwiseOr:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val bitwiseXor:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val broadcastArgs:
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

val broadcastGradientArgs:
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t * ([< `int32 | `int64 ] as 't) t

val bucketize:
  boundaries:float list ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    [ `int32 ] t

val bytesProducedStatsDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `string ] t ->
    [ `variant ] t

val cTCGreedyDecoder:
  ?merge_repeated:bool ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * [ `int64 ] t * [ `int64 ] t * [ `float ] t

val cTCLoss:
  ?preprocess_collapse_repeated:bool ->
  ?ctc_merge_repeated:bool ->
  ?ignore_longer_outputs_than_inputs:bool ->
  [ `float ] t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    [ `float ] t * [ `float ] t

val cacheDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `string ] t ->
    [ `variant ] t

val cast:
  type_dstT:'dstT Type.t ->
  'srcT t ->
    'dstT t

val ceil:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val checkNumerics:
  message:string ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val cholesky:
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

val choleskyGrad:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val compareAndBitpack:
  ([< `bool | `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `bool | `float | `double | `int32 | `int64 ] as 't) t ->
    [ `uInt8 ] t

val complex:
  type_tout:([< `complex64 ] as 'tout) Type.t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `complex64 ] as 'tout) t

val complexAbs:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

val computeAccidentalHits:
  num_true:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `int32 ] t * [ `int64 ] t * [ `float ] t

val concat:
  [ `int32 ] t ->
  't t list ->
    't t

val concatOffset:
  [ `int32 ] t ->
  [ `int32 ] t list ->
    [ `int32 ] t list

val concatV2:
  't t list ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    't t

val concatenateDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `variant ] t ->
    [ `variant ] t

val conditionalAccumulator:
  shape:int list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val conj:
  ([< `complex64 | `variant ] as 't) t ->
    ([< `complex64 | `variant ] as 't) t

val conjugateTranspose:
  't t ->
  ([< `int32 | `int64 ] as 'tperm) t ->
    't t

val consumeMutexLock:
  [ `variant ] t ->
    unit

val controlTrigger:
  unit ->
    unit

val conv2D:
  strides:int list ->
  ?use_cudnn_on_gpu:bool ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val conv2DBackpropFilter:
  strides:int list ->
  ?use_cudnn_on_gpu:bool ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  ([< `float ] as 't) t ->
  [ `int32 ] t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val conv2DBackpropInput:
  strides:int list ->
  ?use_cudnn_on_gpu:bool ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  [ `int32 ] t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val conv3D:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val conv3DBackpropFilter:
  strides:int list ->
  padding:string ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val conv3DBackpropFilterV2:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  ([< `float | `double ] as 't) t ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val conv3DBackpropInput:
  strides:int list ->
  padding:string ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val conv3DBackpropInputV2:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Copy Op. *)
(* Performs CPU-to-CPU or GPU-to-GPU deep-copying of tensor, depending on the
device on which the tensor is allocated.
N.B.: If the all downstream attached debug ops are disabled given the current
gRPC gating status, the output will simply forward the input tensor without
deep-copying. See the documentation of Debug* ops for more details.

Unlike the CopyHost Op, this op does not have HostMemory constraint on its
input or output. *)
val copy:
  ?tensor_name:string ->
  't t ->
    't t

(* Copy Host Op. *)
(* Performs CPU-to-CPU deep-copying of tensor.
N.B.: If the all downstream attached debug ops are disabled given the current
gRPC gating status, the output will simply forward the input tensor without
deep-copying. See the documentation of Debug* ops for more details.

Unlike the Copy Op, this op has HostMemory constraint on its input or output. *)
val copyHost:
  ?tensor_name:string ->
  't t ->
    't t

val cos:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val cosh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val countUpTo:
  limit:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

val cropAndResize:
  ?method_:string ->
  ?extrapolation_value:float ->
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    [ `float ] t

val cropAndResizeGradBoxes:
  ?method_:string ->
  [ `float ] t ->
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `float ] t

val cropAndResizeGradImage:
  type_t:([< `float | `double ] as 't) Type.t ->
  ?method_:string ->
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

val cross:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val cumprod:
  ?exclusive:bool ->
  ?reverse:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val cumsum:
  ?exclusive:bool ->
  ?reverse:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val dataFormatDimMap:
  ?src_format:string ->
  ?dst_format:string ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

val dataFormatVecPermute:
  ?src_format:string ->
  ?dst_format:string ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

val debugGradientIdentity:
  't t ->
    't t

val debugGradientRefIdentity:
  't t ->
    't t

(* Debug Identity Op. *)
(* Provides an identity mapping of the non-Ref type input tensor for debugging. *)
val debugIdentity:
  ?device_name:string ->
  ?tensor_name:string ->
  ?gated_grpc:bool ->
  't t ->
    't t

(* Debug NaN Value Counter Op *)
(* Counts number of NaNs in the input tensor, for debugging. *)
val debugNanCount:
  ?device_name:string ->
  ?tensor_name:string ->
  ?gated_grpc:bool ->
  't t ->
    [ `int64 ] t

(* Debug Numeric Summary Op. *)
(* Provide a basic summary of numeric value types, range and distribution. *)
val debugNumericSummary:
  ?device_name:string ->
  ?tensor_name:string ->
  ?lower_bound:float ->
  ?upper_bound:float ->
  ?mute_if_healthy:bool ->
  ?gated_grpc:bool ->
  't t ->
    [ `double ] t

val decodeAndCropJpeg:
  ?channels:int ->
  ?ratio:int ->
  ?fancy_upscaling:bool ->
  ?try_recover_truncated:bool ->
  ?acceptable_fraction:float ->
  ?dct_method:string ->
  [ `string ] t ->
  [ `int32 ] t ->
    [ `uInt8 ] t

val decodeBase64:
  [ `string ] t ->
    [ `string ] t

val decodeBmp:
  ?channels:int ->
  [ `string ] t ->
    [ `uInt8 ] t

val decodeCompressed:
  ?compression_type:string ->
  [ `string ] t ->
    [ `string ] t

val decodeGif:
  [ `string ] t ->
    [ `uInt8 ] t

val decodeJSONExample:
  [ `string ] t ->
    [ `string ] t

val decodeJpeg:
  ?channels:int ->
  ?ratio:int ->
  ?fancy_upscaling:bool ->
  ?try_recover_truncated:bool ->
  ?acceptable_fraction:float ->
  ?dct_method:string ->
  [ `string ] t ->
    [ `uInt8 ] t

val decodePng:
  type_dtype:([< `uInt8 | `uInt16 ] as 'dtype) Type.t ->
  ?channels:int ->
  [ `string ] t ->
    ([< `uInt8 | `uInt16 ] as 'dtype) t

val decodeRaw:
  type_out_type:([< `float | `double | `int32 | `uInt16 | `uInt8 | `int64 ] as 'out_type) Type.t ->
  ?little_endian:bool ->
  [ `string ] t ->
    ([< `float | `double | `int32 | `uInt16 | `uInt8 | `int64 ] as 'out_type) t

val decodeWav:
  ?desired_channels:int ->
  ?desired_samples:int ->
  [ `string ] t ->
    [ `float ] t * [ `int32 ] t

val deleteSessionTensor:
  [ `string ] t ->
    unit

val denseToDenseSetOperation:
  set_operation:string ->
  ?validate_indices:bool ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
    [ `int64 ] t * ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t * [ `int64 ] t

val denseToSparseBatchDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val denseToSparseSetOperation:
  set_operation:string ->
  ?validate_indices:bool ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
    [ `int64 ] t * ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t * [ `int64 ] t

val depthToSpace:
  block_size:int ->
  ?data_format:string ->
  't t ->
    't t

val depthwiseConv2dNative:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val depthwiseConv2dNativeBackpropFilter:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  ([< `float | `double ] as 't) t ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val depthwiseConv2dNativeBackpropInput:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ?dilations:int list ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val dequantize:
  ?mode:string ->
  't t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val deserializeIterator:
  [ `resource ] t ->
  [ `variant ] t ->
    unit

val deserializeManySparse:
  type_dtype:'dtype Type.t ->
  [ `string ] t ->
    [ `int64 ] t * 'dtype t * [ `int64 ] t

val deserializeSparse:
  type_dtype:'dtype Type.t ->
  ([< `string | `variant ] as 'tserialized) t ->
    [ `int64 ] t * 'dtype t * [ `int64 ] t

val destroyResourceOp:
  ?ignore_lookup_error:bool ->
  [ `resource ] t ->
    unit

val destroyTemporaryVariable:
  var_name:string ->
  't t ->
    't t

val diag:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val diagPart:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val digamma:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val dilation2D:
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val dilation2DBackpropFilter:
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val dilation2DBackpropInput:
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val div:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

val drawBoundingBoxes:
  ([< `float ] as 't) t ->
  [ `float ] t ->
    ([< `float ] as 't) t

val dynamicPartition:
  num_partitions:int ->
  't t ->
  [ `int32 ] t ->
    't t list

val dynamicStitch:
  [ `int32 ] t list ->
  't t list ->
    't t

val editDistance:
  ?normalize:bool ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `float ] t

val elu:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val eluGrad:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val emptyTensorList:
  ([< `int32 | `int64 ] as 'shape_type) t ->
    [ `variant ] t

val encodeBase64:
  ?pad:bool ->
  [ `string ] t ->
    [ `string ] t

val encodeJpeg:
  ?format:string ->
  ?quality:int ->
  ?progressive:bool ->
  ?optimize_size:bool ->
  ?chroma_downsampling:bool ->
  ?density_unit:string ->
  ?x_density:int ->
  ?y_density:int ->
  ?xmp_metadata:string ->
  [ `uInt8 ] t ->
    [ `string ] t

val encodePng:
  ?compression:int ->
  ([< `uInt8 | `uInt16 ] as 't) t ->
    [ `string ] t

val encodeWav:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `string ] t

val enter:
  frame_name:string ->
  ?is_constant:bool ->
  ?parallel_iterations:int ->
  't t ->
    't t

val equal:
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
    [ `bool ] t

val erf:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val erfc:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val exit:
  't t ->
    't t

val exp:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val expandDims:
  't t ->
  ([< `int32 | `int64 ] as 'tdim) t ->
    't t

val expm1:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val extractGlimpse:
  ?centered:bool ->
  ?normalized:bool ->
  ?uniform_noise:bool ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    [ `float ] t

val extractImagePatches:
  ksizes:int list ->
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val extractJpegShape:
  type_output_type:([< `int32 | `int64 ] as 'output_type) Type.t ->
  [ `string ] t ->
    ([< `int32 | `int64 ] as 'output_type) t

val fFT:
  [ `complex64 ] t ->
    [ `complex64 ] t

val fFT2D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val fFT3D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val fIFOQueue:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val fIFOQueueV2:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val fact:
  unit ->
    [ `string ] t

val fakeQuantWithMinMaxArgs:
  ?min:float ->
  ?max:float ->
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
    [ `float ] t

val fakeQuantWithMinMaxArgsGradient:
  ?min:float ->
  ?max:float ->
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val fakeQuantWithMinMaxVars:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val fakeQuantWithMinMaxVarsGradient:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t * [ `float ] t * [ `float ] t

val fakeQuantWithMinMaxVarsPerChannel:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

val fakeQuantWithMinMaxVarsPerChannelGradient:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t * [ `float ] t * [ `float ] t

val fakeQueue:
  [ `resource ] t ->
    [ `string ] t

val fill:
  ([< `int32 | `int64 ] as 'index_type) t ->
  't t ->
    't t

val fixedLengthRecordDataset:
  [ `string ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val fixedLengthRecordReader:
  ?header_bytes:int ->
  record_bytes:int ->
  ?footer_bytes:int ->
  ?hop_bytes:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val fixedLengthRecordReaderV2:
  ?header_bytes:int ->
  record_bytes:int ->
  ?footer_bytes:int ->
  ?hop_bytes:int ->
  ?container:string ->
  ?shared_name:string ->
  ?encoding:string ->
  unit ->
    [ `resource ] t

val fixedUnigramCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?vocab_file:string ->
  ?distortion:float ->
  ?num_reserved_ids:int ->
  ?num_shards:int ->
  ?shard:int ->
  ?unigrams:float list ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

val floor:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val floorDiv:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

val floorMod:
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

val fractionalAvgPool:
  pooling_ratio:float list ->
  ?pseudo_random:bool ->
  ?overlapping:bool ->
  ?deterministic:bool ->
  ?seed:int ->
  ?seed2:int ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t * [ `int64 ] t * [ `int64 ] t

val fractionalAvgPoolGrad:
  ?overlapping:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

val fractionalMaxPool:
  pooling_ratio:float list ->
  ?pseudo_random:bool ->
  ?overlapping:bool ->
  ?deterministic:bool ->
  ?seed:int ->
  ?seed2:int ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t * [ `int64 ] t * [ `int64 ] t

val fractionalMaxPoolGrad:
  ?overlapping:bool ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

val fusedBatchNorm:
  ?epsilon:float ->
  ?data_format:string ->
  ?is_training:bool ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t * ([< `float ] as 't) t * ([< `float ] as 't) t * ([< `float ] as 't) t * ([< `float ] as 't) t

val fusedBatchNormGrad:
  ?epsilon:float ->
  ?data_format:string ->
  ?is_training:bool ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t * ([< `float ] as 't) t * ([< `float ] as 't) t * ([< `float ] as 't) t * ([< `float ] as 't) t

val fusedBatchNormGradV2:
  ?epsilon:float ->
  ?data_format:string ->
  ?is_training:bool ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  [ `float ] t ->
  ([< `float ] as 'u) t ->
  ([< `float ] as 'u) t ->
    ([< `float ] as 't) t * ([< `float ] as 'u) t * ([< `float ] as 'u) t * ([< `float ] as 'u) t * ([< `float ] as 'u) t

val fusedBatchNormV2:
  ?epsilon:float ->
  ?data_format:string ->
  ?is_training:bool ->
  ([< `float ] as 't) t ->
  ([< `float ] as 'u) t ->
  ([< `float ] as 'u) t ->
  ([< `float ] as 'u) t ->
  ([< `float ] as 'u) t ->
    ([< `float ] as 't) t * ([< `float ] as 'u) t * ([< `float ] as 'u) t * ([< `float ] as 'u) t * ([< `float ] as 'u) t

val fusedPadConv2D:
  mode:string ->
  strides:int list ->
  padding:string ->
  ([< `float ] as 't) t ->
  [ `int32 ] t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val fusedResizeAndPadConv2D:
  ?resize_align_corners:bool ->
  mode:string ->
  strides:int list ->
  padding:string ->
  ([< `float ] as 't) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val gather:
  ?validate_indices:bool ->
  'tparams t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    'tparams t

val gatherNd:
  'tparams t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    'tparams t

val gatherV2:
  'tparams t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `int32 | `int64 ] as 'taxis) t ->
    'tparams t

val generateVocabRemapping:
  new_vocab_offset:int ->
  num_new_vocab:int ->
  ?old_vocab_size:int ->
  [ `string ] t ->
  [ `string ] t ->
    [ `int64 ] t * [ `int32 ] t

val getSessionHandle:
  't t ->
    [ `string ] t

val getSessionHandleV2:
  't t ->
    [ `resource ] t

val getSessionTensor:
  type_dtype:'dtype Type.t ->
  [ `string ] t ->
    'dtype t

val greater:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    [ `bool ] t

val greaterEqual:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    [ `bool ] t

val guaranteeConst:
  't t ->
    't t

val hSVToRGB:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val hashTable:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `string ] t

val hashTableV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `resource ] t

val histogramFixedWidth:
  type_dtype:([< `int32 | `int64 ] as 'dtype) Type.t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    ([< `int32 | `int64 ] as 'dtype) t

val histogramSummary:
  [ `string ] t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    [ `string ] t

val iFFT:
  [ `complex64 ] t ->
    [ `complex64 ] t

val iFFT2D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val iFFT3D:
  [ `complex64 ] t ->
    [ `complex64 ] t

val iRFFT:
  [ `complex64 ] t ->
  [ `int32 ] t ->
    [ `float ] t

val iRFFT2D:
  [ `complex64 ] t ->
  [ `int32 ] t ->
    [ `float ] t

val iRFFT3D:
  [ `complex64 ] t ->
  [ `int32 ] t ->
    [ `float ] t

val identity:
  't t ->
    't t

val identityReader:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val identityReaderV2:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val igamma:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val igammac:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val imag:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

val imageSummary:
  ?max_images:int ->
  [ `string ] t ->
  ([< `uInt8 | `float | `double ] as 't) t ->
    [ `string ] t

val immutableConst:
  type_dtype:'dtype Type.t ->
  shape:int list ->
  memory_region_name:string ->
  unit ->
    'dtype t

val inTopK:
  k:int ->
  [ `float ] t ->
  ([< `int32 | `int64 ] as 't) t ->
    [ `bool ] t

val inTopKV2:
  [ `float ] t ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    [ `bool ] t

val initializeTable:
  [ `string ] t ->
  'tkey t ->
  'tval t ->
    unit

val initializeTableFromTextFile:
  key_index:int ->
  value_index:int ->
  ?vocab_size:int ->
  ?delimiter:string ->
  [ `string ] t ->
  [ `string ] t ->
    unit

val initializeTableFromTextFileV2:
  key_index:int ->
  value_index:int ->
  ?vocab_size:int ->
  ?delimiter:string ->
  [ `resource ] t ->
  [ `string ] t ->
    unit

val initializeTableV2:
  [ `resource ] t ->
  'tkey t ->
  'tval t ->
    unit

val inv:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val invGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val invert:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val invertPermutation:
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

val isFinite:
  ([< `float | `double ] as 't) t ->
    [ `bool ] t

val isInf:
  ([< `float | `double ] as 't) t ->
    [ `bool ] t

val isNan:
  ([< `float | `double ] as 't) t ->
    [ `bool ] t

val isVariableInitialized:
  'dtype t ->
    [ `bool ] t

val iterator:
  shared_name:string ->
  container:string ->
  output_types:Type.p list ->
  output_shapes:int list list ->
  unit ->
    [ `resource ] t

val iteratorFromStringHandle:
  ?output_types:Type.p list ->
  ?output_shapes:int list list ->
  [ `string ] t ->
    [ `resource ] t

val iteratorSetStatsAggregator:
  [ `resource ] t ->
  [ `resource ] t ->
    unit

val iteratorToStringHandle:
  [ `resource ] t ->
    [ `string ] t

val l2Loss:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val lMDBReader:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val lRN:
  ?depth_radius:int ->
  ?bias:float ->
  ?alpha:float ->
  ?beta:float ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val lRNGrad:
  ?depth_radius:int ->
  ?bias:float ->
  ?alpha:float ->
  ?beta:float ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val latencyStatsDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `string ] t ->
    [ `variant ] t

val learnedUnigramCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

val leftShift:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val less:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    [ `bool ] t

val lessEqual:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    [ `bool ] t

val lgamma:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val linSpace:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double ] as 't) t

val listDiff:
  type_out_idx:([< `int32 | `int64 ] as 'out_idx) Type.t ->
  't t ->
  't t ->
    't t * ([< `int32 | `int64 ] as 'out_idx) t

val loadAndRemapMatrix:
  num_rows:int ->
  num_cols:int ->
  ?max_rows_in_memory:int ->
  [ `string ] t ->
  [ `string ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `float ] t ->
    [ `float ] t

val log:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val log1p:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val logMatrixDeterminant:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t * ([< `float | `double | `complex64 ] as 't) t

val logSoftmax:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val logUniformCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

val logicalAnd:
  [ `bool ] t ->
  [ `bool ] t ->
    [ `bool ] t

val logicalNot:
  [ `bool ] t ->
    [ `bool ] t

val logicalOr:
  [ `bool ] t ->
  [ `bool ] t ->
    [ `bool ] t

val lookupTableExport:
  type_tkeys:'tkeys Type.t ->
  type_tvalues:'tvalues Type.t ->
  [ `string ] t ->
    'tkeys t * 'tvalues t

val lookupTableExportV2:
  type_tkeys:'tkeys Type.t ->
  type_tvalues:'tvalues Type.t ->
  [ `resource ] t ->
    'tkeys t * 'tvalues t

val lookupTableFind:
  [ `string ] t ->
  'tin t ->
  'tout t ->
    'tout t

val lookupTableFindV2:
  [ `resource ] t ->
  'tin t ->
  'tout t ->
    'tout t

val lookupTableImport:
  [ `string ] t ->
  'tin t ->
  'tout t ->
    unit

val lookupTableImportV2:
  [ `resource ] t ->
  'tin t ->
  'tout t ->
    unit

val lookupTableInsert:
  [ `string ] t ->
  'tin t ->
  'tout t ->
    unit

val lookupTableInsertV2:
  [ `resource ] t ->
  'tin t ->
  'tout t ->
    unit

val lookupTableSize:
  [ `string ] t ->
    [ `int64 ] t

val lookupTableSizeV2:
  [ `resource ] t ->
    [ `int64 ] t

val loopCond:
  [ `bool ] t ->
    [ `bool ] t

val makeIterator:
  [ `variant ] t ->
  [ `resource ] t ->
    unit

val mapClear:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    unit

val mapIncompleteSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

val mapSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

val matMul:
  ?transpose_a:bool ->
  ?transpose_b:bool ->
  ([< `float | `double | `int32 | `complex64 ] as 't) t ->
  ([< `float | `double | `int32 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `complex64 ] as 't) t

val matchingFiles:
  [ `string ] t ->
    [ `string ] t

val matrixBandPart:
  't t ->
  ([< `int32 | `int64 ] as 'tindex) t ->
  ([< `int32 | `int64 ] as 'tindex) t ->
    't t

val matrixDeterminant:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val matrixDiag:
  't t ->
    't t

val matrixDiagPart:
  't t ->
    't t

val matrixExponential:
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

val matrixInverse:
  ?adjoint:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

val matrixLogarithm:
  ([< `complex64 ] as 't) t ->
    ([< `complex64 ] as 't) t

val matrixSetDiag:
  't t ->
  't t ->
    't t

val matrixSolve:
  ?adjoint:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

val matrixSolveLs:
  ?fast:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
  ([< `double | `float | `complex64 ] as 't) t ->
  [ `double ] t ->
    ([< `double | `float | `complex64 ] as 't) t

val matrixTriangularSolve:
  ?lower:bool ->
  ?adjoint:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

val max:
  ?keep_dims:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val maxPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val maxPool3D:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val maxPool3DGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 'tInput) t ->
  ([< `float ] as 'tInput) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val maxPool3DGradGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

val maxPoolGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val maxPoolGradGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val maxPoolGradGradV2:
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val maxPoolGradGradWithArgmax:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'targmax) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val maxPoolGradV2:
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val maxPoolGradWithArgmax:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'targmax) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val maxPoolV2:
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val maxPoolWithArgmax:
  type_targmax:([< `int32 | `int64 ] as 'targmax) Type.t ->
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t * ([< `int32 | `int64 ] as 'targmax) t

val maximum:
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

val mean:
  ?keep_dims:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val merge:
  't t list ->
    't t * [ `int32 ] t

val mergeSummary:
  [ `string ] t list ->
    [ `string ] t

val mergeV2Checkpoints:
  ?delete_old_dirs:bool ->
  [ `string ] t ->
  [ `string ] t ->
    unit

val mfcc:
  ?upper_frequency_limit:float ->
  ?lower_frequency_limit:float ->
  ?filterbank_channel_count:int ->
  ?dct_coefficient_count:int ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `float ] t

val min:
  ?keep_dims:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val minimum:
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

val mirrorPad:
  mode:string ->
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

val mirrorPadGrad:
  mode:string ->
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

val mod_:
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

val mul:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

val multinomial:
  type_output_dtype:([< `int32 | `int64 ] as 'output_dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
    ([< `int32 | `int64 ] as 'output_dtype) t

val mutableDenseHashTable:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  ?initial_num_buckets:int ->
  ?max_load_factor:float ->
  'key_dtype t ->
    [ `string ] t

val mutableDenseHashTableV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  ?initial_num_buckets:int ->
  ?max_load_factor:float ->
  'key_dtype t ->
    [ `resource ] t

val mutableHashTable:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `string ] t

val mutableHashTableOfTensors:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  unit ->
    [ `string ] t

val mutableHashTableOfTensorsV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  unit ->
    [ `resource ] t

val mutableHashTableV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `resource ] t

val mutexLock:
  [ `resource ] t ->
    [ `variant ] t

val mutexV2:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val neg:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val negTrain:
  vocab_count:int list ->
  num_negative_samples:int ->
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    unit

val nextIteration:
  't t ->
    't t

val noOp:
  unit ->
    unit

val nonMaxSuppression:
  ?iou_threshold:float ->
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `int32 ] t

val nonMaxSuppressionV2:
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    [ `int32 ] t

val notEqual:
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
    [ `bool ] t

val nthElement:
  ?reverse:bool ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val oneHot:
  ?axis:int ->
  ([< `uInt8 | `int32 | `int64 ] as 'tI) t ->
  [ `int32 ] t ->
  't t ->
  't t ->
    't t

val oneShotIterator:
  output_types:Type.p list ->
  output_shapes:int list list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val onesLike:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 | `bool ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 | `bool ] as 't) t

val orderedMapClear:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    unit

val orderedMapIncompleteSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

val orderedMapSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

val pack:
  ?axis:int ->
  't t list ->
    't t

val pad:
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

val padV2:
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
  't t ->
    't t

val paddingFIFOQueue:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val paddingFIFOQueueV2:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val parallelConcat:
  shape:int list ->
  't t list ->
    't t

val parallelDynamicStitch:
  [ `int32 ] t list ->
  't t list ->
    't t

val parameterizedTruncatedNormal:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `float | `double ] as 'dtype) t ->
  ([< `float | `double ] as 'dtype) t ->
  ([< `float | `double ] as 'dtype) t ->
  ([< `float | `double ] as 'dtype) t ->
    ([< `float | `double ] as 'dtype) t

val parseTensor:
  type_out_type:'out_type Type.t ->
  [ `string ] t ->
    'out_type t

val placeholder:
  type_dtype:'dtype Type.t ->
  ?shape:int list ->
  unit ->
    'dtype t

val placeholderV2:
  type_dtype:'dtype Type.t ->
  shape:int list ->
  unit ->
    'dtype t

val placeholderWithDefault:
  shape:int list ->
  'dtype t ->
    'dtype t

val polygamma:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val populationCount:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `uInt8 ] t

val pow:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val prefetchDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val preventGradient:
  ?message:string ->
  't t ->
    't t

val priorityQueue:
  ?component_types:Type.p list ->
  shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val priorityQueueV2:
  ?component_types:Type.p list ->
  shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val prod:
  ?keep_dims:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val qr:
  ?full_matrices:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t

val quantizeAndDequantize:
  ?signed_input:bool ->
  ?num_bits:int ->
  ?range_given:bool ->
  ?input_min:float ->
  ?input_max:float ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val quantizeAndDequantizeV2:
  ?signed_input:bool ->
  ?num_bits:int ->
  ?range_given:bool ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val quantizeAndDequantizeV3:
  ?signed_input:bool ->
  ?range_given:bool ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

val quantizeDownAndShrinkRange:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val quantizeV2:
  type_t:'t Type.t ->
  ?mode:string ->
  ?round_mode:string ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

val quantizedAdd:
  type_toutput:'toutput Type.t ->
  't1 t ->
  't2 t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'toutput t * [ `float ] t * [ `float ] t

val quantizedAvgPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  't t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

val quantizedBatchNormWithGlobalNormalization:
  type_out_type:'out_type Type.t ->
  variance_epsilon:float ->
  scale_after_normalization:bool ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val quantizedBiasAdd:
  type_out_type:'out_type Type.t ->
  't1 t ->
  't2 t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val quantizedConcat:
  [ `int32 ] t ->
  't t list ->
  [ `float ] t list ->
  [ `float ] t list ->
    't t * [ `float ] t * [ `float ] t

val quantizedConv2D:
  type_out_type:'out_type Type.t ->
  strides:int list ->
  padding:string ->
  ?dilations:int list ->
  'tinput t ->
  'tfilter t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val quantizedInstanceNorm:
  ?output_range_given:bool ->
  ?given_y_min:float ->
  ?given_y_max:float ->
  ?variance_epsilon:float ->
  ?min_separation:float ->
  't t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

val quantizedMatMul:
  type_toutput:'toutput Type.t ->
  ?transpose_a:bool ->
  ?transpose_b:bool ->
  't1 t ->
  't2 t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'toutput t * [ `float ] t * [ `float ] t

val quantizedMaxPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  't t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

val quantizedMul:
  type_toutput:'toutput Type.t ->
  't1 t ->
  't2 t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'toutput t * [ `float ] t * [ `float ] t

val quantizedRelu:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val quantizedRelu6:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val quantizedReluX:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val quantizedReshape:
  't t ->
  ([< `int32 | `int64 ] as 'tshape) t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

val quantizedResizeBilinear:
  ?align_corners:bool ->
  ([< `float ] as 't) t ->
  [ `int32 ] t ->
  [ `float ] t ->
  [ `float ] t ->
    ([< `float ] as 't) t * [ `float ] t * [ `float ] t

val queueClose:
  ?cancel_pending_enqueues:bool ->
  [ `string ] t ->
    unit

val queueCloseV2:
  ?cancel_pending_enqueues:bool ->
  [ `resource ] t ->
    unit

val queueIsClosed:
  [ `string ] t ->
    [ `bool ] t

val queueIsClosedV2:
  [ `resource ] t ->
    [ `bool ] t

val queueSize:
  [ `string ] t ->
    [ `int32 ] t

val queueSizeV2:
  [ `resource ] t ->
    [ `int32 ] t

val rFFT:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `complex64 ] t

val rFFT2D:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `complex64 ] t

val rFFT3D:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `complex64 ] t

val rGBToHSV:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val randomCrop:
  ?seed:int ->
  ?seed2:int ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int64 ] t ->
    ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t

val randomDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val randomGamma:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 's) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val randomPoisson:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 's) t ->
  ([< `float | `double ] as 'dtype) t ->
    ([< `float | `double ] as 'dtype) t

val randomPoissonV2:
  type_dtype:([< `float | `double | `int32 | `int64 ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 's) t ->
  ([< `float | `double | `int32 | `int64 ] as 'r) t ->
    ([< `float | `double | `int32 | `int64 ] as 'dtype) t

val randomShuffle:
  ?seed:int ->
  ?seed2:int ->
  't t ->
    't t

val randomShuffleQueue:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?min_after_dequeue:int ->
  ?seed:int ->
  ?seed2:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val randomShuffleQueueV2:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?min_after_dequeue:int ->
  ?seed:int ->
  ?seed2:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val randomStandardNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `float | `double ] as 'dtype) t

val randomUniform:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `float | `double ] as 'dtype) t

val randomUniformInt:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tout) t ->
  ([< `int32 | `int64 ] as 'tout) t ->
    ([< `int32 | `int64 ] as 'tout) t

val range:
  ([< `float | `double | `int32 | `int64 ] as 'tidx) t ->
  ([< `float | `double | `int32 | `int64 ] as 'tidx) t ->
  ([< `float | `double | `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `int64 ] as 'tidx) t

val rangeDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val rank:
  't t ->
    [ `int32 ] t

val readFile:
  [ `string ] t ->
    [ `string ] t

val readVariableOp:
  type_dtype:'dtype Type.t ->
  [ `resource ] t ->
    'dtype t

val readerNumRecordsProduced:
  [ `string ] t ->
    [ `int64 ] t

val readerNumRecordsProducedV2:
  [ `resource ] t ->
    [ `int64 ] t

val readerNumWorkUnitsCompleted:
  [ `string ] t ->
    [ `int64 ] t

val readerNumWorkUnitsCompletedV2:
  [ `resource ] t ->
    [ `int64 ] t

val readerRead:
  [ `string ] t ->
  [ `string ] t ->
    [ `string ] t * [ `string ] t

val readerReadUpTo:
  [ `string ] t ->
  [ `string ] t ->
  [ `int64 ] t ->
    [ `string ] t * [ `string ] t

val readerReadUpToV2:
  [ `resource ] t ->
  [ `resource ] t ->
  [ `int64 ] t ->
    [ `string ] t * [ `string ] t

val readerReadV2:
  [ `resource ] t ->
  [ `resource ] t ->
    [ `string ] t * [ `string ] t

val readerReset:
  [ `string ] t ->
    unit

val readerResetV2:
  [ `resource ] t ->
    unit

val readerRestoreState:
  [ `string ] t ->
  [ `string ] t ->
    unit

val readerRestoreStateV2:
  [ `resource ] t ->
  [ `string ] t ->
    unit

val readerSerializeState:
  [ `string ] t ->
    [ `string ] t

val readerSerializeStateV2:
  [ `resource ] t ->
    [ `string ] t

val real:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

val realDiv:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

val reciprocal:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val reciprocalGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val recordInput:
  file_pattern:string ->
  ?file_random_seed:int ->
  ?file_shuffle_shift_ratio:float ->
  ?file_buffer_size:int ->
  ?file_parallelism:int ->
  ?batch_size:int ->
  ?compression_type:string ->
  unit ->
    [ `string ] t

val reduceJoin:
  ?keep_dims:bool ->
  ?separator:string ->
  [ `string ] t ->
  [ `int32 ] t ->
    [ `string ] t

val refEnter:
  frame_name:string ->
  ?is_constant:bool ->
  ?parallel_iterations:int ->
  't t ->
    't t

val refExit:
  't t ->
    't t

val refIdentity:
  't t ->
    't t

val refMerge:
  't t list ->
    't t * [ `int32 ] t

val refNextIteration:
  't t ->
    't t

val refSelect:
  [ `int32 ] t ->
  't t list ->
    't t

val refSwitch:
  't t ->
  [ `bool ] t ->
    't t * 't t

val regexReplace:
  ?replace_global:bool ->
  [ `string ] t ->
  [ `string ] t ->
  [ `string ] t ->
    [ `string ] t

val relu:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val relu6:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val relu6Grad:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val reluGrad:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val repeatDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val requantizationRange:
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t * [ `float ] t

val requantize:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

val reshape:
  't t ->
  ([< `int32 | `int64 ] as 'tshape) t ->
    't t

val resizeArea:
  ?align_corners:bool ->
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    [ `float ] t

val resizeBicubic:
  ?align_corners:bool ->
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    [ `float ] t

val resizeBicubicGrad:
  ?align_corners:bool ->
  [ `float ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val resizeBilinear:
  ?align_corners:bool ->
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    [ `float ] t

val resizeBilinearGrad:
  ?align_corners:bool ->
  [ `float ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val resizeNearestNeighbor:
  ?align_corners:bool ->
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    ([< `uInt8 | `uInt16 | `int32 | `int64 | `float | `double ] as 't) t

val resizeNearestNeighborGrad:
  ?align_corners:bool ->
  ([< `uInt8 | `int32 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    ([< `uInt8 | `int32 | `float | `double ] as 't) t

val resourceApplyAdadelta:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyAdagradDA:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
    unit

val resourceApplyAdam:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyAddSign:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyCenteredRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyFtrl:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyFtrlV2:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyGradientDescent:
  ?use_locking:bool ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyPowerSign:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyProximalAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyProximalGradientDescent:
  ?use_locking:bool ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceApplyRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceCountUpTo:
  type_t:([< `int32 | `int64 ] as 't) Type.t ->
  limit:int ->
  [ `resource ] t ->
    ([< `int32 | `int64 ] as 't) t

val resourceGather:
  type_dtype:'dtype Type.t ->
  ?validate_indices:bool ->
  [ `resource ] t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    'dtype t

val resourceScatterAdd:
  [ `resource ] t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 'dtype) t ->
    unit

val resourceScatterNdUpdate:
  ?use_locking:bool ->
  [ `resource ] t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
    unit

val resourceScatterUpdate:
  [ `resource ] t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  'dtype t ->
    unit

val resourceSparseApplyAdadelta:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

val resourceSparseApplyAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

val resourceSparseApplyAdagradDA:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
    unit

val resourceSparseApplyCenteredRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

val resourceSparseApplyFtrl:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceSparseApplyFtrlV2:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceSparseApplyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    unit

val resourceSparseApplyProximalAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

val resourceSparseApplyProximalGradientDescent:
  ?use_locking:bool ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

val resourceSparseApplyRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

val resourceStridedSliceAssign:
  ?begin_mask:int ->
  ?end_mask:int ->
  ?ellipsis_mask:int ->
  ?new_axis_mask:int ->
  ?shrink_axis_mask:int ->
  [ `resource ] t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  't t ->
    unit

val restore:
  type_dt:'dt Type.t ->
  ?preferred_shard:int ->
  [ `string ] t ->
  [ `string ] t ->
    'dt t

val restoreSlice:
  type_dt:'dt Type.t ->
  ?preferred_shard:int ->
  [ `string ] t ->
  [ `string ] t ->
  [ `string ] t ->
    'dt t

val reverse:
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t ->
  [ `bool ] t ->
    ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t

val reverseSequence:
  seq_dim:int ->
  ?batch_dim:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tlen) t ->
    't t

val reverseV2:
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t

val rightShift:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

val rint:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val roll:
  't t ->
  ([< `int32 | `int64 ] as 'tshift) t ->
  ([< `int32 | `int64 ] as 'taxis) t ->
    't t

val round:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val rsqrt:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val rsqrtGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val scalarSummary:
  [ `string ] t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    [ `string ] t

val scatterAdd:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val scatterDiv:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val scatterMul:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val scatterNd:
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    't t

val scatterNdAdd:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val scatterNdNonAliasingAdd:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val scatterNdSub:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val scatterNdUpdate:
  ?use_locking:bool ->
  't t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
    't t

val scatterSub:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val scatterUpdate:
  ?use_locking:bool ->
  't t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
    't t

val sdcaFprint:
  [ `string ] t ->
    [ `int64 ] t

val sdcaShrinkL1:
  l1:float ->
  l2:float ->
  [ `float ] t list ->
    unit

val segmentMax:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val segmentMean:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val segmentMin:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val segmentProd:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val segmentSum:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val select:
  [ `bool ] t ->
  't t ->
  't t ->
    't t

val selfAdjointEig:
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t

val selfAdjointEigV2:
  ?compute_v:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t

val selu:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val seluGrad:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val serializeIterator:
  [ `resource ] t ->
    [ `variant ] t

val serializeManySparse:
  type_out_type:([< `string | `variant ] as 'out_type) Type.t ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    ([< `string | `variant ] as 'out_type) t

val serializeSparse:
  type_out_type:([< `string | `variant ] as 'out_type) Type.t ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    ([< `string | `variant ] as 'out_type) t

val serializeTensor:
  't t ->
    [ `string ] t

val setSize:
  ?validate_indices:bool ->
  [ `int64 ] t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
    [ `int32 ] t

val shape:
  type_out_type:([< `int32 | `int64 ] as 'out_type) Type.t ->
  't t ->
    ([< `int32 | `int64 ] as 'out_type) t

val shapeN:
  type_out_type:([< `int32 | `int64 ] as 'out_type) Type.t ->
  't t list ->
    ([< `int32 | `int64 ] as 'out_type) t list

val shardedFilename:
  [ `string ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    [ `string ] t

val shardedFilespec:
  [ `string ] t ->
  [ `int32 ] t ->
    [ `string ] t

val shuffleAndRepeatDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val shuffleDataset:
  ?reshuffle_each_iteration:bool ->
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val sigmoid:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val sigmoidGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val sign:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val sin:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val sinh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val size:
  type_out_type:([< `int32 | `int64 ] as 'out_type) Type.t ->
  't t ->
    ([< `int32 | `int64 ] as 'out_type) t

val skipDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val skipgram:
  filename:string ->
  batch_size:int ->
  ?window_size:int ->
  ?min_count:int ->
  ?subsample:float ->
  unit ->
    [ `string ] t * [ `int32 ] t * [ `int64 ] t * [ `int32 ] t * [ `int64 ] t * [ `int32 ] t * [ `int32 ] t

val slice:
  't t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
    't t

val snapshot:
  't t ->
    't t

val softmax:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val softmaxCrossEntropyWithLogits:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t * ([< `float | `double ] as 't) t

val softplus:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val softplusGrad:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val softsign:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val softsignGrad:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val spaceToBatch:
  block_size:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

val spaceToBatchND:
  't t ->
  ([< `int32 | `int64 ] as 'tblock_shape) t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

val spaceToDepth:
  block_size:int ->
  ?data_format:string ->
  't t ->
    't t

val sparseAccumulatorApplyGradient:
  has_known_shape:bool ->
  [ `string ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 'dtype) t ->
  [ `int64 ] t ->
    unit

val sparseAccumulatorTakeGradient:
  type_dtype:([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 'dtype) Type.t ->
  [ `string ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 'dtype) t * [ `int64 ] t

val sparseAdd:
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 'treal) t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t * [ `int64 ] t

val sparseAddGrad:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyAdadelta:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyAdagradDA:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyCenteredRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyFtrl:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyFtrlV2:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyProximalAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyProximalGradientDescent:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseApplyRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseConcat:
  concat_dim:int ->
  [ `int64 ] t list ->
  't t list ->
  [ `int64 ] t list ->
    [ `int64 ] t * 't t * [ `int64 ] t

val sparseConditionalAccumulator:
  shape:int list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val sparseDenseCwiseAdd:
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseDenseCwiseDiv:
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseDenseCwiseMul:
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseFillEmptyRows:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
  't t ->
    [ `int64 ] t * 't t * [ `bool ] t * [ `int64 ] t

val sparseFillEmptyRowsGrad:
  [ `int64 ] t ->
  't t ->
    't t * 't t

val sparseMatMul:
  ?transpose_a:bool ->
  ?transpose_b:bool ->
  ?a_is_sparse:bool ->
  ?b_is_sparse:bool ->
  ([< `float ] as 'ta) t ->
  ([< `float ] as 'tb) t ->
    [ `float ] t

val sparseReduceMax:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val sparseReduceMaxSparse:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t * [ `int64 ] t

val sparseReduceSum:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseReduceSumSparse:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t * [ `int64 ] t

val sparseReorder:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `int64 ] t * 't t

val sparseReshape:
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `int64 ] t

val sparseSegmentMean:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

val sparseSegmentMeanGrad:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

val sparseSegmentMeanWithNumSegments:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
  ([< `int32 | `int64 ] as 'tnumsegments) t ->
    ([< `float | `double ] as 't) t

val sparseSegmentSqrtN:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

val sparseSegmentSqrtNGrad:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

val sparseSegmentSqrtNWithNumSegments:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
  ([< `int32 | `int64 ] as 'tnumsegments) t ->
    ([< `float | `double ] as 't) t

val sparseSegmentSum:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val sparseSegmentSumWithNumSegments:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
  ([< `int32 | `int64 ] as 'tnumsegments) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val sparseSlice:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `int64 ] t * 't t * [ `int64 ] t

val sparseSoftmax:
  [ `int64 ] t ->
  ([< `float | `double ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double ] as 't) t

val sparseSoftmaxCrossEntropyWithLogits:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tlabels) t ->
    ([< `float | `double ] as 't) t * ([< `float | `double ] as 't) t

val sparseSparseMaximum:
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val sparseSparseMinimum:
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseTensorDenseAdd:
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val sparseTensorDenseMatMul:
  ?adjoint_a:bool ->
  ?adjoint_b:bool ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
  [ `int64 ] t ->
  't t ->
    't t

val sparseTensorSliceDataset:
  [ `int64 ] t ->
  'tvalues t ->
  [ `int64 ] t ->
    [ `variant ] t

val sparseToDense:
  ?validate_indices:bool ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
  't t ->
    't t

val sparseToSparseSetOperation:
  set_operation:string ->
  ?validate_indices:bool ->
  [ `int64 ] t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
    [ `int64 ] t * ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t * [ `int64 ] t

val split:
  num_split:int ->
  [ `int32 ] t ->
  't t ->
    't t list

val splitV:
  num_split:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tlen) t ->
  [ `int32 ] t ->
    't t list

val sqlDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `string ] t ->
  [ `string ] t ->
  [ `string ] t ->
    [ `variant ] t

val sqrt:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val sqrtGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val square:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val squaredDifference:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val squeeze:
  ?squeeze_dims:int list ->
  't t ->
    't t

val stack:
  ?stack_name:string ->
  unit ->
    [ `string ] t

val stackClose:
  [ `string ] t ->
    unit

val stackCloseV2:
  [ `resource ] t ->
    unit

val stackPop:
  type_elem_type:'elem_type Type.t ->
  [ `string ] t ->
    'elem_type t

val stackPopV2:
  type_elem_type:'elem_type Type.t ->
  [ `resource ] t ->
    'elem_type t

val stackPush:
  ?swap_memory:bool ->
  [ `string ] t ->
  't t ->
    't t

val stackPushV2:
  ?swap_memory:bool ->
  [ `resource ] t ->
  't t ->
    't t

val stackV2:
  ?stack_name:string ->
  [ `int32 ] t ->
    [ `resource ] t

val stageClear:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    unit

val stageSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

val statelessRandomNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tseed) t ->
    ([< `float | `double ] as 'dtype) t

val statelessRandomUniform:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tseed) t ->
    ([< `float | `double ] as 'dtype) t

val statelessTruncatedNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tseed) t ->
    ([< `float | `double ] as 'dtype) t

val statsAggregatorHandle:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val statsAggregatorSummary:
  [ `resource ] t ->
    [ `string ] t

val stopGradient:
  't t ->
    't t

val stridedSlice:
  ?begin_mask:int ->
  ?end_mask:int ->
  ?ellipsis_mask:int ->
  ?new_axis_mask:int ->
  ?shrink_axis_mask:int ->
  't t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
    't t

val stridedSliceAssign:
  ?begin_mask:int ->
  ?end_mask:int ->
  ?ellipsis_mask:int ->
  ?new_axis_mask:int ->
  ?shrink_axis_mask:int ->
  't t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  't t ->
    't t

val stridedSliceGrad:
  ?begin_mask:int ->
  ?end_mask:int ->
  ?ellipsis_mask:int ->
  ?new_axis_mask:int ->
  ?shrink_axis_mask:int ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
  't t ->
    't t

val stringJoin:
  ?separator:string ->
  [ `string ] t list ->
    [ `string ] t

val stringSplit:
  ?skip_empty:bool ->
  [ `string ] t ->
  [ `string ] t ->
    [ `int64 ] t * [ `string ] t * [ `int64 ] t

val stringToHashBucket:
  num_buckets:int ->
  [ `string ] t ->
    [ `int64 ] t

val stringToHashBucketFast:
  num_buckets:int ->
  [ `string ] t ->
    [ `int64 ] t

val stringToHashBucketStrong:
  num_buckets:int ->
  key:int list ->
  [ `string ] t ->
    [ `int64 ] t

val stringToNumber:
  type_out_type:([< `float | `double | `int32 | `int64 ] as 'out_type) Type.t ->
  [ `string ] t ->
    ([< `float | `double | `int32 | `int64 ] as 'out_type) t

val sub:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

val substr:
  [ `string ] t ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    [ `string ] t

val sum:
  ?keep_dims:bool ->
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val svd:
  ?compute_uv:bool ->
  ?full_matrices:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t

val switch:
  't t ->
  [ `bool ] t ->
    't t * 't t

val tFRecordDataset:
  [ `string ] t ->
  [ `string ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val tFRecordReader:
  ?container:string ->
  ?shared_name:string ->
  ?compression_type:string ->
  unit ->
    [ `string ] t

val tFRecordReaderV2:
  ?container:string ->
  ?shared_name:string ->
  ?compression_type:string ->
  unit ->
    [ `resource ] t

val takeDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val takeManySparseFromTensorsMap:
  type_dtype:'dtype Type.t ->
  ?container:string ->
  ?shared_name:string ->
  [ `int64 ] t ->
    [ `int64 ] t * 'dtype t * [ `int64 ] t

val tan:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

val tanh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val tanhGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

val temporaryVariable:
  type_dtype:'dtype Type.t ->
  shape:int list ->
  ?var_name:string ->
  unit ->
    'dtype t

val tensorArray:
  ?dynamic_size:bool ->
  ?clear_after_read:bool ->
  ?tensor_array_name:string ->
  ?element_shape:int list ->
  [ `int32 ] t ->
    [ `string ] t

val tensorArrayClose:
  [ `string ] t ->
    unit

val tensorArrayCloseV2:
  [ `string ] t ->
    unit

val tensorArrayCloseV3:
  [ `resource ] t ->
    unit

val tensorArrayConcat:
  type_dtype:'dtype Type.t ->
  ?element_shape_except0:int list ->
  [ `string ] t ->
  [ `float ] t ->
    'dtype t * [ `int64 ] t

val tensorArrayConcatV2:
  type_dtype:'dtype Type.t ->
  ?element_shape_except0:int list ->
  [ `string ] t ->
  [ `float ] t ->
    'dtype t * [ `int64 ] t

val tensorArrayConcatV3:
  type_dtype:'dtype Type.t ->
  ?element_shape_except0:int list ->
  [ `resource ] t ->
  [ `float ] t ->
    'dtype t * [ `int64 ] t

val tensorArrayGather:
  type_dtype:'dtype Type.t ->
  ?element_shape:int list ->
  [ `string ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

val tensorArrayGatherV2:
  type_dtype:'dtype Type.t ->
  ?element_shape:int list ->
  [ `string ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

val tensorArrayGatherV3:
  type_dtype:'dtype Type.t ->
  ?element_shape:int list ->
  [ `resource ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

val tensorArrayGrad:
  source:string ->
  [ `string ] t ->
  [ `float ] t ->
    [ `string ] t

val tensorArrayGradV2:
  source:string ->
  [ `string ] t ->
  [ `float ] t ->
    [ `string ] t

val tensorArrayGradV3:
  source:string ->
  [ `resource ] t ->
  [ `float ] t ->
    [ `resource ] t * [ `float ] t

val tensorArrayPack:
  type_dtype:'dtype Type.t ->
  ?element_shape:int list ->
  [ `string ] t ->
  [ `float ] t ->
    'dtype t

val tensorArrayRead:
  type_dtype:'dtype Type.t ->
  [ `string ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

val tensorArrayReadV2:
  type_dtype:'dtype Type.t ->
  [ `string ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

val tensorArrayReadV3:
  type_dtype:'dtype Type.t ->
  [ `resource ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

val tensorArrayScatter:
  [ `string ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

val tensorArrayScatterV2:
  [ `string ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

val tensorArrayScatterV3:
  [ `resource ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

val tensorArraySize:
  [ `string ] t ->
  [ `float ] t ->
    [ `int32 ] t

val tensorArraySizeV2:
  [ `string ] t ->
  [ `float ] t ->
    [ `int32 ] t

val tensorArraySizeV3:
  [ `resource ] t ->
  [ `float ] t ->
    [ `int32 ] t

val tensorArraySplit:
  [ `string ] t ->
  't t ->
  [ `int64 ] t ->
  [ `float ] t ->
    [ `float ] t

val tensorArraySplitV2:
  [ `string ] t ->
  't t ->
  [ `int64 ] t ->
  [ `float ] t ->
    [ `float ] t

val tensorArraySplitV3:
  [ `resource ] t ->
  't t ->
  [ `int64 ] t ->
  [ `float ] t ->
    [ `float ] t

val tensorArrayUnpack:
  [ `string ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

val tensorArrayV2:
  ?element_shape:int list ->
  ?dynamic_size:bool ->
  ?clear_after_read:bool ->
  ?tensor_array_name:string ->
  [ `int32 ] t ->
    [ `string ] t

val tensorArrayV3:
  ?element_shape:int list ->
  ?dynamic_size:bool ->
  ?clear_after_read:bool ->
  ?identical_element_shapes:bool ->
  ?tensor_array_name:string ->
  [ `int32 ] t ->
    [ `resource ] t * [ `float ] t

val tensorArrayWrite:
  [ `string ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

val tensorArrayWriteV2:
  [ `string ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

val tensorArrayWriteV3:
  [ `resource ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

val tensorListElementShape:
  type_shape_type:([< `int32 | `int64 ] as 'shape_type) Type.t ->
  [ `variant ] t ->
    ([< `int32 | `int64 ] as 'shape_type) t

val tensorListFromTensor:
  'element_dtype t ->
  ([< `int32 | `int64 ] as 'shape_type) t ->
    [ `variant ] t

val tensorListGetItem:
  type_element_dtype:'element_dtype Type.t ->
  [ `variant ] t ->
  [ `int32 ] t ->
    'element_dtype t

val tensorListLength:
  [ `variant ] t ->
    [ `int32 ] t

val tensorListPopBack:
  type_element_dtype:'element_dtype Type.t ->
  [ `variant ] t ->
    [ `variant ] t * 'element_dtype t

val tensorListPushBack:
  [ `variant ] t ->
  'element_dtype t ->
    [ `variant ] t

val tensorListReserve:
  ([< `int32 | `int64 ] as 'shape_type) t ->
  [ `int32 ] t ->
    [ `variant ] t

val tensorListSetItem:
  [ `variant ] t ->
  [ `int32 ] t ->
  'element_dtype t ->
    [ `variant ] t

val tensorListStack:
  type_element_dtype:'element_dtype Type.t ->
  ?num_elements:int ->
  [ `variant ] t ->
    'element_dtype t

val tensorSummary:
  ?description:string ->
  ?display_name:string ->
  't t ->
    [ `string ] t

val tensorSummaryV2:
  [ `string ] t ->
  't t ->
  [ `string ] t ->
    [ `string ] t

val textLineDataset:
  [ `string ] t ->
  [ `string ] t ->
  [ `int64 ] t ->
    [ `variant ] t

val textLineReader:
  ?skip_header_lines:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val textLineReaderV2:
  ?skip_header_lines:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val threadUnsafeUnigramCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

val tile:
  't t ->
  ([< `int32 | `int64 ] as 'tmultiples) t ->
    't t

val tileGrad:
  't t ->
  [ `int32 ] t ->
    't t

val timestamp:
  unit ->
    [ `double ] t

val topK:
  k:int ->
  ?sorted:bool ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t * [ `int32 ] t

val topKV2:
  ?sorted:bool ->
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t * [ `int32 ] t

val transpose:
  't t ->
  ([< `int32 | `int64 ] as 'tperm) t ->
    't t

val truncateDiv:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

val truncateMod:
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

val truncatedNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `float | `double ] as 'dtype) t

val unbatch:
  timeout_micros:int ->
  ?container:string ->
  ?shared_name:string ->
  't t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    't t

val unbatchGrad:
  ?container:string ->
  ?shared_name:string ->
  't t ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    't t

val uniformCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

val unique:
  type_out_idx:([< `int32 | `int64 ] as 'out_idx) Type.t ->
  't t ->
    't t * ([< `int32 | `int64 ] as 'out_idx) t

val uniqueV2:
  type_out_idx:([< `int32 | `int64 ] as 'out_idx) Type.t ->
  't t ->
  ([< `int32 | `int64 ] as 'taxis) t ->
    't t * ([< `int32 | `int64 ] as 'out_idx) t

val uniqueWithCounts:
  type_out_idx:([< `int32 | `int64 ] as 'out_idx) Type.t ->
  't t ->
    't t * ([< `int32 | `int64 ] as 'out_idx) t * ([< `int32 | `int64 ] as 'out_idx) t

val unpack:
  num:int ->
  ?axis:int ->
  't t ->
    't t list

val unravelIndex:
  ([< `int32 | `int64 ] as 'tidx) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `int32 | `int64 ] as 'tidx) t

val unsortedSegmentMax:
  ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `int32 | `int64 ] as 'tnumsegments) t ->
    ([< `float | `double | `int32 | `uInt8 | `int64 | `uInt16 ] as 't) t

val unsortedSegmentSum:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `int32 | `int64 ] as 'tnumsegments) t ->
    ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 ] as 't) t

val varHandleOp:
  ?container:string ->
  ?shared_name:string ->
  shape:int list ->
  unit ->
    [ `resource ] t

val varIsInitializedOp:
  [ `resource ] t ->
    [ `bool ] t

val variableShape:
  type_out_type:([< `int32 | `int64 ] as 'out_type) Type.t ->
  [ `resource ] t ->
    ([< `int32 | `int64 ] as 'out_type) t

val where:
  ([< `float | `double | `int32 | `uInt8 | `complex64 | `int64 | `uInt16 | `bool ] as 't) t ->
    [ `int64 ] t

val wholeFileReader:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

val wholeFileReaderV2:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

val writeFile:
  [ `string ] t ->
  [ `string ] t ->
    unit

val zerosLike:
  't t ->
    't t

val zeta:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

val zipDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t list ->
    [ `variant ] t

