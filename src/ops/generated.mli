(* THIS FILE HAS BEEN AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND! *)

open Tf_core

type 'a t = 'a Op.Tensor_handle.t
module Dim = Operation.Dim
module Type = Operation.Type

module Op_names : sig
  val abort : Op.Name.t
  val abs : Op.Name.t
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
  val applyCenteredRMSProp : Op.Name.t
  val applyFtrl : Op.Name.t
  val applyFtrlV2 : Op.Name.t
  val applyGradientDescent : Op.Name.t
  val applyMomentum : Op.Name.t
  val applyProximalAdagrad : Op.Name.t
  val applyProximalGradientDescent : Op.Name.t
  val applyRMSProp : Op.Name.t
  val approximateEqual : Op.Name.t
  val argMax : Op.Name.t
  val argMin : Op.Name.t
  val asString : Op.Name.t
  val asin : Op.Name.t
  val asinh : Op.Name.t
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
  val debugGradientIdentity : Op.Name.t
  val debugIdentity : Op.Name.t
  val debugNanCount : Op.Name.t
  val debugNumericSummary : Op.Name.t
  val decodeAndCropJpeg : Op.Name.t
  val decodeBase64 : Op.Name.t
  val decodeBmp : Op.Name.t
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
  val deserializeManySparse : Op.Name.t
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
  val hSVToRGB : Op.Name.t
  val hashTable : Op.Name.t
  val hashTableV2 : Op.Name.t
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
  val ignoreErrorsDataset : Op.Name.t
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
  val iteratorToStringHandle : Op.Name.t
  val l2Loss : Op.Name.t
  val lMDBReader : Op.Name.t
  val lRN : Op.Name.t
  val lRNGrad : Op.Name.t
  val learnedUnigramCandidateSampler : Op.Name.t
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
  val matrixInverse : Op.Name.t
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
  val neg : Op.Name.t
  val negTrain : Op.Name.t
  val nextIteration : Op.Name.t
  val noOp : Op.Name.t
  val nonMaxSuppression : Op.Name.t
  val nonMaxSuppressionV2 : Op.Name.t
  val notEqual : Op.Name.t
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
  val resourceApplyCenteredRMSProp : Op.Name.t
  val resourceApplyFtrl : Op.Name.t
  val resourceApplyFtrlV2 : Op.Name.t
  val resourceApplyGradientDescent : Op.Name.t
  val resourceApplyMomentum : Op.Name.t
  val resourceApplyProximalAdagrad : Op.Name.t
  val resourceApplyProximalGradientDescent : Op.Name.t
  val resourceApplyRMSProp : Op.Name.t
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
  val restoreIterator : Op.Name.t
  val restoreSlice : Op.Name.t
  val reverse : Op.Name.t
  val reverseSequence : Op.Name.t
  val reverseV2 : Op.Name.t
  val rint : Op.Name.t
  val round : Op.Name.t
  val rsqrt : Op.Name.t
  val rsqrtGrad : Op.Name.t
  val saveIterator : Op.Name.t
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
  val serializeManySparse : Op.Name.t
  val serializeSparse : Op.Name.t
  val serializeTensor : Op.Name.t
  val setSize : Op.Name.t
  val shape : Op.Name.t
  val shapeN : Op.Name.t
  val shardedFilename : Op.Name.t
  val shardedFilespec : Op.Name.t
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
  val sparseSegmentSqrtN : Op.Name.t
  val sparseSegmentSqrtNGrad : Op.Name.t
  val sparseSegmentSum : Op.Name.t
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
  val tensorSummary : Op.Name.t
  val tensorSummaryV2 : Op.Name.t
  val textLineDataset : Op.Name.t
  val textLineReader : Op.Name.t
  val textLineReaderV2 : Op.Name.t
  val threadUnsafeUnigramCandidateSampler : Op.Name.t
  val tile : Op.Name.t
  val tileGrad : Op.Name.t
  val topK : Op.Name.t
  val topKV2 : Op.Name.t
  val transpose : Op.Name.t
  val truncateDiv : Op.Name.t
  val truncateMod : Op.Name.t
  val truncatedNormal : Op.Name.t
  val uniformCandidateSampler : Op.Name.t
  val unique : Op.Name.t
  val uniqueWithCounts : Op.Name.t
  val unpack : Op.Name.t
  val unsortedSegmentMax : Op.Name.t
  val unsortedSegmentSum : Op.Name.t
  val where : Op.Name.t
  val wholeFileReader : Op.Name.t
  val wholeFileReaderV2 : Op.Name.t
  val writeFile : Op.Name.t
  val zerosLike : Op.Name.t
  val zeta : Op.Name.t
  val zipDataset : Op.Name.t
end

(* Raise a exception to abort the process when called. *)
(* If exit_without_error is true, the process will exit normally,
otherwise it will exit with a SIGABORT signal.

Returns nothing but an exception. *)
val abort:
  ?error_msg:string ->
  ?exit_without_error:bool ->
  unit ->
    unit

(* Computes the absolute value of a tensor. *)
(* Given a tensor `x`, this operation returns a tensor containing the absolute
value of each element in `x`. For example, if x is an input element and y is
an output element, this operation computes \\(y = |x|\\). *)
val abs:
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

(* Applies a gradient to a given accumulator. *)
(* Does not add if local_step is lesser than the accumulator's global_step. *)
val accumulatorApplyGradient:
  [ `string ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t ->
    unit

(* Returns the number of gradients aggregated in the given accumulators. *)
val accumulatorNumAccumulated:
  [ `string ] t ->
    [ `int32 ] t

(* Updates the accumulator with a new value for global_step. *)
(* Logs warning if the accumulator's value is already higher than
new_global_step. *)
val accumulatorSetGlobalStep:
  [ `string ] t ->
  [ `int64 ] t ->
    unit

(* Extracts the average gradient in the given ConditionalAccumulator. *)
(* The op blocks until sufficient (i.e., more than num_required)
gradients have been accumulated.  If the accumulator has already
aggregated more than num_required gradients, it returns the average of
the accumulated gradients.  Also automatically increments the recorded
global_step in the accumulator by 1, and resets the aggregate to 0. *)
val accumulatorTakeGradient:
  type_dtype:([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) Type.t ->
  [ `string ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t

(* Computes acos of x element-wise. *)
val acos:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes inverse hyperbolic cosine of x element-wise. *)
val acosh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Returns x + y element-wise. *)
(* *NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val add:
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t ->
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t ->
    ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string ] as 't) t

(* Add an `N`-minibatch `SparseTensor` to a `SparseTensorsMap`, return `N` handles. *)
(* A `SparseTensor` of rank `R` is represented by three tensors: `sparse_indices`,
`sparse_values`, and `sparse_shape`, where

```sparse_indices.shape[1] == sparse_shape.shape[0] == R```

An `N`-minibatch of `SparseTensor` objects is represented as a `SparseTensor`
having a first `sparse_indices` column taking values between `[0, N)`, where
the minibatch size `N == sparse_shape[0]`.

The input `SparseTensor` must have rank `R` greater than 1, and the first
dimension is treated as the minibatch dimension.  Elements of the `SparseTensor`
must be sorted in increasing order of this first dimension.  The stored
`SparseTensor` objects pointed to by each row of the output `sparse_handles`
will have rank `R-1`.

The `SparseTensor` values can then be read out as part of a minibatch by passing
the given keys as vector elements to `TakeManySparseFromTensorsMap`.  To ensure
the correct `SparseTensorsMap` is accessed, ensure that the same
`container` and `shared_name` are passed to that Op.  If no `shared_name`
is provided here, instead use the *name* of the Operation created by calling
`AddManySparseToTensorsMap` as the `shared_name` passed to
`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated. *)
val addManySparseToTensorsMap:
  ?container:string ->
  ?shared_name:string ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `int64 ] t

(* Add all input tensors element wise. *)
val addN:
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 | `variant ] as 't) t list ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 | `variant ] as 't) t

(* Add a `SparseTensor` to a `SparseTensorsMap` return its handle. *)
(* A `SparseTensor` is represented by three tensors: `sparse_indices`,
`sparse_values`, and `sparse_shape`.

This operator takes the given `SparseTensor` and adds it to a container
object (a `SparseTensorsMap`).  A unique key within this container is generated
in the form of an `int64`, and this is the value that is returned.

The `SparseTensor` can then be read out as part of a minibatch by passing
the key as a vector element to `TakeManySparseFromTensorsMap`.  To ensure
the correct `SparseTensorsMap` is accessed, ensure that the same
`container` and `shared_name` are passed to that Op.  If no `shared_name`
is provided here, instead use the *name* of the Operation created by calling
`AddSparseToTensorsMap` as the `shared_name` passed to
`TakeManySparseFromTensorsMap`.  Ensure the Operations are colocated. *)
val addSparseToTensorsMap:
  ?container:string ->
  ?shared_name:string ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `int64 ] t

(* Deprecated. Disallowed in GraphDef version >= 2. *)
val adjustContrast:
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Adjust the contrast of one or more images. *)
(* `images` is a tensor of at least 3 dimensions.  The last 3 dimensions are
interpreted as `[height, width, channels]`.  The other dimensions only
represent a collection of images, such as `[batch, height, width, channels].`

Contrast is adjusted independently for each channel of each image.

For each channel, the Op first computes the mean of the image pixels in the
channel and then adjusts each component of each pixel to
`(x - mean) * contrast_factor + mean`. *)
val adjustContrastv2:
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Adjust the hue of one or more images. *)
(* `images` is a tensor of at least 3 dimensions.  The last dimension is
interpretted as channels, and must be three.

The input image is considered in the RGB colorspace. Conceptually, the RGB
colors are first mapped into HSV. A delta is then applied all the hue values,
and then remapped back to RGB colorspace. *)
val adjustHue:
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Adjust the saturation of one or more images. *)
(* `images` is a tensor of at least 3 dimensions.  The last dimension is
interpretted as channels, and must be three.

The input image is considered in the RGB colorspace. Conceptually, the RGB
colors are first mapped into HSV. A scale is then applied all the saturation
values, and then remapped back to RGB colorspace. *)
val adjustSaturation:
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Computes the 'logical and' of elements across dimensions of a tensor. *)
(* Reduces `input` along the dimensions given in `reduction_indices`. Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_indices`. If `keep_dims` is true, the reduced dimensions are
retained with length 1. *)
val all:
  ?keep_dims:bool ->
  [ `bool ] t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    [ `bool ] t

(* Generates labels for candidate sampling with a learned unigram distribution. *)
(* See explanations of candidate sampling and the data formats at
go/candidate-sampling.

For each batch, this op picks a single set of sampled candidate labels.

The advantages of sampling candidates per-batch are simplicity and the
possibility of efficient dense matrix multiplication. The disadvantage is that
the sampled candidates must be chosen independently of the context and of the
true labels. *)
val allCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

(* Returns the argument of a complex number. *)
(* Given a tensor `input` of complex numbers, this operation returns a tensor of
type `float` that is the argument of each element in `input`. All elements in
`input` must be complex numbers of the form \\(a + bj\\), where *a*
is the real part and *b* is the imaginary part.

The argument returned by this operation is of the form \\(atan2(b, a)\\).

For example:

```
# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
tf.angle(input) ==> [2.0132, 1.056]
```

@compatibility(numpy)
Equivalent to np.angle.
@end_compatibility *)
val angle:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

(* Computes the 'logical or' of elements across dimensions of a tensor. *)
(* Reduces `input` along the dimensions given in `reduction_indices`. Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_indices`. If `keep_dims` is true, the reduced dimensions are
retained with length 1. *)
val any:
  ?keep_dims:bool ->
  [ `bool ] t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    [ `bool ] t

(* Update '*var' according to the adadelta scheme. *)
(* accum = rho() * accum + (1 - rho()) * grad.square();
update = (update_accum + epsilon).sqrt() * (accum + epsilon()).rsqrt() * grad;
update_accum = rho() * update_accum + (1 - rho()) * update.square();
var -= update; *)
val applyAdadelta:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the adagrad scheme. *)
(* accum += grad * grad
var -= lr * grad * (1 / sqrt(accum)) *)
val applyAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the proximal adagrad scheme. *)
val applyAdagradDA:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the Adam algorithm. *)
(* lr_t <- learning_rate * sqrt(1 - beta2^t) / (1 - beta1^t)
m_t <- beta1 * m_{t-1} + (1 - beta1) * g_t
v_t <- beta2 * v_{t-1} + (1 - beta2) * g_t * g_t
variable <- variable - lr_t * m_t / (sqrt(v_t) + epsilon) *)
val applyAdam:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the centered RMSProp algorithm. *)
(* The centered RMSProp algorithm uses an estimate of the centered second moment
(i.e., the variance) for normalization, as opposed to regular RMSProp, which
uses the (uncentered) second moment. This often helps with training, but is
slightly more expensive in terms of computation and memory.

Note that in dense implementation of this algorithm, mg, ms, and mom will
update even if the grad is zero, but in this sparse implementation, mg, ms,
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
mean_grad = decay * mean_grad + (1-decay) * gradient

Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)

mg <- rho * mg_{t-1} + (1-rho) * grad
ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms - mg * mg + epsilon)
var <- var - mom *)
val applyCenteredRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the Ftrl-proximal scheme. *)
(* accum_new = accum + grad * grad
linear += grad + (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val applyFtrl:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the Ftrl-proximal scheme. *)
(* grad_with_shrinkage = grad + 2 * l2_shrinkage * var
accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
linear += grad_with_shrinkage +
    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val applyFtrlV2:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' by subtracting 'alpha' * 'delta' from it. *)
val applyGradientDescent:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the momentum scheme. Set use_nesterov = True if you *)
(* want to use Nesterov momentum.

accum = accum * momentum + grad
var -= lr * accum *)
val applyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' and '*accum' according to FOBOS with Adagrad learning rate. *)
(* accum += grad * grad
prox_v = var - lr * grad * (1 / sqrt(accum))
var = sign(prox_v)/(1+lr*l2) * max{ |prox_v|-lr*l1,0} *)
val applyProximalAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' as FOBOS algorithm with fixed learning rate. *)
(* prox_v = var - alpha * delta
var = sign(prox_v)/(1+alpha*l2) * max{ |prox_v|-alpha*l1,0} *)
val applyProximalGradientDescent:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the RMSProp algorithm. *)
(* Note that in dense implementation of this algorithm, ms and mom will
update even if the grad is zero, but in this sparse implementation, ms
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
Delta = learning_rate * gradient / sqrt(mean_square + epsilon)

ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
var <- var - mom *)
val applyRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Returns the truth value of abs(x-y) < tolerance element-wise. *)
val approximateEqual:
  ?tolerance:float ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    [ `bool ] t

(* Returns the index with the largest value across dimensions of a tensor. *)
(* Note that in case of ties the identity of the return value is not guaranteed. *)
val argMax:
  type_output_type:([< `int32 | `int64 ] as 'output_type) Type.t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `int32 | `int64 ] as 'output_type) t

(* Returns the index with the smallest value across dimensions of a tensor. *)
(* Note that in case of ties the identity of the return value is not guaranteed. *)
val argMin:
  type_output_type:([< `int32 | `int64 ] as 'output_type) Type.t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `int32 | `int64 ] as 'output_type) t

(* Converts each entry in the given tensor to strings.  Supports many numeric *)
(* types and boolean. *)
val asString:
  ?precision:int ->
  ?scientific:bool ->
  ?shortest:bool ->
  ?width:int ->
  ?fill:string ->
  ([< `int32 | `int64 | `complex64 | `float | `double | `bool ] as 't) t ->
    [ `string ] t

(* Computes asin of x element-wise. *)
val asin:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes inverse hyperbolic sine of x element-wise. *)
val asinh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes atan of x element-wise. *)
val atan:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes arctangent of `y/x` element-wise, respecting signs of the arguments. *)
(* This is the angle \( \theta \in [-\pi, \pi] \) such that
\[ x = r \cos(\theta) \]
and
\[ y = r \sin(\theta) \]
where \(r = \sqrt(x^2 + y^2) \). *)
val atan2:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes inverse hyperbolic tangent of x element-wise. *)
val atanh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Produces a visualization of audio data over time. *)
(* Spectrograms are a standard way of representing audio information as a series of
slices of frequency information, one slice for each window of time. By joining
these together into a sequence, they form a distinctive fingerprint of the sound
over time.

This op expects to receive audio data as an input, stored as floats in the range
-1 to 1, together with a window width in samples, and a stride specifying how
far to move the window between slices. From this it generates a three
dimensional output. The lowest dimension has an amplitude value for each
frequency during that time slice. The next dimension is time, with successive
frequency slices. The final dimension is for the channels in the input, so a
stereo audio input would have two here for example.

This means the layout when converted and saved as an image is rotated 90 degrees
clockwise from a typical spectrogram. Time is descending down the Y axis, and
the frequency decreases from left to right.

Each value in the result represents the square root of the sum of the real and
imaginary parts of an FFT on the current window of samples. In this way, the
lowest dimension represents the power of each frequency in the current window,
and adjacent windows are concatenated in the next dimension.

To get a more intuitive and visual look at what this operation does, you can run
tensorflow/examples/wav_to_spectrogram to read in an audio file and save out the
resulting spectrogram as a PNG image. *)
val audioSpectrogram:
  window_size:int ->
  stride:int ->
  ?magnitude_squared:bool ->
  [ `float ] t ->
    [ `float ] t

(* Outputs a `Summary` protocol buffer with audio. *)
(* The summary has up to `max_outputs` summary values containing audio. The
audio is built from `tensor` which must be 3-D with shape `[batch_size,
frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
assumed to be in the range of `[-1.0, 1.0]` with a sample rate of `sample_rate`.

The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
build the `tag` of the summary values:

*  If `max_outputs` is 1, the summary value tag is '*tag*/audio'.
*  If `max_outputs` is greater than 1, the summary value tags are
   generated sequentially as '*tag*/audio/0', '*tag*/audio/1', etc. *)
val audioSummary:
  sample_rate:float ->
  ?max_outputs:int ->
  [ `string ] t ->
  [ `float ] t ->
    [ `string ] t

(* Outputs a `Summary` protocol buffer with audio. *)
(* The summary has up to `max_outputs` summary values containing audio. The
audio is built from `tensor` which must be 3-D with shape `[batch_size,
frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
assumed to be in the range of `[-1.0, 1.0]` with a sample rate of `sample_rate`.

The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
build the `tag` of the summary values:

*  If `max_outputs` is 1, the summary value tag is '*tag*/audio'.
*  If `max_outputs` is greater than 1, the summary value tags are
   generated sequentially as '*tag*/audio/0', '*tag*/audio/1', etc. *)
val audioSummaryV2:
  ?max_outputs:int ->
  [ `string ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `string ] t

(* Performs average pooling on the input. *)
(* Each entry in `output` is the mean of the corresponding size `ksize`
window in `value`. *)
val avgPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Performs 3D average pooling on the input. *)
val avgPool3D:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes gradients of average pooling function. *)
val avgPool3DGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes gradients of the average pooling function. *)
val avgPoolGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Defines a barrier that persists across different graph executions. *)
(* A barrier represents a key-value map, where each key is a string, and
each value is a tuple of tensors.

At runtime, the barrier contains 'complete' and 'incomplete'
elements. A complete element has defined tensors for all components of
its value tuple, and may be accessed using BarrierTakeMany. An
incomplete element has some undefined components in its value tuple,
and may be updated using BarrierInsertMany. *)
val barrier:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* Closes the given barrier. *)
(* This operation signals that no more new elements will be inserted in the
given barrier. Subsequent InsertMany that try to introduce a new key will fail.
Subsequent InsertMany operations that just add missing components to already
existing elements will continue to succeed. Subsequent TakeMany operations will
continue to succeed if sufficient completed elements remain in the barrier.
Subsequent TakeMany operations that would block will fail immediately. *)
val barrierClose:
  ?cancel_pending_enqueues:bool ->
  [ `string ] t ->
    unit

(* Computes the number of incomplete elements in the given barrier. *)
val barrierIncompleteSize:
  [ `string ] t ->
    [ `int32 ] t

(* For each key, assigns the respective value to the specified component. *)
(* If a key is not found in the barrier, this operation will create a new
incomplete element. If a key is found in the barrier, and the element
already has a value at component_index, this operation will fail with
INVALID_ARGUMENT, and leave the barrier in an undefined state. *)
val barrierInsertMany:
  component_index:int ->
  [ `string ] t ->
  [ `string ] t ->
  't t ->
    unit

(* Computes the number of complete elements in the given barrier. *)
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

(* Creates a dataset that batches `batch_size` elements from `input_dataset`. *)
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

(* Multiplies slices of two tensors in batches. *)
(* Multiplies all slices of `Tensor` `x` and `y` (each slice can be
viewed as an element of a batch), and arranges the individual results
in a single output tensor of the same batch size. Each of the
individual slices can optionally be adjointed (to adjoint a matrix
means to transpose and conjugate it) before multiplication by setting
the `adj_x` or `adj_y` flag to `True`, which are by default `False`.

The input tensors `x` and `y` are 2-D or higher with shape `[..., r_x, c_x]`
and `[..., r_y, c_y]`.

The output tensor is 2-D or higher with shape `[..., r_o, c_o]`, where:

    r_o = c_x if adj_x else r_x
    c_o = r_y if adj_y else c_y

It is computed as:

    output[..., :, :] = matrix(x[..., :, :]) * matrix(y[..., :, :]) *)
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

(* Batch normalization. *)
(* This op is deprecated. Prefer `tf.nn.batch_normalization`. *)
val batchNormWithGlobalNormalization:
  variance_epsilon:float ->
  scale_after_normalization:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Gradients for batch normalization. *)
(* This op is deprecated. See `tf.nn.batch_normalization`. *)
val batchNormWithGlobalNormalizationGrad:
  variance_epsilon:float ->
  scale_after_normalization:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

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

(* BatchToSpace for 4-D tensors of type T. *)
(* This is a legacy version of the more general BatchToSpaceND.

Rearranges (permutes) data from batch into blocks of spatial data, followed by
cropping. This is the reverse transformation of SpaceToBatch. More specifically,
this op outputs a copy of the input tensor where values from the `batch`
dimension are moved in spatial blocks to the `height` and `width` dimensions,
followed by cropping along the `height` and `width` dimensions. *)
val batchToSpace:
  block_size:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    't t

(* BatchToSpace for N-D tensors of type T. *)
(* This operation reshapes the 'batch' dimension 0 into `M + 1` dimensions of shape
`block_shape + [batch]`, interleaves these blocks back into the grid defined by
the spatial dimensions `[1, ..., M]`, to obtain a result with the same rank as
the input.  The spatial dimensions of this intermediate result are then
optionally cropped according to `crops` to produce the output.  This is the
reverse of SpaceToBatch.  See below for a precise description. *)
val batchToSpaceND:
  't t ->
  ([< `int32 | `int64 ] as 'tblock_shape) t ->
  ([< `int32 | `int64 ] as 'tcrops) t ->
    't t

(* Compute the regularized incomplete beta integral \\(I_x(a, b)\\). *)
(* The regularized incomplete beta integral is defined as:


\\(I_x(a, b) = \frac{B(x; a, b)}{B(a, b)}\\)

where


\\(B(x; a, b) = \int_0^x t^{a-1} (1 - t)^{b-1} dt\\)


is the incomplete beta function and \\(B(a, b)\\) is the *complete*
beta function. *)
val betainc:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Adds `bias` to `value`. *)
(* This is a special case of `tf.add` where `bias` is restricted to be 1-D.
Broadcasting is supported, so `value` may have any number of dimensions. *)
val biasAdd:
  ?data_format:string ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* The backward operation for 'BiasAdd' on the 'bias' tensor. *)
(* It accumulates all the values from out_backprop into the feature dimension.
For NHWC data format, the feature dimension is the last. For NCHW data format,
the feature dimension is the third-to-last. *)
val biasAddGrad:
  ?data_format:string ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Adds `bias` to `value`. *)
(* This is a deprecated version of BiasAdd and will be soon removed.

This is a special case of `tf.add` where `bias` is restricted to be 1-D.
Broadcasting is supported, so `value` may have any number of dimensions. *)
val biasAddV1:
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Counts the number of occurrences of each value in an integer array. *)
(* Outputs a vector with length `size` and the same dtype as `weights`. If
`weights` are empty, then index `i` stores the number of times the value `i` is
counted in `arr`. If `weights` are non-empty, then index `i` stores the sum of
the value in `weights` at each index where the corresponding value in `arr` is
`i`.

Values in `arr` outside of the range [0, size) are ignored. *)
val bincount:
  [ `int32 ] t ->
  [ `int32 ] t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

(* Bitcasts a tensor from one type to another without copying data. *)
(* Given a tensor `input`, this operation returns a tensor that has the same buffer
data as `input` with datatype `type`.

If the input datatype `T` is larger than the output datatype `type` then the
shape changes from [...] to [..., sizeof(`T`)/sizeof(`type`)].

If `T` is smaller than `type`, the operator requires that the rightmost
dimension be equal to sizeof(`type`)/sizeof(`T`). The shape then goes from
[..., sizeof(`type`)/sizeof(`T`)] to [...].

*NOTE*: Bitcast is implemented as a low-level cast, so machines with different
endian orderings will give different results. *)
val bitcast:
  type_type__:([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'type__) Type.t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'type__) t

(* Elementwise computes the bitwise AND of `x` and `y`. *)
(* The result will have those bits set, that are set in both `x` and `y`. The
computation is performed on the underlying representations of `x` and `y`. *)
val bitwiseAnd:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Elementwise computes the bitwise OR of `x` and `y`. *)
(* The result will have those bits set, that are set in `x`, `y` or both. The
computation is performed on the underlying representations of `x` and `y`. *)
val bitwiseOr:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Elementwise computes the bitwise XOR of `x` and `y`. *)
(* The result will have those bits set, that are different in `x` and `y`. The
computation is performed on the underlying representations of `x` and `y`. *)
val bitwiseXor:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Return the shape of s0 op s1 with broadcast. *)
(* Given `s0` and `s1`, tensors that represent shapes, compute `r0`, the
broadcasted shape. `s0`, `s1` and `r0` are all integer vectors. *)
val broadcastArgs:
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

(* Return the reduction indices for computing gradients of s0 op s1 with broadcast. *)
(* This is typically used by gradient computations for a broadcasting operation. *)
val broadcastGradientArgs:
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t * ([< `int32 | `int64 ] as 't) t

(* Bucketizes 'input' based on 'boundaries'. *)
(* For example, if the inputs are
    boundaries = [0, 10, 100]
    input = [[-5, 10000]
             [150,   10]
             [5,    100]]

then the output will be
    output = [[0, 3]
              [3, 2]
              [1, 3]] *)
val bucketize:
  boundaries:float list ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    [ `int32 ] t

(* Performs greedy decoding on the logits given in inputs. *)
(* A note about the attribute merge_repeated: if enabled, when
consecutive logits' maximum indices are the same, only the first of
these is emitted.  Labeling the blank '*', the sequence 'A B B * B B'
becomes 'A B B' if merge_repeated = True and 'A B B B B' if
merge_repeated = False.

Regardless of the value of merge_repeated, if the maximum index of a given
time and batch corresponds to the blank, index `(num_classes - 1)`, no new
element is emitted. *)
val cTCGreedyDecoder:
  ?merge_repeated:bool ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * [ `int64 ] t * [ `int64 ] t * [ `float ] t

(* Calculates the CTC Loss (log probability) for each batch entry.  Also calculates *)
(* the gradient.  This class performs the softmax operation for you, so inputs
should be e.g. linear projections of outputs by an LSTM. *)
val cTCLoss:
  ?preprocess_collapse_repeated:bool ->
  ?ctc_merge_repeated:bool ->
  ?ignore_longer_outputs_than_inputs:bool ->
  [ `float ] t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    [ `float ] t * [ `float ] t

(* Creates a dataset that caches elements from `input_dataset`. *)
(* A CacheDataset will iterate over the input_dataset, and store tensors. If the
cache already exists, the cache will be used. If the cache is inappropriate
(e.g. cannot be opened, contains tensors of the wrong shape / size), an error
will the returned when used. *)
val cacheDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `string ] t ->
    [ `variant ] t

(* Cast x of type SrcT to y of DstT. *)
val cast:
  type_dstT:'dstT Type.t ->
  'srcT t ->
    'dstT t

(* Returns element-wise smallest integer in not less than x. *)
val ceil:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Checks a tensor for NaN and Inf values. *)
(* When run, reports an `InvalidArgument` error if `tensor` has any values
that are not a number (NaN) or infinity (Inf). Otherwise, passes `tensor` as-is. *)
val checkNumerics:
  message:string ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the Cholesky decomposition of one or more square matrices. *)
(* The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
form square matrices.

The input has to be symmetric and positive definite. Only the lower-triangular
part of the input will be used for this operation. The upper-triangular part
will not be read.

The output is a tensor of the same shape as the input
containing the Cholesky decompositions for all input submatrices `[..., :, :]`.

**Note**: The gradient computation on GPU is faster for large matrices but
not for large batch dimensions when the submatrices are small. In this
case it might be faster to use the CPU. *)
val cholesky:
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

(* Computes the reverse mode backpropagated gradient of the Cholesky algorithm. *)
(* For an explanation see 'Differentiation of the Cholesky algorithm' by
Iain Murray http://arxiv.org/abs/1602.07527. *)
val choleskyGrad:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Compare values of `input` to `threshold` and pack resulting bits into a `uint8`. *)
(* Each comparison returns a boolean `true` (if `input_value > threshold`)
or and `false` otherwise.

This operation is useful for Locality-Sensitive-Hashing (LSH) and other
algorithms that use hashing approximations of cosine and `L2` distances;
codes can be generated from an input via:

```python
codebook_size = 50
codebook_bits = codebook_size * 32
codebook = tf.get_variable('codebook', [x.shape[-1].value, codebook_bits],
                           dtype=x.dtype,
                           initializer=tf.orthogonal_initializer())
codes = compare_and_threshold(tf.matmul(x, codebook), threshold=0.)
codes = tf.bitcast(codes, tf.int32)  # go from uint8 to int32
# now codes has shape x.shape[:-1] + [codebook_size]
```

**NOTE**: Currently, the innermost dimension of the tensor must be divisible
by 8.

Given an `input` shaped `[s0, s1, ..., s_n]`, the output is
a `uint8` tensor shaped `[s0, s1, ..., s_n / 8]`. *)
val compareAndBitpack:
  ([< `bool | `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `bool | `float | `double | `int32 | `int64 ] as 't) t ->
    [ `uInt8 ] t

(* Converts two real numbers to a complex number. *)
(* Given a tensor `real` representing the real part of a complex number, and a
tensor `imag` representing the imaginary part of a complex number, this
operation returns complex numbers elementwise of the form \\(a + bj\\), where
*a* represents the `real` part and *b* represents the `imag` part.

The input tensors `real` and `imag` must have the same shape.

For example:

```
# tensor 'real' is [2.25, 3.25]
# tensor `imag` is [4.75, 5.75]
tf.complex(real, imag) ==> [[2.25 + 4.75j], [3.25 + 5.75j]]
``` *)
val complex:
  type_tout:([< `complex64 ] as 'tout) Type.t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `complex64 ] as 'tout) t

(* Computes the complex absolute value of a tensor. *)
(* Given a tensor `x` of complex numbers, this operation returns a tensor of type
`float` or `double` that is the absolute value of each element in `x`. All
elements in `x` must be complex numbers of the form \\(a + bj\\). The absolute
value is computed as \\( \sqrt{a^2 + b^2}\\). *)
val complexAbs:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

(* Computes the ids of the positions in sampled_candidates that match true_labels. *)
(* When doing log-odds NCE, the result of this op should be passed through a
SparseToDense op, then added to the logits of the sampled candidates. This has
the effect of 'removing' the sampled labels that match the true labels by
making the classifier sure that they are sampled labels. *)
val computeAccidentalHits:
  num_true:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `int32 ] t * [ `int64 ] t * [ `float ] t

(* Concatenates tensors along one dimension. *)
val concat:
  [ `int32 ] t ->
  't t list ->
    't t

(* Computes offsets of concat inputs within its output. *)
(* For example:

```
# 'x' is [2, 2, 7]
# 'y' is [2, 3, 7]
# 'z' is [2, 5, 7]
concat_offset(2, [x, y, z]) => [0, 0, 0], [0, 2, 0], [0, 5, 0]
```

This is typically used by gradient computations for a concat operation. *)
val concatOffset:
  [ `int32 ] t ->
  [ `int32 ] t list ->
    [ `int32 ] t list

(* Concatenates tensors along one dimension. *)
val concatV2:
  't t list ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    't t

(* Creates a dataset that concatenates `input_dataset` with `another_dataset`. *)
val concatenateDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `variant ] t ->
    [ `variant ] t

(* A conditional accumulator for aggregating gradients. *)
(* The accumulator accepts gradients marked with local_step greater or
equal to the most recent global_step known to the accumulator. The
average can be extracted from the accumulator, provided sufficient
gradients have been accumulated. Extracting the average automatically
resets the aggregate to 0, and increments the global_step recorded by
the accumulator. *)
val conditionalAccumulator:
  shape:int list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* Returns the complex conjugate of a complex number. *)
(* Given a tensor `input` of complex numbers, this operation returns a tensor of
complex numbers that are the complex conjugate of each element in `input`. The
complex numbers in `input` must be of the form \\(a + bj\\), where *a* is the
real part and *b* is the imaginary part.

The complex conjugate returned by this operation is of the form \\(a - bj\\).

For example:

```
# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
tf.conj(input) ==> [-2.25 - 4.75j, 3.25 - 5.75j]
``` *)
val conj:
  ([< `complex64 | `variant ] as 't) t ->
    ([< `complex64 | `variant ] as 't) t

(* Does nothing. Serves as a control trigger for scheduling. *)
(* Only useful as a placeholder for control edges. *)
val controlTrigger:
  unit ->
    unit

(* Computes a 2-D convolution given 4-D `input` and `filter` tensors. *)
(* Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
and a filter / kernel tensor of shape
`[filter_height, filter_width, in_channels, out_channels]`, this op
performs the following:

1. Flattens the filter to a 2-D matrix with shape
   `[filter_height * filter_width * in_channels, output_channels]`.
2. Extracts image patches from the input tensor to form a *virtual*
   tensor of shape `[batch, out_height, out_width,
   filter_height * filter_width * in_channels]`.
3. For each patch, right-multiplies the filter matrix and the image patch
   vector.

In detail, with the default NHWC format,

    output[b, i, j, k] =
        sum_{di, dj, q} input[b, strides[1] * i + di, strides[2] * j + dj, q] *
                        filter[di, dj, q, k]

Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
horizontal and vertices strides, `strides = [1, stride, stride, 1]`. *)
val conv2D:
  strides:int list ->
  ?use_cudnn_on_gpu:bool ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Computes the gradients of convolution with respect to the filter. *)
val conv2DBackpropFilter:
  strides:int list ->
  ?use_cudnn_on_gpu:bool ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 't) t ->
  [ `int32 ] t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Computes the gradients of convolution with respect to the input. *)
val conv2DBackpropInput:
  strides:int list ->
  ?use_cudnn_on_gpu:bool ->
  padding:string ->
  ?data_format:string ->
  [ `int32 ] t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Computes a 3-D convolution given 5-D `input` and `filter` tensors. *)
(* In signal processing, cross-correlation is a measure of similarity of
two waveforms as a function of a time-lag applied to one of them. This
is also known as a sliding dot product or sliding inner-product.

Our Conv3D implements a form of cross-correlation. *)
val conv3D:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the gradients of 3-D convolution with respect to the filter. *)
val conv3DBackpropFilter:
  strides:int list ->
  padding:string ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the gradients of 3-D convolution with respect to the filter. *)
val conv3DBackpropFilterV2:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the gradients of 3-D convolution with respect to the input. *)
val conv3DBackpropInput:
  strides:int list ->
  padding:string ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the gradients of 3-D convolution with respect to the input. *)
val conv3DBackpropInputV2:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
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

(* Computes cos of x element-wise. *)
val cos:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes hyperbolic cosine of x element-wise. *)
val cosh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Increments 'ref' until it reaches 'limit'. *)
val countUpTo:
  limit:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

(* Extracts crops from the input image tensor and bilinearly resizes them (possibly *)
(* with aspect ratio change) to a common output size specified by `crop_size`. This
is more general than the `crop_to_bounding_box` op which extracts a fixed size
slice from the input image and does not allow resizing or aspect ratio change.

Returns a tensor with `crops` from the input `image` at positions defined at the
bounding box locations in `boxes`. The cropped boxes are all resized (with
bilinear interpolation) to a fixed `size = [crop_height, crop_width]`. The
result is a 4-D tensor `[num_boxes, crop_height, crop_width, depth]`. *)
val cropAndResize:
  ?method_:string ->
  ?extrapolation_value:float ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    [ `float ] t

(* Computes the gradient of the crop_and_resize op wrt the input boxes tensor. *)
val cropAndResizeGradBoxes:
  ?method_:string ->
  [ `float ] t ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `float ] t

(* Computes the gradient of the crop_and_resize op wrt the input image tensor. *)
val cropAndResizeGradImage:
  type_t:([< `float | `double ] as 't) Type.t ->
  ?method_:string ->
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

(* Compute the pairwise cross product. *)
(* `a` and `b` must be the same shape; they can either be simple 3-element vectors,
or any shape where the innermost dimension is 3. In the latter case, each pair
of corresponding 3-element vectors is cross-multiplied independently. *)
val cross:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Compute the cumulative product of the tensor `x` along `axis`. *)
(* By default, this op performs an inclusive cumprod, which means that the first
element of the input is identical to the first element of the output:

```python
tf.cumprod([a, b, c])  # => [a, a * b, a * b * c]
```

By setting the `exclusive` kwarg to `True`, an exclusive cumprod is
performed instead:

```python
tf.cumprod([a, b, c], exclusive=True)  # => [1, a, a * b]
```

By setting the `reverse` kwarg to `True`, the cumprod is performed in the
opposite direction:

```python
tf.cumprod([a, b, c], reverse=True)  # => [a * b * c, b * c, c]
```

This is more efficient than using separate `tf.reverse` ops.

The `reverse` and `exclusive` kwargs can also be combined:

```python
tf.cumprod([a, b, c], exclusive=True, reverse=True)  # => [b * c, c, 1]
``` *)
val cumprod:
  ?exclusive:bool ->
  ?reverse:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Compute the cumulative sum of the tensor `x` along `axis`. *)
(* By default, this op performs an inclusive cumsum, which means that the first
element of the input is identical to the first element of the output:

```python
tf.cumsum([a, b, c])  # => [a, a + b, a + b + c]
```

By setting the `exclusive` kwarg to `True`, an exclusive cumsum is
performed instead:

```python
tf.cumsum([a, b, c], exclusive=True)  # => [0, a, a + b]
```

By setting the `reverse` kwarg to `True`, the cumsum is performed in the
opposite direction:

```python
tf.cumsum([a, b, c], reverse=True)  # => [a + b + c, b + c, c]
```

This is more efficient than using separate `tf.reverse` ops.

The `reverse` and `exclusive` kwargs can also be combined:

```python
tf.cumsum([a, b, c], exclusive=True, reverse=True)  # => [b + c, c, 0]
``` *)
val cumsum:
  ?exclusive:bool ->
  ?reverse:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Identity op for gradient debugging. *)
(* This op is hidden from public in Python. It is used by TensorFlow Debugger to
register gradient tensors for gradient debugging. *)
val debugGradientIdentity:
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

(* Decode and Crop a JPEG-encoded image to a uint8 tensor. *)
(* The attr `channels` indicates the desired number of color channels for the
decoded image.

Accepted values are:

*   0: Use the number of channels in the JPEG-encoded image.
*   1: output a grayscale image.
*   3: output an RGB image.

If needed, the JPEG-encoded image is transformed to match the requested number
of color channels.

The attr `ratio` allows downscaling the image by an integer factor during
decoding.  Allowed values are: 1, 2, 4, and 8.  This is much faster than
downscaling the image later.


It is equivalent to a combination of decode and crop, but much faster by only
decoding partial jpeg image. *)
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

(* Decode web-safe base64-encoded strings. *)
(* Input may or may not have padding at the end. See EncodeBase64 for padding.
Web-safe means that input must use - and _ instead of + and /. *)
val decodeBase64:
  [ `string ] t ->
    [ `string ] t

(* Decode the first frame of a BMP-encoded image to a uint8 tensor. *)
(* The attr `channels` indicates the desired number of color channels for the
decoded image.

Accepted values are:

*   0: Use the number of channels in the BMP-encoded image.
*   3: output an RGB image.
*   4: output an RGBA image. *)
val decodeBmp:
  ?channels:int ->
  [ `string ] t ->
    [ `uInt8 ] t

(* Decode the first frame of a GIF-encoded image to a uint8 tensor. *)
(* GIF with frame or transparency compression are not supported
convert animated GIF from compressed to uncompressed by:

    convert $src.gif -coalesce $dst.gif

This op also supports decoding JPEGs and PNGs, though it is cleaner to use
`tf.image.decode_image`. *)
val decodeGif:
  [ `string ] t ->
    [ `uInt8 ] t

(* Convert JSON-encoded Example records to binary protocol buffer strings. *)
(* This op translates a tensor containing Example records, encoded using
the [standard JSON
mapping](https://developers.google.com/protocol-buffers/docs/proto3#json),
into a tensor containing the same records encoded as binary protocol
buffers. The resulting tensor can then be fed to any of the other
Example-parsing ops. *)
val decodeJSONExample:
  [ `string ] t ->
    [ `string ] t

(* Decode a JPEG-encoded image to a uint8 tensor. *)
(* The attr `channels` indicates the desired number of color channels for the
decoded image.

Accepted values are:

*   0: Use the number of channels in the JPEG-encoded image.
*   1: output a grayscale image.
*   3: output an RGB image.

If needed, the JPEG-encoded image is transformed to match the requested number
of color channels.

The attr `ratio` allows downscaling the image by an integer factor during
decoding.  Allowed values are: 1, 2, 4, and 8.  This is much faster than
downscaling the image later.


This op also supports decoding PNGs and non-animated GIFs since the interface is
the same, though it is cleaner to use `tf.image.decode_image`. *)
val decodeJpeg:
  ?channels:int ->
  ?ratio:int ->
  ?fancy_upscaling:bool ->
  ?try_recover_truncated:bool ->
  ?acceptable_fraction:float ->
  ?dct_method:string ->
  [ `string ] t ->
    [ `uInt8 ] t

(* Decode a PNG-encoded image to a uint8 or uint16 tensor. *)
(* The attr `channels` indicates the desired number of color channels for the
decoded image.

Accepted values are:

*   0: Use the number of channels in the PNG-encoded image.
*   1: output a grayscale image.
*   3: output an RGB image.
*   4: output an RGBA image.

If needed, the PNG-encoded image is transformed to match the requested number
of color channels.

This op also supports decoding JPEGs and non-animated GIFs since the interface
is the same, though it is cleaner to use `tf.image.decode_image`. *)
val decodePng:
  type_dtype:([< `uInt8 | `uInt16 ] as 'dtype) Type.t ->
  ?channels:int ->
  [ `string ] t ->
    ([< `uInt8 | `uInt16 ] as 'dtype) t

(* Reinterpret the bytes of a string as a vector of numbers. *)
val decodeRaw:
  type_out_type:([< `float | `double | `int32 | `uInt16 | `uInt8 | `int64 ] as 'out_type) Type.t ->
  ?little_endian:bool ->
  [ `string ] t ->
    ([< `float | `double | `int32 | `uInt16 | `uInt8 | `int64 ] as 'out_type) t

(* Decode a 16-bit PCM WAV file to a float tensor. *)
(* The -32768 to 32767 signed 16-bit values will be scaled to -1.0 to 1.0 in float.

When desired_channels is set, if the input contains fewer channels than this
then the last channel will be duplicated to give the requested number, else if
the input has more channels than requested then the additional channels will be
ignored.

If desired_samples is set, then the audio will be cropped or padded with zeroes
to the requested length.

The first output contains a Tensor with the content of the audio samples. The
lowest dimension will be the number of channels, and the second will be the
number of samples. For example, a ten-sample-long stereo WAV file should give an
output shape of [10, 2]. *)
val decodeWav:
  ?desired_channels:int ->
  ?desired_samples:int ->
  [ `string ] t ->
    [ `float ] t * [ `int32 ] t

(* Delete the tensor specified by its handle in the session. *)
val deleteSessionTensor:
  [ `string ] t ->
    unit

(* Applies set operation along last dimension of 2 `Tensor` inputs. *)
(* See SetOperationOp::SetOperationFromContext for values of `set_operation`.

Output `result` is a `SparseTensor` represented by `result_indices`,
`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
dimension contains the result of `set_operation` applied to the corresponding
`[0...n-1]` dimension of `set`. *)
val denseToDenseSetOperation:
  set_operation:string ->
  ?validate_indices:bool ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
    [ `int64 ] t * ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t * [ `int64 ] t

(* Creates a dataset that yields a SparseTensor for each element of the input. *)
val denseToSparseBatchDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* Applies set operation along last dimension of `Tensor` and `SparseTensor`. *)
(* See SetOperationOp::SetOperationFromContext for values of `set_operation`.

Input `set2` is a `SparseTensor` represented by `set2_indices`, `set2_values`,
and `set2_shape`. For `set2` ranked `n`, 1st `n-1` dimensions must be the same
as `set1`. Dimension `n` contains values in a set, duplicates are allowed but
ignored.

If `validate_indices` is `True`, this op validates the order and range of `set2`
indices.

Output `result` is a `SparseTensor` represented by `result_indices`,
`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
dimension contains the result of `set_operation` applied to the corresponding
`[0...n-1]` dimension of `set`. *)
val denseToSparseSetOperation:
  set_operation:string ->
  ?validate_indices:bool ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
    [ `int64 ] t * ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t * [ `int64 ] t

(* DepthToSpace for tensors of type T. *)
(* Rearranges data from depth into blocks of spatial data.
This is the reverse transformation of SpaceToDepth. More specifically,
this op outputs a copy of the input tensor where values from the `depth`
dimension are moved in spatial blocks to the `height` and `width` dimensions.
The attr `block_size` indicates the input block size and how the data is moved.

  * Chunks of data of size `block_size * block_size` from depth are rearranged
    into non-overlapping blocks of size `block_size x block_size`
  * The width the output tensor is `input_depth * block_size`, whereas the
    height is `input_height * block_size`.
  * The Y, X coordinates within each block of the output image are determined
    by the high order component of the input channel index.
  * The depth of the input tensor must be divisible by
    `block_size * block_size`.

The `data_format` attr specifies the layout of the input and output tensors
with the following options:
  'NHWC': `[ batch, height, width, channels ]`
  'NCHW': `[ batch, channels, height, width ]`
  'NCHW_VECT_C':
      `qint8 [ batch, channels / 4, height, width, channels % 4 ]`

It is useful to consider the operation as transforming a 6-D Tensor.
e.g. for data_format = NHWC,
     Each element in the input tensor can be specified via 6 coordinates,
     ordered by decreasing memory layout significance as:
     n,iY,iX,bY,bX,oC  (where n=batch index, iX, iY means X or Y coordinates
                        within the input image, bX, bY means coordinates
                        within the output block, oC means output channels).
     The output would be the input transposed to the following layout:
     n,iY,bY,iX,bX,oC

This operation is useful for resizing the activations between convolutions
(but keeping all data), e.g. instead of pooling. It is also useful for training
purely convolutional models.

For example, given an input of shape `[1, 1, 1, 4]`, data_format = 'NHWC' and
block_size = 2:

```
x = [[[[1, 2, 3, 4]]]]

```

This operation will output a tensor of shape `[1, 2, 2, 1]`:

```
   [[[[1], [2]],
     [[3], [4]]]]
```

Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
the corresponding output will have 2x2 elements and will have a depth of
1 channel (1 = `4 / (block_size * block_size)`).
The output element shape is `[2, 2, 1]`.

For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.

```
x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
```

This operation, for block size of 2, will return the following tensor of shape
`[1, 2, 2, 3]`

```
   [[[[1, 2, 3], [4, 5, 6]],
     [[7, 8, 9], [10, 11, 12]]]]

```

Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:

```
x =  [[[[1, 2, 3, 4],
       [5, 6, 7, 8]],
      [[9, 10, 11, 12],
       [13, 14, 15, 16]]]]
```

the operator will return the following tensor of shape `[1 4 4 1]`:

```
x = [[[ [1],   [2],  [5],  [6]],
      [ [3],   [4],  [7],  [8]],
      [ [9],  [10], [13],  [14]],
      [ [11], [12], [15],  [16]]]]

``` *)
val depthToSpace:
  block_size:int ->
  ?data_format:string ->
  't t ->
    't t

(* Computes a 2-D depthwise convolution given 4-D `input` and `filter` tensors. *)
(* Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
and a filter / kernel tensor of shape
`[filter_height, filter_width, in_channels, channel_multiplier]`, containing
`in_channels` convolutional filters of depth 1, `depthwise_conv2d` applies
a different filter to each input channel (expanding from 1 channel to
`channel_multiplier` channels for each), then concatenates the results
together. Thus, the output has `in_channels * channel_multiplier` channels.

```
for k in 0..in_channels-1
  for q in 0..channel_multiplier-1
    output[b, i, j, k * channel_multiplier + q] =
      sum_{di, dj} input[b, strides[1] * i + di, strides[2] * j + dj, k] *
                        filter[di, dj, k, q]
```

Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
horizontal and vertices strides, `strides = [1, stride, stride, 1]`. *)
val depthwiseConv2dNative:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the gradients of depthwise convolution with respect to the filter. *)
val depthwiseConv2dNativeBackpropFilter:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double ] as 't) t ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the gradients of depthwise convolution with respect to the input. *)
val depthwiseConv2dNativeBackpropInput:
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  [ `int32 ] t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Dequantize the 'input' tensor into a float Tensor. *)
(* [min_range, max_range] are scalar floats that specify the range for
the 'input' data. The 'mode' attribute controls exactly which calculations are
used to convert the float values to their quantized equivalents.

In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:

```
if T == qint8, in[i] += (range(T) + 1)/ 2.0
out[i] = min_range + (in[i]* (max_range - min_range) / range(T))
```
here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`

*MIN_COMBINED Mode Example*

If the input comes from a QuantizedRelu6, the output type is
quint8 (range of 0-255) but the possible range of QuantizedRelu6 is
0-6.  The min_range and max_range values are therefore 0.0 and 6.0.
Dequantize on quint8 will take each value, cast to float, and multiply
by 6 / 255.
Note that if quantizedtype is qint8, the operation will additionally add
each value by 128 prior to casting.

If the mode is 'MIN_FIRST', then this approach is used:

```c++
number_of_steps = 1 << (# of bits in T)
range_adjust = number_of_steps / (number_of_steps - 1)
range = (range_max - range_min) * range_adjust
range_scale = range / number_of_steps
const double offset_input = static_cast<double>(input) - lowest_quantized;
result = range_min + ((input - numeric_limits<T>::min()) * range_scale)
```

*SCALED mode Example*

`SCALED` mode matches the quantization approach used in
`QuantizeAndDequantize{V2|V3}`.

If the mode is `SCALED`, we do not use the full range of the output type,
choosing to elide the lowest possible value for symmetry (e.g., output range is
-127 to 127, not -128 to 127 for signed 8 bit quantization), so that 0.0 maps to
0.

We first find the range of values in our tensor. The
range we use is always centered on 0, so we find m such that
```c++
  m = max(abs(input_min), abs(input_max))
```

Our input tensor range is then `[-m, m]`.

Next, we choose our fixed-point quantization buckets, `[min_fixed, max_fixed]`.
If T is signed, this is
```
  num_bits = sizeof(T) * 8
  [min_fixed, max_fixed] =
      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1]
```

Otherwise, if T is unsigned, the fixed-point range is
```
  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1]
```

From this we compute our scaling factor, s:
```c++
  s = (2 * m) / (max_fixed - min_fixed)
```

Now we can dequantize the elements of our tensor:
```c++
result = input * s
``` *)
val dequantize:
  ?mode:string ->
  't t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Deserialize and concatenate `SparseTensors` from a serialized minibatch. *)
(* The input `serialized_sparse` must be a string matrix of shape `[N x 3]` where
`N` is the minibatch size and the rows correspond to packed outputs of
`SerializeSparse`.  The ranks of the original `SparseTensor` objects
must all match.  When the final `SparseTensor` is created, it has rank one
higher than the ranks of the incoming `SparseTensor` objects
(they have been concatenated along a new row dimension).

The output `SparseTensor` object's shape values for all dimensions but the
first are the max across the input `SparseTensor` objects' shape values
for the corresponding dimensions.  Its first shape value is `N`, the minibatch
size.

The input `SparseTensor` objects' indices are assumed ordered in
standard lexicographic order.  If this is not the case, after this
step run `SparseReorder` to restore index ordering.

For example, if the serialized input is a `[2 x 3]` matrix representing two
original `SparseTensor` objects:

    index = [ 0]
            [10]
            [20]
    values = [1, 2, 3]
    shape = [50]

and

    index = [ 2]
            [10]
    values = [4, 5]
    shape = [30]

then the final deserialized `SparseTensor` will be:

    index = [0  0]
            [0 10]
            [0 20]
            [1  2]
            [1 10]
    values = [1, 2, 3, 4, 5]
    shape = [2 50] *)
val deserializeManySparse:
  type_dtype:'dtype Type.t ->
  [ `string ] t ->
    [ `int64 ] t * 'dtype t * [ `int64 ] t

(* Destroys the temporary variable and returns its final value. *)
(* Sets output to the value of the Tensor pointed to by 'ref', then destroys
the temporary variable called 'var_name'.
All other uses of 'ref' *must* have executed before this op.
This is typically achieved by chaining the ref through each assign op, or by
using control dependencies.

Outputs the final value of the tensor pointed to by 'ref'. *)
val destroyTemporaryVariable:
  var_name:string ->
  't t ->
    't t

(* Returns a diagonal tensor with a given diagonal values. *)
(* Given a `diagonal`, this operation returns a tensor with the `diagonal` and
everything else padded with zeros. The diagonal is computed as follows:

Assume `diagonal` has dimensions [D1,..., Dk], then the output is a tensor of
rank 2k with dimensions [D1,..., Dk, D1,..., Dk] where:

`output[i1,..., ik, i1,..., ik] = diagonal[i1, ..., ik]` and 0 everywhere else.

For example:

```
# 'diagonal' is [1, 2, 3, 4]
tf.diag(diagonal) ==> [[1, 0, 0, 0]
                       [0, 2, 0, 0]
                       [0, 0, 3, 0]
                       [0, 0, 0, 4]]
``` *)
val diag:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Returns the diagonal part of the tensor. *)
(* This operation returns a tensor with the `diagonal` part
of the `input`. The `diagonal` part is computed as follows:

Assume `input` has dimensions `[D1,..., Dk, D1,..., Dk]`, then the output is a
tensor of rank `k` with dimensions `[D1,..., Dk]` where:

`diagonal[i1,..., ik] = input[i1, ..., ik, i1,..., ik]`.

For example:

```
# 'input' is [[1, 0, 0, 0]
              [0, 2, 0, 0]
              [0, 0, 3, 0]
              [0, 0, 0, 4]]

tf.diag_part(input) ==> [1, 2, 3, 4]
``` *)
val diagPart:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes Psi, the derivative of Lgamma (the log of the absolute value of *)
(* `Gamma(x)`), element-wise. *)
val digamma:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the grayscale dilation of 4-D `input` and 3-D `filter` tensors. *)
(* The `input` tensor has shape `[batch, in_height, in_width, depth]` and the
`filter` tensor has shape `[filter_height, filter_width, depth]`, i.e., each
input channel is processed independently of the others with its own structuring
function. The `output` tensor has shape
`[batch, out_height, out_width, depth]`. The spatial dimensions of the output
tensor depend on the `padding` algorithm. We currently only support the default
'NHWC' `data_format`.

In detail, the grayscale morphological 2-D dilation is the max-sum correlation
(for consistency with `conv2d`, we use unmirrored filters):

    output[b, y, x, c] =
       max_{dy, dx} input[b,
                          strides[1] * y + rates[1] * dy,
                          strides[2] * x + rates[2] * dx,
                          c] +
                    filter[dy, dx, c]

Max-pooling is a special case when the filter has size equal to the pooling
kernel size and contains all zeros.

Note on duality: The dilation of `input` by the `filter` is equal to the
negation of the erosion of `-input` by the reflected `filter`. *)
val dilation2D:
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the gradient of morphological 2-D dilation with respect to the filter. *)
val dilation2DBackpropFilter:
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the gradient of morphological 2-D dilation with respect to the input. *)
val dilation2DBackpropInput:
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Returns x / y element-wise. *)
(* *NOTE*: `Div` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val div:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

(* Draw bounding boxes on a batch of images. *)
(* Outputs a copy of `images` but draws on top of the pixels zero or more bounding
boxes specified by the locations in `boxes`. The coordinates of the each
bounding box in `boxes` are encoded as `[y_min, x_min, y_max, x_max]`. The
bounding box coordinates are floats in `[0.0, 1.0]` relative to the width and
height of the underlying image.

For example, if an image is 100 x 200 pixels (height x width) and the bounding
box is `[0.1, 0.2, 0.5, 0.9]`, the upper-left and bottom-right coordinates of
the bounding box will be `(40, 10)` to `(100, 50)` (in (x,y) coordinates).

Parts of the bounding box may fall outside the image. *)
val drawBoundingBoxes:
  ([< `float ] as 't) t ->
  [ `float ] t ->
    ([< `float ] as 't) t

(* Partitions `data` into `num_partitions` tensors using indices from `partitions`. *)
(* For each index tuple `js` of size `partitions.ndim`, the slice `data[js, ...]`
becomes part of `outputs[partitions[js]]`.  The slices with `partitions[js] = i`
are placed in `outputs[i]` in lexicographic order of `js`, and the first
dimension of `outputs[i]` is the number of entries in `partitions` equal to `i`.
In detail,

```python
    outputs[i].shape = [sum(partitions == i)] + data.shape[partitions.ndim:]

    outputs[i] = pack([data[js, ...] for js if partitions[js] == i])
```

`data.shape` must start with `partitions.shape`.

For example:

```python
    # Scalar partitions.
    partitions = 1
    num_partitions = 2
    data = [10, 20]
    outputs[0] = []  # Empty with shape [0, 2]
    outputs[1] = [[10, 20]]

    # Vector partitions.
    partitions = [0, 0, 1, 1, 0]
    num_partitions = 2
    data = [10, 20, 30, 40, 50]
    outputs[0] = [10, 20, 50]
    outputs[1] = [30, 40]
```

See `dynamic_stitch` for an example on how to merge partitions back.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/DynamicPartition.png' alt>
</div> *)
val dynamicPartition:
  num_partitions:int ->
  't t ->
  [ `int32 ] t ->
    't t list

(* Interleave the values from the `data` tensors into a single tensor. *)
(* Builds a merged tensor such that

```python
    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
```

For example, if each `indices[m]` is scalar or vector, we have

```python
    # Scalar indices:
    merged[indices[m], ...] = data[m][...]

    # Vector indices:
    merged[indices[m][i], ...] = data[m][i, ...]
```

Each `data[i].shape` must start with the corresponding `indices[i].shape`,
and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
must have `data[i].shape = indices[i].shape + constant`.  In terms of this
`constant`, the output shape is

    merged.shape = [max(indices)] + constant

Values are merged in order, so if an index appears in both `indices[m][i]` and
`indices[n][j]` for `(m,i) < (n,j)` the slice `data[n][j]` will appear in the
merged result. If you do not need this guarantee, ParallelDynamicStitch might
perform better on some devices.

For example:

```python
    indices[0] = 6
    indices[1] = [4, 1]
    indices[2] = [[5, 2], [0, 3]]
    data[0] = [61, 62]
    data[1] = [[41, 42], [11, 12]]
    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
              [51, 52], [61, 62]]
```

This method can be used to merge partitions created by `dynamic_partition`
as illustrated on the following example:

```python
    # Apply function (increments x_i) on elements for which a certain condition
    # apply (x_i != -1 in this example).
    x=tf.constant([0.1, -1., 5.2, 4.3, -1., 7.4])
    condition_mask=tf.not_equal(x,tf.constant(-1.))
    partitioned_data = tf.dynamic_partition(
        x, tf.cast(condition_mask, tf.int32) , 2)
    partitioned_data[1] = partitioned_data[1] + 1.0
    condition_indices = tf.dynamic_partition(
        tf.range(tf.shape(x)[0]), tf.cast(condition_mask, tf.int32) , 2)
    x = tf.dynamic_stitch(condition_indices, partitioned_data)
    # Here x=[1.1, -1., 6.2, 5.3, -1, 8.4], the -1. values remain
    # unchanged.
```

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/DynamicStitch.png' alt>
</div> *)
val dynamicStitch:
  [ `int32 ] t list ->
  't t list ->
    't t

(* Computes the (possibly normalized) Levenshtein Edit Distance. *)
(* The inputs are variable-length sequences provided by SparseTensors
  (hypothesis_indices, hypothesis_values, hypothesis_shape)
and
  (truth_indices, truth_values, truth_shape).

The inputs are: *)
val editDistance:
  ?normalize:bool ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `float ] t

(* Computes exponential linear: `exp(features) - 1` if < 0, `features` otherwise. *)
(* See [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
](http://arxiv.org/abs/1511.07289) *)
val elu:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes gradients for the exponential linear (Elu) operation. *)
val eluGrad:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Encode strings into web-safe base64 format. *)
(* Refer to the following article for more information on base64 format:
en.wikipedia.org/wiki/Base64. Base64 strings may have padding with '=' at the
end so that the encoded has length multiple of 4. See Padding section of the
link above.

Web-safe means that the encoder uses - and _ instead of + and /. *)
val encodeBase64:
  ?pad:bool ->
  [ `string ] t ->
    [ `string ] t

(* JPEG-encode an image. *)
(* `image` is a 3-D uint8 Tensor of shape `[height, width, channels]`.

The attr `format` can be used to override the color format of the encoded
output.  Values can be:

*   `''`: Use a default format based on the number of channels in the image.
*   `grayscale`: Output a grayscale JPEG image.  The `channels` dimension
    of `image` must be 1.
*   `rgb`: Output an RGB JPEG image. The `channels` dimension
    of `image` must be 3.

If `format` is not specified or is the empty string, a default format is picked
in function of the number of channels in `image`:

*   1: Output a grayscale image.
*   3: Output an RGB image. *)
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

(* PNG-encode an image. *)
(* `image` is a 3-D uint8 or uint16 Tensor of shape `[height, width, channels]`
where `channels` is:

*   1: for grayscale.
*   2: for grayscale + alpha.
*   3: for RGB.
*   4: for RGBA.

The ZLIB compression level, `compression`, can be -1 for the PNG-encoder
default or a value from 0 to 9.  9 is the highest compression level, generating
the smallest output, but is slower. *)
val encodePng:
  ?compression:int ->
  ([< `uInt8 | `uInt16 ] as 't) t ->
    [ `string ] t

(* Encode audio data using the WAV file format. *)
(* This operation will generate a string suitable to be saved out to create a .wav
audio file. It will be encoded in the 16-bit PCM format. It takes in float
values in the range -1.0f to 1.0f, and any outside that value will be clamped to
that range.

`audio` is a 2-D float Tensor of shape `[length, channels]`.
`sample_rate` is a scalar Tensor holding the rate to use (e.g. 44100). *)
val encodeWav:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `string ] t

(* Creates or finds a child frame, and makes `data` available to the child frame. *)
(* This op is used together with `Exit` to create loops in the graph.
The unique `frame_name` is used by the `Executor` to identify frames. If
`is_constant` is true, `output` is a constant in the child frame; otherwise
it may be changed in the child frame. At most `parallel_iterations` iterations
are run in parallel in the child frame. *)
val enter:
  frame_name:string ->
  ?is_constant:bool ->
  ?parallel_iterations:int ->
  't t ->
    't t

(* Returns the truth value of (x == y) element-wise. *)
(* *NOTE*: `Equal` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val equal:
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
    [ `bool ] t

(* Computes the Gauss error function of `x` element-wise. *)
val erf:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes the complementary error function of `x` element-wise. *)
val erfc:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Exits the current frame to its parent frame. *)
(* Exit makes its input `data` available to the parent frame. *)
val exit:
  't t ->
    't t

(* Computes exponential of x element-wise.  \\(y = e^x\\). *)
val exp:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Inserts a dimension of 1 into a tensor's shape. *)
(* Given a tensor `input`, this operation inserts a dimension of 1 at the
dimension index `dim` of `input`'s shape. The dimension index `dim` starts at
zero; if you specify a negative number for `dim` it is counted backward from
the end.

This operation is useful if you want to add a batch dimension to a single
element. For example, if you have a single image of shape `[height, width,
channels]`, you can make it a batch of 1 image with `expand_dims(image, 0)`,
which will make the shape `[1, height, width, channels]`.

Other examples:

```
# 't' is a tensor of shape [2]
shape(expand_dims(t, 0)) ==> [1, 2]
shape(expand_dims(t, 1)) ==> [2, 1]
shape(expand_dims(t, -1)) ==> [2, 1]

# 't2' is a tensor of shape [2, 3, 5]
shape(expand_dims(t2, 0)) ==> [1, 2, 3, 5]
shape(expand_dims(t2, 2)) ==> [2, 3, 1, 5]
shape(expand_dims(t2, 3)) ==> [2, 3, 5, 1]
```

This operation requires that:

`-1-input.dims() <= dim <= input.dims()`

This operation is related to `squeeze()`, which removes dimensions of
size 1. *)
val expandDims:
  't t ->
  ([< `int32 | `int64 ] as 'tdim) t ->
    't t

(* Computes exponential of x - 1 element-wise. *)
(* I.e., \\(y = (\exp x) - 1\\). *)
val expm1:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Extracts a glimpse from the input tensor. *)
(* Returns a set of windows called glimpses extracted at location
`offsets` from the input tensor. If the windows only partially
overlaps the inputs, the non overlapping areas will be filled with
random noise.

The result is a 4-D tensor of shape `[batch_size, glimpse_height,
glimpse_width, channels]`. The channels and batch dimensions are the
same as that of the input tensor. The height and width of the output
windows are specified in the `size` parameter.

The argument `normalized` and `centered` controls how the windows are built:

* If the coordinates are normalized but not centered, 0.0 and 1.0
  correspond to the minimum and maximum of each height and width
  dimension.
* If the coordinates are both normalized and centered, they range from
  -1.0 to 1.0. The coordinates (-1.0, -1.0) correspond to the upper
  left corner, the lower right corner is located at (1.0, 1.0) and the
  center is at (0, 0).
* If the coordinates are not normalized they are interpreted as
  numbers of pixels. *)
val extractGlimpse:
  ?centered:bool ->
  ?normalized:bool ->
  ?uniform_noise:bool ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    [ `float ] t

(* Extract `patches` from `images` and put them in the 'depth' output dimension. *)
val extractImagePatches:
  ksizes:int list ->
  strides:int list ->
  rates:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Extract the shape information of a JPEG-encoded image. *)
(* This op only parses the image header, so it is much faster than DecodeJpeg. *)
val extractJpegShape:
  type_output_type:([< `int32 | `int64 ] as 'output_type) Type.t ->
  [ `string ] t ->
    ([< `int32 | `int64 ] as 'output_type) t

(* Fast Fourier transform. *)
(* Computes the 1-dimensional discrete Fourier transform over the inner-most
dimension of `input`. *)
val fFT:
  [ `complex64 ] t ->
    [ `complex64 ] t

(* 2D fast Fourier transform. *)
(* Computes the 2-dimensional discrete Fourier transform over the inner-most
2 dimensions of `input`. *)
val fFT2D:
  [ `complex64 ] t ->
    [ `complex64 ] t

(* 3D fast Fourier transform. *)
(* Computes the 3-dimensional discrete Fourier transform over the inner-most 3
dimensions of `input`. *)
val fFT3D:
  [ `complex64 ] t ->
    [ `complex64 ] t

(* A queue that produces elements in first-in first-out order. *)
val fIFOQueue:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* A queue that produces elements in first-in first-out order. *)
val fIFOQueueV2:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

(* Output a fact about factorials. *)
val fact:
  unit ->
    [ `string ] t

(* Fake-quantize the 'inputs' tensor, type float to 'outputs' tensor of same type. *)
(* Attributes `[min; max]` define the clamping range for the `inputs` data.
`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
then de-quantized and output as floats in `[min; max]` interval.
`num_bits` is the bitwidth of the quantization; between 2 and 8, inclusive.

Quantization is called fake since the output is still in floating point. *)
val fakeQuantWithMinMaxArgs:
  ?min:float ->
  ?max:float ->
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
    [ `float ] t

(* Compute gradients for a FakeQuantWithMinMaxArgs operation. *)
val fakeQuantWithMinMaxArgsGradient:
  ?min:float ->
  ?max:float ->
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Fake-quantize the 'inputs' tensor of type float via global float scalars `min` *)
(* and `max` to 'outputs' tensor of same shape as `inputs`.

`[min; max]` define the clamping range for the `inputs` data.
`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
then de-quantized and output as floats in `[min; max]` interval.
`num_bits` is the bitwidth of the quantization; between 2 and 8, inclusive.

This operation has a gradient and thus allows for training `min` and `max`
values. *)
val fakeQuantWithMinMaxVars:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Compute gradients for a FakeQuantWithMinMaxVars operation. *)
val fakeQuantWithMinMaxVarsGradient:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t * [ `float ] t * [ `float ] t

(* Fake-quantize the 'inputs' tensor of type float and one of the shapes: `[d]`, *)
(* `[b, d]` `[b, h, w, d]` via per-channel floats `min` and `max` of shape `[d]`
to 'outputs' tensor of same shape as `inputs`.

`[min; max]` define the clamping range for the `inputs` data.
`inputs` values are quantized into the quantization range (`[0; 2^num_bits - 1]`
when `narrow_range` is false and `[1; 2^num_bits - 1]` when it is true) and
then de-quantized and output as floats in `[min; max]` interval.
`num_bits` is the bitwidth of the quantization; between 2 and 8, inclusive.

This operation has a gradient and thus allows for training `min` and `max`
values. *)
val fakeQuantWithMinMaxVarsPerChannel:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t

(* Compute gradients for a FakeQuantWithMinMaxVarsPerChannel operation. *)
val fakeQuantWithMinMaxVarsPerChannelGradient:
  ?num_bits:int ->
  ?narrow_range:bool ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t * [ `float ] t * [ `float ] t

(* Deprecated. Do not use. *)
val fakeQueue:
  [ `resource ] t ->
    [ `string ] t

(* Creates a tensor filled with a scalar value. *)
(* This operation creates a tensor of shape `dims` and fills it with `value`.

For example:

```
# Output tensor has shape [2, 3].
fill([2, 3], 9) ==> [[9, 9, 9]
                     [9, 9, 9]]
``` *)
val fill:
  [ `int32 ] t ->
  't t ->
    't t

(* Creates a dataset that emits the records from one or more binary files. *)
val fixedLengthRecordDataset:
  [ `string ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* A Reader that outputs fixed-length records from a file. *)
val fixedLengthRecordReader:
  ?header_bytes:int ->
  record_bytes:int ->
  ?footer_bytes:int ->
  ?hop_bytes:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* A Reader that outputs fixed-length records from a file. *)
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

(* Generates labels for candidate sampling with a learned unigram distribution. *)
(* A unigram sampler could use a fixed unigram distribution read from a
file or passed in as an in-memory array instead of building up the distribution
from data on the fly. There is also an option to skew the distribution by
applying a distortion power to the weights.

The vocabulary file should be in CSV-like format, with the last field
being the weight associated with the word.

For each batch, this op picks a single set of sampled candidate labels.

The advantages of sampling candidates per-batch are simplicity and the
possibility of efficient dense matrix multiplication. The disadvantage is that
the sampled candidates must be chosen independently of the context and of the
true labels. *)
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

(* Returns element-wise largest integer not greater than x. *)
val floor:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Returns x // y element-wise. *)
(* *NOTE*: `FloorDiv` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val floorDiv:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

(* Returns element-wise remainder of division. When `x < 0` xor `y < 0` is *)
(* true, this follows Python semantics in that the result here is consistent
with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.

*NOTE*: `FloorMod` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val floorMod:
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

(* Performs fractional average pooling on the input. *)
(* Fractional average pooling is similar to Fractional max pooling in the pooling
region generation step. The only difference is that after pooling regions are
generated, a mean operation is performed instead of a max operation in each
pooling region. *)
val fractionalAvgPool:
  pooling_ratio:float list ->
  ?pseudo_random:bool ->
  ?overlapping:bool ->
  ?deterministic:bool ->
  ?seed:int ->
  ?seed2:int ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t * [ `int64 ] t * [ `int64 ] t

(* Computes gradient of the FractionalAvgPool function. *)
(* Unlike FractionalMaxPoolGrad, we don't need to find arg_max for
FractionalAvgPoolGrad, we just need to evenly back-propagate each element of
out_backprop to those indices that form the same pooling cell. Therefore, we
just need to know the shape of original input tensor, instead of the whole
tensor. *)
val fractionalAvgPoolGrad:
  ?overlapping:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

(* Performs fractional max pooling on the input. *)
(* Fractional max pooling is slightly different than regular max pooling.  In
regular max pooling, you downsize an input set by taking the maximum value of
smaller N x N subsections of the set (often 2x2), and try to reduce the set by
a factor of N, where N is an integer.  Fractional max pooling, as you might
expect from the word 'fractional', means that the overall reduction ratio N
does not have to be an integer.

The sizes of the pooling regions are generated randomly but are fairly uniform.
For example, let's look at the height dimension, and the constraints on the
list of rows that will be pool boundaries.

First we define the following:

1.  input_row_length : the number of rows from the input set
2.  output_row_length : which will be smaller than the input
3.  alpha = input_row_length / output_row_length : our reduction ratio
4.  K = floor(alpha)
5.  row_pooling_sequence : this is the result list of pool boundary rows

Then, row_pooling_sequence should satisfy:

1.  a[0] = 0 : the first value of the sequence is 0
2.  a[end] = input_row_length : the last value of the sequence is the size
3.  K <= (a[i+1] - a[i]) <= K+1 : all intervals are K or K+1 size
4.  length(row_pooling_sequence) = output_row_length+1

For more details on fractional max pooling, see this paper:
[Benjamin Graham, Fractional Max-Pooling](http://arxiv.org/abs/1412.6071) *)
val fractionalMaxPool:
  pooling_ratio:float list ->
  ?pseudo_random:bool ->
  ?overlapping:bool ->
  ?deterministic:bool ->
  ?seed:int ->
  ?seed2:int ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t * [ `int64 ] t * [ `int64 ] t

(* Computes gradient of the FractionalMaxPool function. *)
val fractionalMaxPoolGrad:
  ?overlapping:bool ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

(* Batch normalization. *)
(* Note that the size of 4D Tensors are defined by either 'NHWC' or 'NCHW'.
The size of 1D Tensors matches the dimension C of the 4D Tensors. *)
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

(* Gradient for batch normalization. *)
(* Note that the size of 4D Tensors are defined by either 'NHWC' or 'NCHW'.
The size of 1D Tensors matches the dimension C of the 4D Tensors. *)
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

(* Gradient for batch normalization. *)
(* Note that the size of 4D Tensors are defined by either 'NHWC' or 'NCHW'.
The size of 1D Tensors matches the dimension C of the 4D Tensors. *)
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

(* Batch normalization. *)
(* Note that the size of 4D Tensors are defined by either 'NHWC' or 'NCHW'.
The size of 1D Tensors matches the dimension C of the 4D Tensors. *)
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

(* Performs a padding as a preprocess during a convolution. *)
(* Similar to FusedResizeAndPadConv2d, this op allows for an optimized
implementation where the spatial padding transformation stage is fused with the
im2col lookup, but in this case without the bilinear filtering required for
resizing. Fusing the padding prevents the need to write out the intermediate
results as whole tensors, reducing memory pressure, and we can get some latency
gains by merging the transformation calculations.
The data_format attribute for Conv2D isn't supported by this op, and 'NHWC'
order is used instead.
Internally this op uses a single per-graph scratch buffer, which means that it
will block if multiple versions are being run in parallel. This is because this
operator is primarily an optimization to minimize memory usage. *)
val fusedPadConv2D:
  mode:string ->
  strides:int list ->
  padding:string ->
  ([< `float ] as 't) t ->
  [ `int32 ] t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Performs a resize and padding as a preprocess during a convolution. *)
(* It's often possible to do spatial transformations more efficiently as part of
the packing stage of a convolution, so this op allows for an optimized
implementation where these stages are fused together. This prevents the need to
write out the intermediate results as whole tensors, reducing memory pressure,
and we can get some latency gains by merging the transformation calculations.
The data_format attribute for Conv2D isn't supported by this op, and defaults to
'NHWC' order.
Internally this op uses a single per-graph scratch buffer, which means that it
will block if multiple versions are being run in parallel. This is because this
operator is primarily an optimization to minimize memory usage. *)
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

(* Gather slices from `params` according to `indices`. *)
(* `indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
Produces an output tensor with shape `indices.shape + params.shape[1:]` where:

```python
    # Scalar indices
    output[:, ..., :] = params[indices, :, ... :]

    # Vector indices
    output[i, :, ..., :] = params[indices[i], :, ... :]

    # Higher rank indices
    output[i, ..., j, :, ... :] = params[indices[i, ..., j], :, ..., :]
```

If `indices` is a permutation and `len(indices) == params.shape[0]` then
this operation will permute `params` accordingly.

`validate_indices`: DEPRECATED. If this operation is assigned to CPU, values in
`indices` are always validated to be within range. If assigned to GPU,
out-of-bound indices result in safe but unspecified behavior, which may include
raising an error.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/Gather.png' alt>
</div> *)
val gather:
  ?validate_indices:bool ->
  'tparams t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    'tparams t

(* Gather slices from `params` into a Tensor with shape specified by `indices`. *)
(* `indices` is an K-dimensional integer tensor, best thought of as a
(K-1)-dimensional tensor of indices into `params`, where each element defines a
slice of `params`:

    output[i_0, ..., i_{K-2}] = params[indices[i0, ..., i_{K-2}]]

Whereas in @{tf.gather} `indices` defines slices into the first
dimension of `params`, in `tf.gather_nd`, `indices` defines slices into the
first `N` dimensions of `params`, where `N = indices.shape[-1]`.

The last dimension of `indices` can be at most the rank of
`params`:

    indices.shape[-1] <= params.rank

The last dimension of `indices` corresponds to elements
(if `indices.shape[-1] == params.rank`) or slices
(if `indices.shape[-1] < params.rank`) along dimension `indices.shape[-1]`
of `params`.  The output tensor has shape

    indices.shape[:-1] + params.shape[indices.shape[-1]:]

Some examples below.

Simple indexing into a matrix:

```python
    indices = [[0, 0], [1, 1]]
    params = [['a', 'b'], ['c', 'd']]
    output = ['a', 'd']
```

Slice indexing into a matrix:

```python
    indices = [[1], [0]]
    params = [['a', 'b'], ['c', 'd']]
    output = [['c', 'd'], ['a', 'b']]
```

Indexing into a 3-tensor:

```python
    indices = [[1]]
    params = [[['a0', 'b0'], ['c0', 'd0']],
              [['a1', 'b1'], ['c1', 'd1']]]
    output = [[['a1', 'b1'], ['c1', 'd1']]]


    indices = [[0, 1], [1, 0]]
    params = [[['a0', 'b0'], ['c0', 'd0']],
              [['a1', 'b1'], ['c1', 'd1']]]
    output = [['c0', 'd0'], ['a1', 'b1']]


    indices = [[0, 0, 1], [1, 0, 1]]
    params = [[['a0', 'b0'], ['c0', 'd0']],
              [['a1', 'b1'], ['c1', 'd1']]]
    output = ['b0', 'b1']
```

Batched indexing into a matrix:

```python
    indices = [[[0, 0]], [[0, 1]]]
    params = [['a', 'b'], ['c', 'd']]
    output = [['a'], ['b']]
```

Batched slice indexing into a matrix:

```python
    indices = [[[1]], [[0]]]
    params = [['a', 'b'], ['c', 'd']]
    output = [[['c', 'd']], [['a', 'b']]]
```

Batched indexing into a 3-tensor:

```python
    indices = [[[1]], [[0]]]
    params = [[['a0', 'b0'], ['c0', 'd0']],
              [['a1', 'b1'], ['c1', 'd1']]]
    output = [[[['a1', 'b1'], ['c1', 'd1']]],
              [[['a0', 'b0'], ['c0', 'd0']]]]

    indices = [[[0, 1], [1, 0]], [[0, 0], [1, 1]]]
    params = [[['a0', 'b0'], ['c0', 'd0']],
              [['a1', 'b1'], ['c1', 'd1']]]
    output = [[['c0', 'd0'], ['a1', 'b1']],
              [['a0', 'b0'], ['c1', 'd1']]]


    indices = [[[0, 0, 1], [1, 0, 1]], [[0, 1, 1], [1, 1, 0]]]
    params = [[['a0', 'b0'], ['c0', 'd0']],
              [['a1', 'b1'], ['c1', 'd1']]]
    output = [['b0', 'b1'], ['d0', 'c1']]
``` *)
val gatherNd:
  'tparams t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    'tparams t

(* Gather slices from `params` axis `axis` according to `indices`. *)
(* `indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
Produces an output tensor with shape `params.shape[:axis] + indices.shape +
params.shape[axis + 1:]` where:

```python
    # Scalar indices (output is rank(params) - 1).
    output[a_0, ..., a_n, b_0, ..., b_n] =
      params[a_0, ..., a_n, indices, b_0, ..., b_n]

    # Vector indices (output is rank(params)).
    output[a_0, ..., a_n, i, b_0, ..., b_n] =
      params[a_0, ..., a_n, indices[i], b_0, ..., b_n]

    # Higher rank indices (output is rank(params) + rank(indices) - 1).
    output[a_0, ..., a_n, i, ..., j, b_0, ... b_n] =
      params[a_0, ..., a_n, indices[i, ..., j], b_0, ..., b_n]
```

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/Gather.png' alt>
</div> *)
val gatherV2:
  'tparams t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `int32 | `int64 ] as 'taxis) t ->
    'tparams t

(* Given a path to new and old vocabulary files, returns a remapping Tensor of *)
(* length `num_new_vocab`, where `remapping[i]` contains the row number in the old
vocabulary that corresponds to row `i` in the new vocabulary (starting at line
`new_vocab_offset` and up to `num_new_vocab` entities), or `-1` if entry `i`
in the new vocabulary is not in the old vocabulary.  `num_vocab_offset` enables
use in the partitioned variable case, and should generally be set through
examining partitioning info.  The format of the files should be a text file,
with each line containing a single entity within the vocabulary.

For example, with `new_vocab_file` a text file containing each of the following
elements on a single line: `[f0, f1, f2, f3]`, old_vocab_file = [f1, f0, f3],
`num_new_vocab = 3, new_vocab_offset = 1`, the returned remapping would be
`[0, -1, 2]`.

The op also returns a count of how many entries in the new vocabulary
were present in the old vocabulary, which is used to calculate the number of
values to initialize in a weight matrix remapping

This functionality can be used to remap both row vocabularies (typically,
features) and column vocabularies (typically, classes) from TensorFlow
checkpoints.  Note that the partitioning logic relies on contiguous vocabularies
corresponding to div-partitioned variables.  Moreover, the underlying remapping
uses an IndexTable (as opposed to an inexact CuckooTable), so client code should
use the corresponding index_table_from_file() as the FeatureColumn framework
does (as opposed to tf.feature_to_id(), which uses a CuckooTable). *)
val generateVocabRemapping:
  new_vocab_offset:int ->
  num_new_vocab:int ->
  [ `string ] t ->
  [ `string ] t ->
    [ `int64 ] t * [ `int32 ] t

(* Store the input tensor in the state of the current session. *)
val getSessionHandle:
  't t ->
    [ `string ] t

(* Store the input tensor in the state of the current session. *)
val getSessionHandleV2:
  't t ->
    [ `resource ] t

(* Get the value of the tensor specified by its handle. *)
val getSessionTensor:
  type_dtype:'dtype Type.t ->
  [ `string ] t ->
    'dtype t

(* Returns the truth value of (x > y) element-wise. *)
(* *NOTE*: `Greater` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val greater:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `bool ] t

(* Returns the truth value of (x >= y) element-wise. *)
(* *NOTE*: `GreaterEqual` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val greaterEqual:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `bool ] t

(* Convert one or more images from HSV to RGB. *)
(* Outputs a tensor of the same shape as the `images` tensor, containing the RGB
value of the pixels. The output is only well defined if the value in `images`
are in `[0,1]`.

See `rgb_to_hsv` for a description of the HSV encoding. *)
val hSVToRGB:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Creates a non-initialized hash table. *)
(* This op creates a hash table, specifying the type of its keys and values.
Before using the table you will have to initialize it.  After initialization the
table will be immutable. *)
val hashTable:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `string ] t

(* Creates a non-initialized hash table. *)
(* This op creates a hash table, specifying the type of its keys and values.
Before using the table you will have to initialize it.  After initialization the
table will be immutable. *)
val hashTableV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `resource ] t

(* Outputs a `Summary` protocol buffer with a histogram. *)
(* The generated
[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
has one summary value containing a histogram for `values`.

This op reports an `InvalidArgument` error if any value is not finite. *)
val histogramSummary:
  [ `string ] t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `string ] t

(* Inverse fast Fourier transform. *)
(* Computes the inverse 1-dimensional discrete Fourier transform over the
inner-most dimension of `input`. *)
val iFFT:
  [ `complex64 ] t ->
    [ `complex64 ] t

(* Inverse 2D fast Fourier transform. *)
(* Computes the inverse 2-dimensional discrete Fourier transform over the
inner-most 2 dimensions of `input`. *)
val iFFT2D:
  [ `complex64 ] t ->
    [ `complex64 ] t

(* Inverse 3D fast Fourier transform. *)
(* Computes the inverse 3-dimensional discrete Fourier transform over the
inner-most 3 dimensions of `input`. *)
val iFFT3D:
  [ `complex64 ] t ->
    [ `complex64 ] t

(* Inverse real-valued fast Fourier transform. *)
(* Computes the inverse 1-dimensional discrete Fourier transform of a real-valued
signal over the inner-most dimension of `input`.

The inner-most dimension of `input` is assumed to be the result of `RFFT`: the
`fft_length / 2 + 1` unique components of the DFT of a real-valued signal. If
`fft_length` is not provided, it is computed from the size of the inner-most
dimension of `input` (`fft_length = 2 * (inner - 1)`). If the FFT length used to
compute `input` is odd, it should be provided since it cannot be inferred
properly.

Along the axis `IRFFT` is computed on, if `fft_length / 2 + 1` is smaller
than the corresponding dimension of `input`, the dimension is cropped. If it is
larger, the dimension is padded with zeros. *)
val iRFFT:
  [ `complex64 ] t ->
  [ `int32 ] t ->
    [ `float ] t

(* Inverse 2D real-valued fast Fourier transform. *)
(* Computes the inverse 2-dimensional discrete Fourier transform of a real-valued
signal over the inner-most 2 dimensions of `input`.

The inner-most 2 dimensions of `input` are assumed to be the result of `RFFT2D`:
The inner-most dimension contains the `fft_length / 2 + 1` unique components of
the DFT of a real-valued signal. If `fft_length` is not provided, it is computed
from the size of the inner-most 2 dimensions of `input`. If the FFT length used
to compute `input` is odd, it should be provided since it cannot be inferred
properly.

Along each axis `IRFFT2D` is computed on, if `fft_length` (or
`fft_length / 2 + 1` for the inner-most dimension) is smaller than the
corresponding dimension of `input`, the dimension is cropped. If it is larger,
the dimension is padded with zeros. *)
val iRFFT2D:
  [ `complex64 ] t ->
  [ `int32 ] t ->
    [ `float ] t

(* Inverse 3D real-valued fast Fourier transform. *)
(* Computes the inverse 3-dimensional discrete Fourier transform of a real-valued
signal over the inner-most 3 dimensions of `input`.

The inner-most 3 dimensions of `input` are assumed to be the result of `RFFT3D`:
The inner-most dimension contains the `fft_length / 2 + 1` unique components of
the DFT of a real-valued signal. If `fft_length` is not provided, it is computed
from the size of the inner-most 3 dimensions of `input`. If the FFT length used
to compute `input` is odd, it should be provided since it cannot be inferred
properly.

Along each axis `IRFFT3D` is computed on, if `fft_length` (or
`fft_length / 2 + 1` for the inner-most dimension) is smaller than the
corresponding dimension of `input`, the dimension is cropped. If it is larger,
the dimension is padded with zeros. *)
val iRFFT3D:
  [ `complex64 ] t ->
  [ `int32 ] t ->
    [ `float ] t

(* Return a tensor with the same shape and contents as the input tensor or value. *)
val identity:
  't t ->
    't t

(* A Reader that outputs the queued work as both the key and value. *)
(* To use, enqueue strings in a Queue.  ReaderRead will take the front
work string and output (work, work). *)
val identityReader:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* A Reader that outputs the queued work as both the key and value. *)
(* To use, enqueue strings in a Queue.  ReaderRead will take the front
work string and output (work, work). *)
val identityReaderV2:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

(* Compute the lower regularized incomplete Gamma function `Q(a, x)`. *)
(* The lower regularized incomplete Gamma function is defined as:


\\(P(a, x) = gamma(a, x) / Gamma(a) = 1 - Q(a, x)\\)

where

\\(gamma(a, x) = int_{0}^{x} t^{a-1} exp(-t) dt\\)

is the lower incomplete Gamma function.

Note, above `Q(a, x)` (`Igammac`) is the upper regularized complete
Gamma function. *)
val igamma:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Compute the upper regularized incomplete Gamma function `Q(a, x)`. *)
(* The upper regularized incomplete Gamma function is defined as:

\\(Q(a, x) = Gamma(a, x) / Gamma(a) = 1 - P(a, x)\\)

where

\\(Gamma(a, x) = int_{x}^{\infty} t^{a-1} exp(-t) dt\\)

is the upper incomplete Gama function.

Note, above `P(a, x)` (`Igamma`) is the lower regularized complete
Gamma function. *)
val igammac:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Creates a dataset that contains the elements of `input_dataset` ignoring errors. *)
val ignoreErrorsDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
    [ `variant ] t

(* Returns the imaginary part of a complex number. *)
(* Given a tensor `input` of complex numbers, this operation returns a tensor of
type `float` that is the imaginary part of each element in `input`. All
elements in `input` must be complex numbers of the form \\(a + bj\\), where *a*
is the real part and *b* is the imaginary part returned by this operation.

For example:

```
# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
tf.imag(input) ==> [4.75, 5.75]
``` *)
val imag:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

(* Outputs a `Summary` protocol buffer with images. *)
(* The summary has up to `max_images` summary values containing images. The
images are built from `tensor` which must be 4-D with shape `[batch_size,
height, width, channels]` and where `channels` can be:

*  1: `tensor` is interpreted as Grayscale.
*  3: `tensor` is interpreted as RGB.
*  4: `tensor` is interpreted as RGBA.

The images have the same number of channels as the input tensor. For float
input, the values are normalized one image at a time to fit in the range
`[0, 255]`.  `uint8` values are unchanged.  The op uses two different
normalization algorithms:

*  If the input values are all positive, they are rescaled so the largest one
   is 255.

*  If any input value is negative, the values are shifted so input value 0.0
   is at 127.  They are then rescaled so that either the smallest value is 0,
   or the largest one is 255.

The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
build the `tag` of the summary values:

*  If `max_images` is 1, the summary value tag is '*tag*/image'.
*  If `max_images` is greater than 1, the summary value tags are
   generated sequentially as '*tag*/image/0', '*tag*/image/1', etc.

The `bad_color` argument is the color to use in the generated images for
non-finite input values.  It is a `unit8` 1-D tensor of length `channels`.
Each element must be in the range `[0, 255]` (It represents the value of a
pixel in the output image).  Non-finite values in the input tensor are
replaced by this tensor in the output image.  The default value is the color
red. *)
val imageSummary:
  ?max_images:int ->
  [ `string ] t ->
  ([< `uInt8 | `float | `double ] as 't) t ->
    [ `string ] t

(* Returns immutable tensor from memory region. *)
(* The current implementation memmaps the tensor from a file. *)
val immutableConst:
  type_dtype:'dtype Type.t ->
  shape:int list ->
  memory_region_name:string ->
  unit ->
    'dtype t

(* Says whether the targets are in the top `K` predictions. *)
(* This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
prediction for the target class is among the top `k` predictions among
all predictions for example `i`. Note that the behavior of `InTopK` differs
from the `TopK` op in its handling of ties; if multiple classes have the
same prediction value and straddle the top-`k` boundary, all of those
classes are considered to be in the top `k`.

More formally, let

  \\(predictions_i\\) be the predictions for all classes for example `i`,
  \\(targets_i\\) be the target class for example `i`,
  \\(out_i\\) be the output for example `i`,

$$out_i = predictions_{i, targets_i} \in TopKIncludingTies(predictions_i)$$ *)
val inTopK:
  k:int ->
  [ `float ] t ->
  ([< `int32 | `int64 ] as 't) t ->
    [ `bool ] t

(* Says whether the targets are in the top `K` predictions. *)
(* This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
prediction for the target class is among the top `k` predictions among
all predictions for example `i`. Note that the behavior of `InTopK` differs
from the `TopK` op in its handling of ties; if multiple classes have the
same prediction value and straddle the top-`k` boundary, all of those
classes are considered to be in the top `k`.

More formally, let

  \\(predictions_i\\) be the predictions for all classes for example `i`,
  \\(targets_i\\) be the target class for example `i`,
  \\(out_i\\) be the output for example `i`,

$$out_i = predictions_{i, targets_i} \in TopKIncludingTies(predictions_i)$$ *)
val inTopKV2:
  [ `float ] t ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    [ `bool ] t

(* Table initializer that takes two tensors for keys and values respectively. *)
val initializeTable:
  [ `string ] t ->
  'tkey t ->
  'tval t ->
    unit

(* Initializes a table from a text file. *)
(* It inserts one key-value pair into the table for each line of the file.
The key and value is extracted from the whole line content, elements from the
split line based on `delimiter` or the line number (starting from zero).
Where to extract the key and value from a line is specified by `key_index` and
`value_index`.

- A value of -1 means use the line number(starting from zero), expects `int64`.
- A value of -2 means use the whole line content, expects `string`.
- A value >= 0 means use the index (starting at zero) of the split line based
  on `delimiter`. *)
val initializeTableFromTextFile:
  key_index:int ->
  value_index:int ->
  ?vocab_size:int ->
  ?delimiter:string ->
  [ `string ] t ->
  [ `string ] t ->
    unit

(* Initializes a table from a text file. *)
(* It inserts one key-value pair into the table for each line of the file.
The key and value is extracted from the whole line content, elements from the
split line based on `delimiter` or the line number (starting from zero).
Where to extract the key and value from a line is specified by `key_index` and
`value_index`.

- A value of -1 means use the line number(starting from zero), expects `int64`.
- A value of -2 means use the whole line content, expects `string`.
- A value >= 0 means use the index (starting at zero) of the split line based
  on `delimiter`. *)
val initializeTableFromTextFileV2:
  key_index:int ->
  value_index:int ->
  ?vocab_size:int ->
  ?delimiter:string ->
  [ `resource ] t ->
  [ `string ] t ->
    unit

(* Table initializer that takes two tensors for keys and values respectively. *)
val initializeTableV2:
  [ `resource ] t ->
  'tkey t ->
  'tval t ->
    unit

(* Computes the reciprocal of x element-wise. *)
(* I.e., \\(y = 1 / x\\). *)
val inv:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes the gradient for the inverse of `x` wrt its input. *)
(* Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
is the corresponding input gradient. *)
val invGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Flips all bits elementwise. *)
(* The result will have exactly those bits set, that are not set in `x`. The
computation is performed on the underlying representation of x. *)
val invert:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the inverse permutation of a tensor. *)
(* This operation computes the inverse of an index permutation. It takes a 1-D
integer tensor `x`, which represents the indices of a zero-based array, and
swaps each value with its index position. In other words, for an output tensor
`y` and an input tensor `x`, this operation computes the following:

`y[x[i]] = i for i in [0, 1, ..., len(x) - 1]`

The values must include 0. There can be no duplicate values or negative values.

For example:

```
# tensor `x` is [3, 4, 0, 2, 1]
invert_permutation(x) ==> [2, 4, 3, 0, 1]
``` *)
val invertPermutation:
  ([< `int32 | `int64 ] as 't) t ->
    ([< `int32 | `int64 ] as 't) t

(* Returns which elements of x are finite. *)
(* @compatibility(numpy)
Equivalent to np.isfinite
@end_compatibility *)
val isFinite:
  ([< `float | `double ] as 't) t ->
    [ `bool ] t

(* Returns which elements of x are Inf. *)
(* @compatibility(numpy)
Equivalent to np.isinf
@end_compatibility *)
val isInf:
  ([< `float | `double ] as 't) t ->
    [ `bool ] t

(* Returns which elements of x are NaN. *)
(* @compatibility(numpy)
Equivalent to np.isnan
@end_compatibility *)
val isNan:
  ([< `float | `double ] as 't) t ->
    [ `bool ] t

(* Checks whether a tensor has been initialized. *)
(* Outputs boolean scalar indicating whether the tensor has been initialized. *)
val isVariableInitialized:
  'dtype t ->
    [ `bool ] t

(* A container for an iterator resource. *)
val iterator:
  shared_name:string ->
  container:string ->
  output_types:Type.p list ->
  output_shapes:int list list ->
  unit ->
    [ `resource ] t

(* Converts the given string representing a handle to an iterator to a resource. *)
val iteratorFromStringHandle:
  ?output_types:Type.p list ->
  ?output_shapes:int list list ->
  [ `string ] t ->
    [ `resource ] t

(* Converts the given `resource_handle` representing an iterator to a string. *)
val iteratorToStringHandle:
  [ `resource ] t ->
    [ `string ] t

(* L2 Loss. *)
(* Computes half the L2 norm of a tensor without the `sqrt`:

    output = sum(t ** 2) / 2 *)
val l2Loss:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* A Reader that outputs the records from a LMDB file. *)
val lMDBReader:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* Local Response Normalization. *)
(* The 4-D `input` tensor is treated as a 3-D array of 1-D vectors (along the last
dimension), and each vector is normalized independently.  Within a given vector,
each component is divided by the weighted, squared sum of inputs within
`depth_radius`.  In detail,

    sqr_sum[a, b, c, d] =
        sum(input[a, b, c, d - depth_radius : d + depth_radius + 1] ** 2)
    output = input / (bias + alpha * sqr_sum) ** beta

For details, see [Krizhevsky et al., ImageNet classification with deep
convolutional neural networks (NIPS 2012)](http://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks). *)
val lRN:
  ?depth_radius:int ->
  ?bias:float ->
  ?alpha:float ->
  ?beta:float ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Gradients for Local Response Normalization. *)
val lRNGrad:
  ?depth_radius:int ->
  ?bias:float ->
  ?alpha:float ->
  ?beta:float ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Generates labels for candidate sampling with a learned unigram distribution. *)
(* See explanations of candidate sampling and the data formats at
go/candidate-sampling.

For each batch, this op picks a single set of sampled candidate labels.

The advantages of sampling candidates per-batch are simplicity and the
possibility of efficient dense matrix multiplication. The disadvantage is that
the sampled candidates must be chosen independently of the context and of the
true labels. *)
val learnedUnigramCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

(* Returns the truth value of (x < y) element-wise. *)
(* *NOTE*: `Less` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val less:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `bool ] t

(* Returns the truth value of (x <= y) element-wise. *)
(* *NOTE*: `LessEqual` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val lessEqual:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `bool ] t

(* Computes the log of the absolute value of `Gamma(x)` element-wise. *)
val lgamma:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Generates values in an interval. *)
(* A sequence of `num` evenly-spaced values are generated beginning at `start`.
If `num > 1`, the values in the sequence increase by `stop - start / num - 1`,
so that the last one is exactly `stop`.

For example:

```
tf.linspace(10.0, 12.0, 3, name='linspace') => [ 10.0  11.0  12.0]
``` *)
val linSpace:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double ] as 't) t

(* Computes the difference between two lists of numbers or strings. *)
(* Given a list `x` and a list `y`, this operation returns a list `out` that
represents all values that are in `x` but not in `y`. The returned list `out`
is sorted in the same order that the numbers appear in `x` (duplicates are
preserved). This operation also returns a list `idx` that represents the
position of each `out` element in `x`. In other words:

`out[i] = x[idx[i]] for i in [0, 1, ..., len(out) - 1]`

For example, given this input:

```
x = [1, 2, 3, 4, 5, 6]
y = [1, 3, 5]
```

This operation would return:

```
out ==> [2, 4, 6]
idx ==> [1, 3, 5]
``` *)
val listDiff:
  type_out_idx:([< `int32 | `int64 ] as 'out_idx) Type.t ->
  't t ->
  't t ->
    't t * ([< `int32 | `int64 ] as 'out_idx) t

(* Loads a 2-D (matrix) `Tensor` with name `old_tensor_name` from the checkpoint *)
(* at `ckpt_path` and potentially reorders its rows and columns using the
specified remappings.

Most users should use one of the wrapper initializers (such as
`tf.contrib.framework.load_and_remap_matrix_initializer`) instead of this
function directly.

The remappings are 1-D tensors with the following properties:

* `row_remapping` must have exactly `num_rows` entries. Row `i` of the output
  matrix will be initialized from the row corresponding to index
  `row_remapping[i]` in the old `Tensor` from the checkpoint.
* `col_remapping` must have either 0 entries (indicating that no column
  reordering is needed) or `num_cols` entries. If specified, column `j` of the
  output matrix will be initialized from the column corresponding to index
  `col_remapping[j]` in the old `Tensor` from the checkpoint.
* A value of -1 in either of the remappings signifies a 'missing' entry. In that
  case, values from the `initializing_values` tensor will be used to fill that
  missing row or column. If `row_remapping` has `r` missing entries and
  `col_remapping` has `c` missing entries, then the following condition must be
  true:

`(r * num_cols) + (c * num_rows) - (r * c) == len(initializing_values)`

The remapping tensors can be generated using the GenerateVocabRemapping op.

As an example, with row_remapping = [1, 0, -1], col_remapping = [0, 2, -1],
initializing_values = [0.5, -0.5, 0.25, -0.25, 42], and w(i, j) representing
the value from row i, column j of the old tensor in the checkpoint, the output
matrix will look like the following:

[[w(1, 0),  w(1, 2),  0.5],
 [w(0, 0),  w(0, 2), -0.5],
 [0.25,    -0.25,      42]] *)
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

(* Computes natural logarithm of x element-wise. *)
(* I.e., \\(y = \log_e x\\). *)
val log:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes natural logarithm of (1 + x) element-wise. *)
(* I.e., \\(y = \log_e (1 + x)\\). *)
val log1p:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes the sign and the log of the absolute value of the determinant of *)
(* one or more square matrices.

The input is a tensor of shape `[N, M, M]` whose inner-most 2 dimensions
form square matrices. The outputs are two tensors containing the signs and
absolute values of the log determinants for all N input submatrices
`[..., :, :]` such that the determinant = sign*exp(log_abs_determinant).
The log_abs_determinant is computed as det(P)*sum(log(diag(LU))) where LU
is the LU decomposition of the input and P is the corresponding
permutation matrix. *)
val logMatrixDeterminant:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t * ([< `float | `double | `complex64 ] as 't) t

(* Computes log softmax activations. *)
(* For each batch `i` and class `j` we have

    logsoftmax[i, j] = logits[i, j] - log(sum(exp(logits[i]))) *)
val logSoftmax:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Generates labels for candidate sampling with a log-uniform distribution. *)
(* See explanations of candidate sampling and the data formats at
go/candidate-sampling.

For each batch, this op picks a single set of sampled candidate labels.

The advantages of sampling candidates per-batch are simplicity and the
possibility of efficient dense matrix multiplication. The disadvantage is that
the sampled candidates must be chosen independently of the context and of the
true labels. *)
val logUniformCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

(* Returns the truth value of x AND y element-wise. *)
(* *NOTE*: `LogicalAnd` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val logicalAnd:
  [ `bool ] t ->
  [ `bool ] t ->
    [ `bool ] t

(* Returns the truth value of NOT x element-wise. *)
val logicalNot:
  [ `bool ] t ->
    [ `bool ] t

(* Returns the truth value of x OR y element-wise. *)
(* *NOTE*: `LogicalOr` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val logicalOr:
  [ `bool ] t ->
  [ `bool ] t ->
    [ `bool ] t

(* Outputs all keys and values in the table. *)
val lookupTableExport:
  type_tkeys:'tkeys Type.t ->
  type_tvalues:'tvalues Type.t ->
  [ `string ] t ->
    'tkeys t * 'tvalues t

(* Outputs all keys and values in the table. *)
val lookupTableExportV2:
  type_tkeys:'tkeys Type.t ->
  type_tvalues:'tvalues Type.t ->
  [ `resource ] t ->
    'tkeys t * 'tvalues t

(* Looks up keys in a table, outputs the corresponding values. *)
(* The tensor `keys` must of the same type as the keys of the table.
The output `values` is of the type of the table values.

The scalar `default_value` is the value output for keys not present in the
table. It must also be of the same type as the table values. *)
val lookupTableFind:
  [ `string ] t ->
  'tin t ->
  'tout t ->
    'tout t

(* Looks up keys in a table, outputs the corresponding values. *)
(* The tensor `keys` must of the same type as the keys of the table.
The output `values` is of the type of the table values.

The scalar `default_value` is the value output for keys not present in the
table. It must also be of the same type as the table values. *)
val lookupTableFindV2:
  [ `resource ] t ->
  'tin t ->
  'tout t ->
    'tout t

(* Replaces the contents of the table with the specified keys and values. *)
(* The tensor `keys` must be of the same type as the keys of the table.
The tensor `values` must be of the type of the table values. *)
val lookupTableImport:
  [ `string ] t ->
  'tin t ->
  'tout t ->
    unit

(* Replaces the contents of the table with the specified keys and values. *)
(* The tensor `keys` must be of the same type as the keys of the table.
The tensor `values` must be of the type of the table values. *)
val lookupTableImportV2:
  [ `resource ] t ->
  'tin t ->
  'tout t ->
    unit

(* Updates the table to associates keys with values. *)
(* The tensor `keys` must be of the same type as the keys of the table.
The tensor `values` must be of the type of the table values. *)
val lookupTableInsert:
  [ `string ] t ->
  'tin t ->
  'tout t ->
    unit

(* Updates the table to associates keys with values. *)
(* The tensor `keys` must be of the same type as the keys of the table.
The tensor `values` must be of the type of the table values. *)
val lookupTableInsertV2:
  [ `resource ] t ->
  'tin t ->
  'tout t ->
    unit

(* Computes the number of elements in the given table. *)
val lookupTableSize:
  [ `string ] t ->
    [ `int64 ] t

(* Computes the number of elements in the given table. *)
val lookupTableSizeV2:
  [ `resource ] t ->
    [ `int64 ] t

(* Forwards the input to the output. *)
(* This operator represents the loop termination condition used by the
'pivot' switches of a loop. *)
val loopCond:
  [ `bool ] t ->
    [ `bool ] t

(* Makes a new iterator from the given `dataset` and stores it in `iterator`. *)
(* This operation may be executed multiple times. Each execution will reset the
iterator in `iterator` to the first element of `dataset`. *)
val makeIterator:
  [ `variant ] t ->
  [ `resource ] t ->
    unit

(* Op removes all elements in the underlying container. *)
val mapClear:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    unit

(* Op returns the number of incomplete elements in the underlying container. *)
val mapIncompleteSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

(* Op returns the number of elements in the underlying container. *)
val mapSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

(* Multiply the matrix 'a' by the matrix 'b'. *)
(* The inputs must be two-dimensional matrices and the inner dimension of
'a' (after being transposed if transpose_a is true) must match the
outer dimension of 'b' (after being transposed if transposed_b is
true).

*Note*: The default kernel implementation for MatMul on GPUs uses
cublas. *)
val matMul:
  ?transpose_a:bool ->
  ?transpose_b:bool ->
  ([< `float | `double | `int32 | `complex64 ] as 't) t ->
  ([< `float | `double | `int32 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `complex64 ] as 't) t

(* Returns the set of files matching one or more glob patterns. *)
(* Note that this routine only supports wildcard characters in the
basename portion of the pattern, not in the directory portion. *)
val matchingFiles:
  [ `string ] t ->
    [ `string ] t

(* Copy a tensor setting everything outside a central band in each innermost matrix *)
(* to zero.

The `band` part is computed as follows:
Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
tensor with the same shape where

`band[i, j, k, ..., m, n] = in_band(m, n) * input[i, j, k, ..., m, n]`.

The indicator function

`in_band(m, n) = (num_lower < 0 || (m-n) <= num_lower)) &&
                 (num_upper < 0 || (n-m) <= num_upper)`.

For example:

```
# if 'input' is [[ 0,  1,  2, 3]
                 [-1,  0,  1, 2]
                 [-2, -1,  0, 1]
                 [-3, -2, -1, 0]],

tf.matrix_band_part(input, 1, -1) ==> [[ 0,  1,  2, 3]
                                       [-1,  0,  1, 2]
                                       [ 0, -1,  0, 1]
                                       [ 0,  0, -1, 0]],

tf.matrix_band_part(input, 2, 1) ==> [[ 0,  1,  0, 0]
                                      [-1,  0,  1, 0]
                                      [-2, -1,  0, 1]
                                      [ 0, -2, -1, 0]]
```

Useful special cases:

```
 tf.matrix_band_part(input, 0, -1) ==> Upper triangular part.
 tf.matrix_band_part(input, -1, 0) ==> Lower triangular part.
 tf.matrix_band_part(input, 0, 0) ==> Diagonal.
``` *)
val matrixBandPart:
  't t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    't t

(* Computes the determinant of one or more square matrices. *)
(* The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
form square matrices. The output is a tensor containing the determinants
for all input submatrices `[..., :, :]`. *)
val matrixDeterminant:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Returns a batched diagonal tensor with a given batched diagonal values. *)
(* Given a `diagonal`, this operation returns a tensor with the `diagonal` and
everything else padded with zeros. The diagonal is computed as follows:

Assume `diagonal` has `k` dimensions `[I, J, K, ..., N]`, then the output is a
tensor of rank `k+1` with dimensions [I, J, K, ..., N, N]` where:

`output[i, j, k, ..., m, n] = 1{m=n} * diagonal[i, j, k, ..., n]`.

For example:

```
# 'diagonal' is [[1, 2, 3, 4], [5, 6, 7, 8]]

and diagonal.shape = (2, 4)

tf.matrix_diag(diagonal) ==> [[[1, 0, 0, 0]
                                     [0, 2, 0, 0]
                                     [0, 0, 3, 0]
                                     [0, 0, 0, 4]],
                                    [[5, 0, 0, 0]
                                     [0, 6, 0, 0]
                                     [0, 0, 7, 0]
                                     [0, 0, 0, 8]]]

which has shape (2, 4, 4)
``` *)
val matrixDiag:
  't t ->
    't t

(* Returns the batched diagonal part of a batched tensor. *)
(* This operation returns a tensor with the `diagonal` part
of the batched `input`. The `diagonal` part is computed as follows:

Assume `input` has `k` dimensions `[I, J, K, ..., M, N]`, then the output is a
tensor of rank `k - 1` with dimensions `[I, J, K, ..., min(M, N)]` where:

`diagonal[i, j, k, ..., n] = input[i, j, k, ..., n, n]`.

The input must be at least a matrix.

For example:

```
# 'input' is [[[1, 0, 0, 0]
               [0, 2, 0, 0]
               [0, 0, 3, 0]
               [0, 0, 0, 4]],
              [[5, 0, 0, 0]
               [0, 6, 0, 0]
               [0, 0, 7, 0]
               [0, 0, 0, 8]]]

and input.shape = (2, 4, 4)

tf.matrix_diag_part(input) ==> [[1, 2, 3, 4], [5, 6, 7, 8]]

which has shape (2, 4)
``` *)
val matrixDiagPart:
  't t ->
    't t

(* Computes the inverse of one or more square invertible matrices or their *)
(* adjoints (conjugate transposes).

The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
form square matrices. The output is a tensor of the same shape as the input
containing the inverse for all input submatrices `[..., :, :]`.

The op uses LU decomposition with partial pivoting to compute the inverses.

If a matrix is not invertible there is no guarantee what the op does. It
may detect the condition and raise an exception or it may simply return a
garbage result. *)
val matrixInverse:
  ?adjoint:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

(* Returns a batched matrix tensor with new batched diagonal values. *)
(* Given `input` and `diagonal`, this operation returns a tensor with the
same shape and values as `input`, except for the main diagonal of the
innermost matrices.  These will be overwritten by the values in `diagonal`.

The output is computed as follows:

Assume `input` has `k+1` dimensions `[I, J, K, ..., M, N]` and `diagonal` has
`k` dimensions `[I, J, K, ..., min(M, N)]`.  Then the output is a
tensor of rank `k+1` with dimensions `[I, J, K, ..., M, N]` where:

  * `output[i, j, k, ..., m, n] = diagonal[i, j, k, ..., n]` for `m == n`.
  * `output[i, j, k, ..., m, n] = input[i, j, k, ..., m, n]` for `m != n`. *)
val matrixSetDiag:
  't t ->
  't t ->
    't t

(* Solves systems of linear equations. *)
(* `Matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
form square matrices. `Rhs` is a tensor of shape `[..., M, K]`. The `output` is
a tensor shape `[..., M, K]`.  If `adjoint` is `False` then each output matrix
satisfies `matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
If `adjoint` is `True` then each output matrix satisfies
`adjoint(matrix[..., :, :]) * output[..., :, :] = rhs[..., :, :]`. *)
val matrixSolve:
  ?adjoint:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

(* Solves one or more linear least-squares problems. *)
(* `matrix` is a tensor of shape `[..., M, N]` whose inner-most 2 dimensions
form real or complex matrices of size `[M, N]`. `Rhs` is a tensor of the same
type as `matrix` and shape `[..., M, K]`.
The output is a tensor shape `[..., N, K]` where each output matrix solves
each of the equations
`matrix[..., :, :]` * `output[..., :, :]` = `rhs[..., :, :]`
in the least squares sense.

We use the following notation for (complex) matrix and right-hand sides
in the batch:

`matrix`=\\(A \in \mathbb{C}^{m \times n}\\),
`rhs`=\\(B  \in \mathbb{C}^{m \times k}\\),
`output`=\\(X  \in \mathbb{C}^{n \times k}\\),
`l2_regularizer`=\\(\lambda \in \mathbb{R}\\).

If `fast` is `True`, then the solution is computed by solving the normal
equations using Cholesky decomposition. Specifically, if \\(m \ge n\\) then
\\(X = (A^H A + \lambda I)^{-1} A^H B\\), which solves the least-squares
problem \\(X = \mathrm{argmin}_{Z \in \Re^{n \times k} } ||A Z - B||_F^2 +
\lambda ||Z||_F^2\\). If \\(m \lt n\\) then `output` is computed as
\\(X = A^H (A A^H + \lambda I)^{-1} B\\), which (for \\(\lambda = 0\\)) is the
minimum-norm solution to the under-determined linear system, i.e.
\\(X = \mathrm{argmin}_{Z \in \mathbb{C}^{n \times k} } ||Z||_F^2 \\),
subject to \\(A Z = B\\). Notice that the fast path is only numerically stable
when \\(A\\) is numerically full rank and has a condition number
\\(\mathrm{cond}(A) \lt \frac{1}{\sqrt{\epsilon_{mach} } }\\) or\\(\lambda\\) is
sufficiently large.

If `fast` is `False` an algorithm based on the numerically robust complete
orthogonal decomposition is used. This computes the minimum-norm
least-squares solution, even when \\(A\\) is rank deficient. This path is
typically 6-7 times slower than the fast path. If `fast` is `False` then
`l2_regularizer` is ignored. *)
val matrixSolveLs:
  ?fast:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
  ([< `double | `float | `complex64 ] as 't) t ->
  [ `double ] t ->
    ([< `double | `float | `complex64 ] as 't) t

(* Solves systems of linear equations with upper or lower triangular matrices by *)
(* backsubstitution.

`matrix` is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions form
square matrices. If `lower` is `True` then the strictly upper triangular part
of each inner-most matrix is assumed to be zero and not accessed.
If `lower` is False then the strictly lower triangular part of each inner-most
matrix is assumed to be zero and not accessed.
`rhs` is a tensor of shape `[..., M, K]`.

The output is a tensor of shape `[..., M, K]`. If `adjoint` is
`True` then the innermost matrices in `output` satisfy matrix equations
`matrix[..., :, :] * output[..., :, :] = rhs[..., :, :]`.
If `adjoint` is `False` then the strictly then the  innermost matrices in
`output` satisfy matrix equations
`adjoint(matrix[..., i, k]) * output[..., k, j] = rhs[..., i, j]`. *)
val matrixTriangularSolve:
  ?lower:bool ->
  ?adjoint:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t

(* Computes the maximum of elements across dimensions of a tensor. *)
(* Reduces `input` along the dimensions given in `reduction_indices`. Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_indices`. If `keep_dims` is true, the reduced dimensions are
retained with length 1. *)
val max:
  ?keep_dims:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Performs max pooling on the input. *)
val maxPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Performs 3D max pooling on the input. *)
val maxPool3D:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Computes gradients of max pooling function. *)
val maxPool3DGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 'tInput) t ->
  ([< `float ] as 'tInput) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Computes second-order gradients of the maxpooling function. *)
val maxPool3DGradGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
  ([< `float ] as 't) t ->
    ([< `float ] as 't) t

(* Computes gradients of the maxpooling function. *)
val maxPoolGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes second-order gradients of the maxpooling function. *)
val maxPoolGradGrad:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes second-order gradients of the maxpooling function. *)
val maxPoolGradGradV2:
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes second-order gradients of the maxpooling function. *)
val maxPoolGradGradWithArgmax:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'targmax) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes gradients of the maxpooling function. *)
val maxPoolGradV2:
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes gradients of the maxpooling function. *)
val maxPoolGradWithArgmax:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'targmax) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Performs max pooling on the input. *)
val maxPoolV2:
  padding:string ->
  ?data_format:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Performs max pooling on the input and outputs both max values and indices. *)
(* The indices in `argmax` are flattened, so that a maximum value at position
`[b, y, x, c]` becomes flattened index
`((b * height + y) * width + x) * channels + c`.

The indices returned are always in `[0, height) x [0, width)` before flattening,
even if padding is involved and the mathematically correct answer is outside
(either negative or too large).  This is a bug, but fixing it is difficult to do
in a safe backwards compatible way, especially due to flattening. *)
val maxPoolWithArgmax:
  type_targmax:([< `int32 | `int64 ] as 'targmax) Type.t ->
  ksize:int list ->
  strides:int list ->
  padding:string ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t * ([< `int32 | `int64 ] as 'targmax) t

(* Returns the max of x and y (i.e. x > y ? x : y) element-wise. *)
(* *NOTE*: `Maximum` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val maximum:
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

(* Computes the mean of elements across dimensions of a tensor. *)
(* Reduces `input` along the dimensions given in `reduction_indices`. Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_indices`. If `keep_dims` is true, the reduced dimensions are
retained with length 1. *)
val mean:
  ?keep_dims:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Forwards the value of an available tensor from `inputs` to `output`. *)
(* `Merge` waits for at least one of the tensors in `inputs` to become available.
It is usually combined with `Switch` to implement branching.

`Merge` forwards the first tensor to become available to `output`, and sets
`value_index` to its index in `inputs`. *)
val merge:
  't t list ->
    't t * [ `int32 ] t

(* Merges summaries. *)
(* This op creates a
[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
protocol buffer that contains the union of all the values in the input
summaries.

When the Op is run, it reports an `InvalidArgument` error if multiple values
in the summaries to merge use the same tag. *)
val mergeSummary:
  [ `string ] t list ->
    [ `string ] t

(* V2 format specific: merges the metadata files of sharded checkpoints.  The *)
(* result is one logical checkpoint, with one physical metadata file and renamed
data files.

Intended for 'grouping' multiple checkpoints in a sharded checkpoint setup.

If delete_old_dirs is true, attempts to delete recursively the dirname of each
path in the input checkpoint_prefixes.  This is useful when those paths are non
user-facing temporary locations. *)
val mergeV2Checkpoints:
  ?delete_old_dirs:bool ->
  [ `string ] t ->
  [ `string ] t ->
    unit

(* Transforms a spectrogram into a form that's useful for speech recognition. *)
(* Mel Frequency Cepstral Coefficients are a way of representing audio data that's
been effective as an input feature for machine learning. They are created by
taking the spectrum of a spectrogram (a 'cepstrum'), and discarding some of the
higher frequencies that are less significant to the human ear. They have a long
history in the speech recognition world, and https://en.wikipedia.org/wiki/Mel-frequency_cepstrum
is a good resource to learn more. *)
val mfcc:
  ?upper_frequency_limit:float ->
  ?lower_frequency_limit:float ->
  ?filterbank_channel_count:int ->
  ?dct_coefficient_count:int ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `float ] t

(* Computes the minimum of elements across dimensions of a tensor. *)
(* Reduces `input` along the dimensions given in `reduction_indices`. Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_indices`. If `keep_dims` is true, the reduced dimensions are
retained with length 1. *)
val min:
  ?keep_dims:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Returns the min of x and y (i.e. x < y ? x : y) element-wise. *)
(* *NOTE*: `Minimum` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val minimum:
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 ] as 't) t

(* Pads a tensor with mirrored values. *)
(* This operation pads a `input` with mirrored values according to the `paddings`
you specify. `paddings` is an integer tensor with shape `[n, 2]`, where n is
the rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
how many values to add before the contents of `input` in that dimension, and
`paddings[D, 1]` indicates how many values to add after the contents of `input`
in that dimension. Both `paddings[D, 0]` and `paddings[D, 1]` must be no greater
than `input.dim_size(D)` (or `input.dim_size(D) - 1`) if `copy_border` is true
(if false, respectively).

The padded size of each dimension D of the output is:

`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`

For example:

```
# 't' is [[1, 2, 3], [4, 5, 6]].
# 'paddings' is [[1, 1]], [2, 2]].
# 'mode' is SYMMETRIC.
# rank of 't' is 2.
pad(t, paddings) ==> [[2, 1, 1, 2, 3, 3, 2]
                      [2, 1, 1, 2, 3, 3, 2]
                      [5, 4, 4, 5, 6, 6, 5]
                      [5, 4, 4, 5, 6, 6, 5]]
``` *)
val mirrorPad:
  mode:string ->
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

(* Gradient op for `MirrorPad` op. This op folds a mirror-padded tensor. *)
(* This operation folds the padded areas of `input` by `MirrorPad` according to the
`paddings` you specify. `paddings` must be the same as `paddings` argument
given to the corresponding `MirrorPad` op.

The folded size of each dimension D of the output is:

`input.dim_size(D) - paddings(D, 0) - paddings(D, 1)`

For example:

```
# 't' is [[1, 2, 3], [4, 5, 6], [7, 8, 9]].
# 'paddings' is [[0, 1]], [0, 1]].
# 'mode' is SYMMETRIC.
# rank of 't' is 2.
pad(t, paddings) ==> [[ 1,  5]
                      [11, 28]]
``` *)
val mirrorPadGrad:
  mode:string ->
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

(* Returns element-wise remainder of division. This emulates C semantics in that *)
(* the result here is consistent with a truncating divide. E.g. `truncate(x / y) *
y + truncate_mod(x, y) = x`.

*NOTE*: `Mod` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val mod_:
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

(* Returns x * y element-wise. *)
(* *NOTE*: `Mul` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val mul:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

(* Draws samples from a multinomial distribution. *)
val multinomial:
  ?seed:int ->
  ?seed2:int ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
    [ `int64 ] t

(* Creates an empty hash table that uses tensors as the backing store. *)
(* It uses 'open addressing' with quadratic reprobing to resolve
collisions.

This op creates a mutable hash table, specifying the type of its keys and
values. Each value must be a scalar. Data can be inserted into the table using
the insert operations. It does not support the initialization operation. *)
val mutableDenseHashTable:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  ?initial_num_buckets:int ->
  ?max_load_factor:float ->
  'key_dtype t ->
    [ `string ] t

(* Creates an empty hash table that uses tensors as the backing store. *)
(* It uses 'open addressing' with quadratic reprobing to resolve
collisions.

This op creates a mutable hash table, specifying the type of its keys and
values. Each value must be a scalar. Data can be inserted into the table using
the insert operations. It does not support the initialization operation. *)
val mutableDenseHashTableV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  ?initial_num_buckets:int ->
  ?max_load_factor:float ->
  'key_dtype t ->
    [ `resource ] t

(* Creates an empty hash table. *)
(* This op creates a mutable hash table, specifying the type of its keys and
values. Each value must be a scalar. Data can be inserted into the table using
the insert operations. It does not support the initialization operation. *)
val mutableHashTable:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `string ] t

(* Creates an empty hash table. *)
(* This op creates a mutable hash table, specifying the type of its keys and
values. Each value must be a vector. Data can be inserted into the table using
the insert operations. It does not support the initialization operation. *)
val mutableHashTableOfTensors:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  unit ->
    [ `string ] t

(* Creates an empty hash table. *)
(* This op creates a mutable hash table, specifying the type of its keys and
values. Each value must be a vector. Data can be inserted into the table using
the insert operations. It does not support the initialization operation. *)
val mutableHashTableOfTensorsV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  ?value_shape:int list ->
  unit ->
    [ `resource ] t

(* Creates an empty hash table. *)
(* This op creates a mutable hash table, specifying the type of its keys and
values. Each value must be a scalar. Data can be inserted into the table using
the insert operations. It does not support the initialization operation. *)
val mutableHashTableV2:
  ?container:string ->
  ?shared_name:string ->
  ?use_node_name_sharing:bool ->
  unit ->
    [ `resource ] t

(* Computes numerical negative value element-wise. *)
(* I.e., \\(y = -x\\). *)
val neg:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Training via negative sampling. *)
val negTrain:
  vocab_count:int list ->
  num_negative_samples:int ->
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    unit

(* Makes its input available to the next iteration. *)
val nextIteration:
  't t ->
    't t

(* Does nothing. Only useful as a placeholder for control edges. *)
val noOp:
  unit ->
    unit

(* Greedily selects a subset of bounding boxes in descending order of score, *)
(* pruning away boxes that have high intersection-over-union (IOU) overlap
with previously selected boxes.  Bounding boxes are supplied as
[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
diagonal pair of box corners and the coordinates can be provided as normalized
(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
is agnostic to where the origin is in the coordinate system.  Note that this
algorithm is invariant to orthogonal transformations and translations
of the coordinate system; thus translating or reflections of the coordinate
system result in the same boxes being selected by the algorithm.
The output of this operation is a set of integers indexing into the input
collection of bounding boxes representing the selected boxes.  The bounding
box coordinates corresponding to the selected indices can then be obtained
using the `tf.gather operation`.  For example:
  selected_indices = tf.image.non_max_suppression(
      boxes, scores, max_output_size, iou_threshold)
  selected_boxes = tf.gather(boxes, selected_indices) *)
val nonMaxSuppression:
  ?iou_threshold:float ->
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
    [ `int32 ] t

(* Greedily selects a subset of bounding boxes in descending order of score, *)
(* pruning away boxes that have high intersection-over-union (IOU) overlap
with previously selected boxes.  Bounding boxes are supplied as
[y1, x1, y2, x2], where (y1, x1) and (y2, x2) are the coordinates of any
diagonal pair of box corners and the coordinates can be provided as normalized
(i.e., lying in the interval [0, 1]) or absolute.  Note that this algorithm
is agnostic to where the origin is in the coordinate system.  Note that this
algorithm is invariant to orthogonal transformations and translations
of the coordinate system; thus translating or reflections of the coordinate
system result in the same boxes being selected by the algorithm.

The output of this operation is a set of integers indexing into the input
collection of bounding boxes representing the selected boxes.  The bounding
box coordinates corresponding to the selected indices can then be obtained
using the `tf.gather operation`.  For example:

  selected_indices = tf.image.non_max_suppression_v2(
      boxes, scores, max_output_size, iou_threshold)
  selected_boxes = tf.gather(boxes, selected_indices) *)
val nonMaxSuppressionV2:
  [ `float ] t ->
  [ `float ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    [ `int32 ] t

(* Returns the truth value of (x != y) element-wise. *)
(* *NOTE*: `NotEqual` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val notEqual:
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
  ([< `float | `double | `uInt8 | `int32 | `int64 | `complex64 | `string | `bool ] as 't) t ->
    [ `bool ] t

(* Returns a one-hot tensor. *)
(* The locations represented by indices in `indices` take value `on_value`,
while all other locations take value `off_value`.

If the input `indices` is rank `N`, the output will have rank `N+1`,
The new axis is created at dimension `axis` (default: the new axis is
appended at the end).

If `indices` is a scalar the output shape will be a vector of length `depth`.

If `indices` is a vector of length `features`, the output shape will be:
```
  features x depth if axis == -1
  depth x features if axis == 0
```

If `indices` is a matrix (batch) with shape `[batch, features]`,
the output shape will be:
```
  batch x features x depth if axis == -1
  batch x depth x features if axis == 1
  depth x batch x features if axis == 0
```


Examples
=========

Suppose that

```
  indices = [0, 2, -1, 1]
  depth = 3
  on_value = 5.0
  off_value = 0.0
  axis = -1
```

Then output is `[4 x 3]`:

    ```output =
      [5.0 0.0 0.0]  // one_hot(0)
      [0.0 0.0 5.0]  // one_hot(2)
      [0.0 0.0 0.0]  // one_hot(-1)
      [0.0 5.0 0.0]  // one_hot(1)
    ```

Suppose that

```
  indices = [0, 2, -1, 1]
  depth = 3
  on_value = 0.0
  off_value = 3.0
  axis = 0
```

Then output is `[3 x 4]`:

    ```output =
      [0.0 3.0 3.0 3.0]
      [3.0 3.0 3.0 0.0]
      [3.0 3.0 3.0 3.0]
      [3.0 0.0 3.0 3.0]
    //  ^                one_hot(0)
    //      ^            one_hot(2)
    //          ^        one_hot(-1)
    //              ^    one_hot(1)
    ```
Suppose that

```
  indices = [[0, 2], [1, -1]]
  depth = 3
  on_value = 1.0
  off_value = 0.0
  axis = -1
```

Then output is `[2 x 2 x 3]`:

    ```output =
      [
        [1.0, 0.0, 0.0]  // one_hot(0)
        [0.0, 0.0, 1.0]  // one_hot(2)
      ][
        [0.0, 1.0, 0.0]  // one_hot(1)
        [0.0, 0.0, 0.0]  // one_hot(-1)
      ]``` *)
val oneHot:
  ?axis:int ->
  ([< `uInt8 | `int32 | `int64 ] as 'tI) t ->
  [ `int32 ] t ->
  't t ->
  't t ->
    't t

(* Makes a 'one-shot' iterator that can be iterated only once. *)
(* A one-shot iterator bundles the logic for defining the dataset and
the state of the iterator in a single op, which allows simple input
pipelines to be defined without an additional initialization
('MakeIterator') step.

One-shot iterators have the following limitations:

* They do not support parameterization: all logic for creating the underlying
  dataset must be bundled in the `dataset_factory` function.
* They are not resettable. Once a one-shot iterator reaches the end of its
  underlying dataset, subsequent 'IteratorGetNext' operations on that
  iterator will always produce an `OutOfRange` error.

For greater flexibility, use 'Iterator' and 'MakeIterator' to define
an iterator using an arbitrary subgraph, which may capture tensors
(including fed values) as parameters, and which may be reset multiple
times by rerunning 'MakeIterator'. *)
val oneShotIterator:
  output_types:Type.p list ->
  output_shapes:int list list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

(* Returns a tensor of ones with the same shape and type as x. *)
val onesLike:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Op removes all elements in the underlying container. *)
val orderedMapClear:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    unit

(* Op returns the number of incomplete elements in the underlying container. *)
val orderedMapIncompleteSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

(* Op returns the number of elements in the underlying container. *)
val orderedMapSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

(* Packs a list of `N` rank-`R` tensors into one rank-`(R+1)` tensor. *)
(* Packs the `N` tensors in `values` into a tensor with rank one higher than each
tensor in `values`, by packing them along the `axis` dimension.
Given a list of tensors of shape `(A, B, C)`;

if `axis == 0` then the `output` tensor will have the shape `(N, A, B, C)`.
if `axis == 1` then the `output` tensor will have the shape `(A, N, B, C)`.
Etc.

For example:

```
# 'x' is [1, 4]
# 'y' is [2, 5]
# 'z' is [3, 6]
pack([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
pack([x, y, z], axis=1) => [[1, 2, 3], [4, 5, 6]]
```

This is the opposite of `unpack`. *)
val pack:
  ?axis:int ->
  't t list ->
    't t

(* Pads a tensor with zeros. *)
(* This operation pads a `input` with zeros according to the `paddings` you
specify. `paddings` is an integer tensor with shape `[Dn, 2]`, where n is the
rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
how many zeros to add before the contents of `input` in that dimension, and
`paddings[D, 1]` indicates how many zeros to add after the contents of `input`
in that dimension.

The padded size of each dimension D of the output is:

`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`

For example:

```
# 't' is [[1, 1], [2, 2]]
# 'paddings' is [[1, 1], [2, 2]]
# rank of 't' is 2
pad(t, paddings) ==> [[0, 0, 0, 0, 0, 0]
                      [0, 0, 1, 1, 0, 0]
                      [0, 0, 2, 2, 0, 0]
                      [0, 0, 0, 0, 0, 0]]
``` *)
val pad:
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

(* Pads a tensor. *)
(* This operation pads `input` according to the `paddings` and `constant_values`
you specify. `paddings` is an integer tensor with shape `[Dn, 2]`, where n is
the rank of `input`. For each dimension D of `input`, `paddings[D, 0]` indicates
how many padding values to add before the contents of `input` in that dimension,
and `paddings[D, 1]` indicates how many padding values to add after the contents
of `input` in that dimension. `constant_values` is a scalar tensor of the same
type as `input` that indicates the value to use for padding `input`.

The padded size of each dimension D of the output is:

`paddings(D, 0) + input.dim_size(D) + paddings(D, 1)`

For example:

```
# 't' is [[1, 1], [2, 2]]
# 'paddings' is [[1, 1], [2, 2]]
# 'constant_values' is 0
# rank of 't' is 2
pad(t, paddings) ==> [[0, 0, 0, 0, 0, 0]
                      [0, 0, 1, 1, 0, 0]
                      [0, 0, 2, 2, 0, 0]
                      [0, 0, 0, 0, 0, 0]]
``` *)
val padV2:
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
  't t ->
    't t

(* A queue that produces elements in first-in first-out order. *)
(* Variable-size shapes are allowed by setting the corresponding shape dimensions
to 0 in the shape attr.  In this case DequeueMany will pad up to the maximum
size of any given element in the minibatch.  See below for details. *)
val paddingFIFOQueue:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* A queue that produces elements in first-in first-out order. *)
(* Variable-size shapes are allowed by setting the corresponding shape dimensions
to 0 in the shape attr.  In this case DequeueMany will pad up to the maximum
size of any given element in the minibatch.  See below for details. *)
val paddingFIFOQueueV2:
  component_types:Type.p list ->
  ?shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

(* Concatenates a list of `N` tensors along the first dimension. *)
(* The input tensors are all required to have size 1 in the first dimension.

For example:

```
# 'x' is [[1, 4]]
# 'y' is [[2, 5]]
# 'z' is [[3, 6]]
parallel_concat([x, y, z]) => [[1, 4], [2, 5], [3, 6]]  # Pack along first dim.
```

The difference between concat and parallel_concat is that concat requires all
of the inputs be computed before the operation will begin but doesn't require
that the input shapes be known during graph construction.  Parallel concat
will copy pieces of the input into the output as they become available, in
some situations this can provide a performance benefit. *)
val parallelConcat:
  shape:int list ->
  't t list ->
    't t

(* Interleave the values from the `data` tensors into a single tensor. *)
(* Builds a merged tensor such that

```python
    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
```

For example, if each `indices[m]` is scalar or vector, we have

```python
    # Scalar indices:
    merged[indices[m], ...] = data[m][...]

    # Vector indices:
    merged[indices[m][i], ...] = data[m][i, ...]
```

Each `data[i].shape` must start with the corresponding `indices[i].shape`,
and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
must have `data[i].shape = indices[i].shape + constant`.  In terms of this
`constant`, the output shape is

    merged.shape = [max(indices)] + constant

Values may be merged in parallel, so if an index appears in both `indices[m][i]`
and `indices[n][j]`, the result may be invalid. This differs from the normal
DynamicStitch operator that defines the behavior in that case.

For example:

```python
    indices[0] = 6
    indices[1] = [4, 1]
    indices[2] = [[5, 2], [0, 3]]
    data[0] = [61, 62]
    data[1] = [[41, 42], [11, 12]]
    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
              [51, 52], [61, 62]]
```

This method can be used to merge partitions created by `dynamic_partition`
as illustrated on the following example:

```python
    # Apply function (increments x_i) on elements for which a certain condition
    # apply (x_i != -1 in this example).
    x=tf.constant([0.1, -1., 5.2, 4.3, -1., 7.4])
    condition_mask=tf.not_equal(x,tf.constant(-1.))
    partitioned_data = tf.dynamic_partition(
        x, tf.cast(condition_mask, tf.int32) , 2)
    partitioned_data[1] = partitioned_data[1] + 1.0
    condition_indices = tf.dynamic_partition(
        tf.range(tf.shape(x)[0]), tf.cast(condition_mask, tf.int32) , 2)
    x = tf.dynamic_stitch(condition_indices, partitioned_data)
    # Here x=[1.1, -1., 6.2, 5.3, -1, 8.4], the -1. values remain
    # unchanged.
```

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/DynamicStitch.png' alt>
</div> *)
val parallelDynamicStitch:
  [ `int32 ] t list ->
  't t list ->
    't t

(* Outputs random values from a normal distribution. The parameters may each be a *)
(* scalar which applies to the entire output, or a vector of length shape[0] which
stores the parameters for each batch. *)
val parameterizedTruncatedNormal:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `float | `double ] as 'dtype) t ->
  ([< `float | `double ] as 'dtype) t ->
  ([< `float | `double ] as 'dtype) t ->
  ([< `float | `double ] as 'dtype) t ->
    ([< `float | `double ] as 'dtype) t

(* Transforms a serialized tensorflow.TensorProto proto into a Tensor. *)
val parseTensor:
  type_out_type:'out_type Type.t ->
  [ `string ] t ->
    'out_type t

(* A placeholder op for a value that will be fed into the computation. *)
(* N.B. This operation will fail with an error if it is executed. It is
intended as a way to represent a value that will always be fed, and to
provide attrs that enable the fed value to be checked at runtime. *)
val placeholder:
  type_dtype:'dtype Type.t ->
  ?shape:int list ->
  unit ->
    'dtype t

(* A placeholder op for a value that will be fed into the computation. *)
(* N.B. This operation will fail with an error if it is executed. It is
intended as a way to represent a value that will always be fed, and to
provide attrs that enable the fed value to be checked at runtime. *)
val placeholderV2:
  type_dtype:'dtype Type.t ->
  shape:int list ->
  unit ->
    'dtype t

(* A placeholder op that passes through `input` when its output is not fed. *)
val placeholderWithDefault:
  shape:int list ->
  'dtype t ->
    'dtype t

(* Compute the polygamma function \\(\psi^{(n)}(x)\\). *)
(* The polygamma function is defined as:


\\(\psi^{(n)}(x) = \frac{d^n}{dx^n} \psi(x)\\)

where \\(\psi(x)\\) is the digamma function. *)
val polygamma:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes element-wise population count (a.k.a. popcount, bitsum, bitcount). *)
(* For each entry in `x`, calculates the number of `1` (on) bits in the binary
representation of that entry.

**NOTE**: It is more efficient to first `tf.bitcast` your tensors into
`int32` or `int64` and perform the bitcount on the result, than to feed in
8- or 16-bit inputs and then aggregate the resulting counts. *)
val populationCount:
  ([< `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `uInt8 ] t

(* Computes the power of one value to another. *)
(* Given a tensor `x` and a tensor `y`, this operation computes \\(x^y\\) for
corresponding elements in `x` and `y`. For example:

```
# tensor 'x' is [[2, 2]], [3, 3]]
# tensor 'y' is [[8, 16], [2, 3]]
tf.pow(x, y) ==> [[256, 65536], [9, 27]]
``` *)
val pow:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Creates a dataset that asynchronously prefetches elements from `input_dataset`. *)
val prefetchDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* An identity op that triggers an error if a gradient is requested. *)
(* When executed in a graph, this op outputs its input tensor as-is.

When building ops to compute gradients, the TensorFlow gradient system
will return an error when trying to lookup the gradient of this op,
because no gradient must ever be registered for this function.  This
op exists to prevent subtle bugs from silently returning unimplemented
gradients in some corner cases. *)
val preventGradient:
  ?message:string ->
  't t ->
    't t

(* A queue that produces elements sorted by the first component value. *)
(* Note that the PriorityQueue requires the first component of any element
to be a scalar int64, in addition to the other elements declared by
component_types.  Therefore calls to Enqueue and EnqueueMany (resp. Dequeue
and DequeueMany) on a PriorityQueue will all require (resp. output) one extra
entry in their input (resp. output) lists. *)
val priorityQueue:
  ?component_types:Type.p list ->
  shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* A queue that produces elements sorted by the first component value. *)
(* Note that the PriorityQueue requires the first component of any element
to be a scalar int64, in addition to the other elements declared by
component_types.  Therefore calls to Enqueue and EnqueueMany (resp. Dequeue
and DequeueMany) on a PriorityQueue will all require (resp. output) one extra
entry in their input (resp. output) lists. *)
val priorityQueueV2:
  ?component_types:Type.p list ->
  shapes:int list list ->
  ?capacity:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

(* Computes the product of elements across dimensions of a tensor. *)
(* Reduces `input` along the dimensions given in `reduction_indices`. Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_indices`. If `keep_dims` is true, the reduced dimensions are
retained with length 1. *)
val prod:
  ?keep_dims:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Computes the QR decompositions of one or more matrices. *)
(* Computes the QR decomposition of each inner matrix in `tensor` such that
`tensor[..., :, :] = q[..., :, :] * r[..., :,:])`

```python
# a is a tensor.
# q is a tensor of orthonormal matrices.
# r is a tensor of upper triangular matrices.
q, r = qr(a)
q_full, r_full = qr(a, full_matrices=True)
``` *)
val qr:
  ?full_matrices:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t

(* Use QuantizeAndDequantizeV2 instead. *)
val quantizeAndDequantize:
  ?signed_input:bool ->
  ?num_bits:int ->
  ?range_given:bool ->
  ?input_min:float ->
  ?input_max:float ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Quantizes then dequantizes a tensor. *)
(* This op simulates the precision loss from the quantized forward pass by:
1. Quantizing the tensor to fixed point numbers, which should match the target
   quantization method when it is used in inference.
2. Dequantizing it back to floating point numbers for the following ops, most
   likely matmul.

There are different ways to quantize. This version does not use the full range
of the output type, choosing to elide the lowest possible value for symmetry
(e.g., output range is -127 to 127, not -128 to 127 for signed 8 bit
quantization), so that 0.0 maps to 0.

To perform this op, we first find the range of values in our tensor. The range
we use is always centered on 0, so we find m such that

1. m = max(abs(input_min), abs(input_max)) if range_given is true,
2. m = max(abs(min_elem(input)), abs(max_elem(input))) otherwise.

Our input tensor range is then [-m, m].

Next, we choose our fixed-point quantization buckets, [min_fixed, max_fixed].
If signed_input is true, this is

  [min_fixed, max_fixed ] =
      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1].

Otherwise, if signed_input is false, the fixed-point range is

  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1].

From this we compute our scaling factor, s:

  s = (max_fixed - min_fixed) / (2 * m).

Now we can quantize and dequantize the elements of our tensor.  An element e
is transformed into e':

  e' = (e * s).round_to_nearest() / s.

Note that we have a different number of buckets in the signed vs. unsigned
cases.  For example, if num_bits == 8, we get 254 buckets in the signed case
vs. 255 in the unsigned case.

For example, suppose num_bits = 8 and m = 1.  Then

  [min_fixed, max_fixed] = [-127, 127], and
  s = (127 + 127) / 2 = 127.

Given the vector {-1, -0.5, 0, 0.3}, this is quantized to
{-127, -63, 0, 38}, and dequantized to {-1, -63.0/127, 0, 38.0/127}. *)
val quantizeAndDequantizeV2:
  ?signed_input:bool ->
  ?num_bits:int ->
  ?range_given:bool ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Quantizes then dequantizes a tensor. *)
(* This is almost identical to QuantizeAndDequantizeV2, except that num_bits is a
tensor, so its value can change during training. *)
val quantizeAndDequantizeV3:
  ?signed_input:bool ->
  ?range_given:bool ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

(* Convert the quantized 'input' tensor into a lower-precision 'output', using the *)
(* actual distribution of the values to maximize the usage of the lower bit depth
and adjusting the output min and max ranges accordingly.

[input_min, input_max] are scalar floats that specify the range for the float
interpretation of the 'input' data. For example, if input_min is -1.0f and
input_max is 1.0f, and we are dealing with quint16 quantized data, then a 0
value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f.

This operator tries to squeeze as much precision as possible into an output with
a lower bit depth by calculating the actual min and max values found in the
data. For example, maybe that quint16 input has no values lower than 16,384 and
none higher than 49,152. That means only half the range is actually needed, all
the float interpretations are between -0.5f and 0.5f, so if we want to compress
the data into a quint8 output, we can use that range rather than the theoretical
-1.0f to 1.0f that is suggested by the input min and max.

In practice, this is most useful for taking output from operations like
QuantizedMatMul that can produce higher bit-depth outputs than their inputs and
may have large potential output ranges, but in practice have a distribution of
input values that only uses a small fraction of the possible range. By feeding
that output into this operator, we can reduce it from 32 bits down to 8 with
minimal loss of accuracy. *)
val quantizeDownAndShrinkRange:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

(* Quantize the 'input' tensor of type float to 'output' tensor of type 'T'. *)
(* [min_range, max_range] are scalar floats that specify the range for
the 'input' data. The 'mode' attribute controls exactly which calculations are
used to convert the float values to their quantized equivalents.

In 'MIN_COMBINED' mode, each value of the tensor will undergo the following:

```
out[i] = (in[i] - min_range) * range(T) / (max_range - min_range)
if T == qint8, out[i] -= (range(T) + 1) / 2.0
```
here `range(T) = numeric_limits<T>::max() - numeric_limits<T>::min()`

*MIN_COMBINED Mode Example*

Assume the input is type float and has a possible range of [0.0, 6.0] and the
output type is quint8 ([0, 255]). The min_range and max_range values should be
specified as 0.0 and 6.0. Quantizing from float to quint8 will multiply each
value of the input by 255/6 and cast to quint8.

If the output type was qint8 ([-128, 127]), the operation will additionally
subtract each value by 128 prior to casting, so that the range of values aligns
with the range of qint8.

If the mode is 'MIN_FIRST', then this approach is used:

```
number_of_steps = 1 << (# of bits in T)
range_adjust = number_of_steps / (number_of_steps - 1)
range = (range_max - range_min) * range_adjust
range_scale = number_of_steps / range
quantized = round(input * range_scale) - round(range_min * range_scale) +
  numeric_limits<T>::min()
quantized = max(quantized, numeric_limits<T>::min())
quantized = min(quantized, numeric_limits<T>::max())
```

The biggest difference between this and MIN_COMBINED is that the minimum range
is rounded first, before it's subtracted from the rounded value. With
MIN_COMBINED, a small bias is introduced where repeated iterations of quantizing
and dequantizing will introduce a larger and larger error.

*SCALED mode Example*

`SCALED` mode matches the quantization approach used in
`QuantizeAndDequantize{V2|V3}`.

If the mode is `SCALED`, we do not use the full range of the output type,
choosing to elide the lowest possible value for symmetry (e.g., output range is
-127 to 127, not -128 to 127 for signed 8 bit quantization), so that 0.0 maps to
0.

We first find the range of values in our tensor. The
range we use is always centered on 0, so we find m such that
```c++
  m = max(abs(input_min), abs(input_max))
```

Our input tensor range is then `[-m, m]`.

Next, we choose our fixed-point quantization buckets, `[min_fixed, max_fixed]`.
If T is signed, this is
```
  num_bits = sizeof(T) * 8
  [min_fixed, max_fixed] =
      [-(1 << (num_bits - 1) - 1), (1 << (num_bits - 1)) - 1]
```

Otherwise, if T is unsigned, the fixed-point range is
```
  [min_fixed, max_fixed] = [0, (1 << num_bits) - 1]
```

From this we compute our scaling factor, s:
```c++
  s = (max_fixed - min_fixed) / (2 * m)
```

Now we can quantize the elements of our tensor:
```c++
result = (input * s).round_to_nearest()
```

One thing to watch out for is that the operator may choose to adjust the
requested minimum and maximum values slightly during the quantization process,
so you should always use the output ports as the range for further calculations.
For example, if the requested minimum and maximum values are close to equal,
they will be separated by a small epsilon value to prevent ill-formed quantized
buffers from being created. Otherwise, you can end up with buffers where all the
quantized values map to the same float value, which causes problems for
operations that have to perform further calculations on them. *)
val quantizeV2:
  type_t:'t Type.t ->
  ?mode:string ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

(* Returns x + y element-wise, working on quantized buffers. *)
val quantizedAdd:
  type_toutput:'toutput Type.t ->
  't1 t ->
  't2 t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'toutput t * [ `float ] t * [ `float ] t

(* Produces the average pool of the input tensor for quantized types. *)
val quantizedAvgPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  't t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

(* Quantized Batch normalization. *)
(* This op is deprecated and will be removed in the future. Prefer
`tf.nn.batch_normalization`. *)
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

(* Adds Tensor 'bias' to Tensor 'input' for Quantized types. *)
(* Broadcasts the values of bias on dimensions 0..N-2 of 'input'. *)
val quantizedBiasAdd:
  type_out_type:'out_type Type.t ->
  't1 t ->
  't2 t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

(* Concatenates quantized tensors along one dimension. *)
val quantizedConcat:
  [ `int32 ] t ->
  't t list ->
  [ `float ] t list ->
  [ `float ] t list ->
    't t * [ `float ] t * [ `float ] t

(* Computes a 2D convolution given quantized 4D input and filter tensors. *)
(* The inputs are quantized tensors where the lowest value represents the real
number of the associated minimum, and the highest represents the maximum.
This means that you can only interpret the quantized output in the same way, by
taking the returned minimum and maximum values into account. *)
val quantizedConv2D:
  type_out_type:'out_type Type.t ->
  strides:int list ->
  padding:string ->
  'tinput t ->
  'tfilter t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

(* Quantized Instance normalization. *)
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

(* Perform a quantized matrix multiplication of  `a` by the matrix `b`. *)
(* The inputs must be two-dimensional matrices and the inner dimension of
`a` (after being transposed if `transpose_a` is non-zero) must match the
outer dimension of `b` (after being transposed if `transposed_b` is
non-zero). *)
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

(* Produces the max pool of the input tensor for quantized types. *)
val quantizedMaxPool:
  ksize:int list ->
  strides:int list ->
  padding:string ->
  't t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

(* Returns x * y element-wise, working on quantized buffers. *)
val quantizedMul:
  type_toutput:'toutput Type.t ->
  't1 t ->
  't2 t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'toutput t * [ `float ] t * [ `float ] t

(* Computes Quantized Rectified Linear: `max(features, 0)` *)
val quantizedRelu:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

(* Computes Quantized Rectified Linear 6: `min(max(features, 0), 6)` *)
val quantizedRelu6:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

(* Computes Quantized Rectified Linear X: `min(max(features, 0), max_value)` *)
val quantizedReluX:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

(* Reshapes a quantized tensor as per the Reshape op. *)
(* ``` *)
val quantizedReshape:
  't t ->
  ([< `int32 | `int64 ] as 'tshape) t ->
  [ `float ] t ->
  [ `float ] t ->
    't t * [ `float ] t * [ `float ] t

(* Resize quantized `images` to `size` using quantized bilinear interpolation. *)
(* Input images and output images must be quantized types. *)
val quantizedResizeBilinear:
  ?align_corners:bool ->
  ([< `float ] as 't) t ->
  [ `int32 ] t ->
  [ `float ] t ->
  [ `float ] t ->
    ([< `float ] as 't) t * [ `float ] t * [ `float ] t

(* Closes the given queue. *)
(* This operation signals that no more elements will be enqueued in the
given queue. Subsequent Enqueue(Many) operations will fail.
Subsequent Dequeue(Many) operations will continue to succeed if
sufficient elements remain in the queue. Subsequent Dequeue(Many)
operations that would block will fail immediately. *)
val queueClose:
  ?cancel_pending_enqueues:bool ->
  [ `string ] t ->
    unit

(* Closes the given queue. *)
(* This operation signals that no more elements will be enqueued in the
given queue. Subsequent Enqueue(Many) operations will fail.
Subsequent Dequeue(Many) operations will continue to succeed if
sufficient elements remain in the queue. Subsequent Dequeue(Many)
operations that would block will fail immediately. *)
val queueCloseV2:
  ?cancel_pending_enqueues:bool ->
  [ `resource ] t ->
    unit

(* Returns true if queue is closed. *)
(* This operation returns true if the queue is closed and false if the queue
is open. *)
val queueIsClosed:
  [ `string ] t ->
    [ `bool ] t

(* Returns true if queue is closed. *)
(* This operation returns true if the queue is closed and false if the queue
is open. *)
val queueIsClosedV2:
  [ `resource ] t ->
    [ `bool ] t

(* Computes the number of elements in the given queue. *)
val queueSize:
  [ `string ] t ->
    [ `int32 ] t

(* Computes the number of elements in the given queue. *)
val queueSizeV2:
  [ `resource ] t ->
    [ `int32 ] t

(* Real-valued fast Fourier transform. *)
(* Computes the 1-dimensional discrete Fourier transform of a real-valued signal
over the inner-most dimension of `input`.

Since the DFT of a real signal is Hermitian-symmetric, `RFFT` only returns the
`fft_length / 2 + 1` unique components of the FFT: the zero-frequency term,
followed by the `fft_length / 2` positive-frequency terms.

Along the axis `RFFT` is computed on, if `fft_length` is smaller than the
corresponding dimension of `input`, the dimension is cropped. If it is larger,
the dimension is padded with zeros. *)
val rFFT:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `complex64 ] t

(* 2D real-valued fast Fourier transform. *)
(* Computes the 2-dimensional discrete Fourier transform of a real-valued signal
over the inner-most 2 dimensions of `input`.

Since the DFT of a real signal is Hermitian-symmetric, `RFFT2D` only returns the
`fft_length / 2 + 1` unique components of the FFT for the inner-most dimension
of `output`: the zero-frequency term, followed by the `fft_length / 2`
positive-frequency terms.

Along each axis `RFFT2D` is computed on, if `fft_length` is smaller than the
corresponding dimension of `input`, the dimension is cropped. If it is larger,
the dimension is padded with zeros. *)
val rFFT2D:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `complex64 ] t

(* 3D real-valued fast Fourier transform. *)
(* Computes the 3-dimensional discrete Fourier transform of a real-valued signal
over the inner-most 3 dimensions of `input`.

Since the DFT of a real signal is Hermitian-symmetric, `RFFT3D` only returns the
`fft_length / 2 + 1` unique components of the FFT for the inner-most dimension
of `output`: the zero-frequency term, followed by the `fft_length / 2`
positive-frequency terms.

Along each axis `RFFT3D` is computed on, if `fft_length` is smaller than the
corresponding dimension of `input`, the dimension is cropped. If it is larger,
the dimension is padded with zeros. *)
val rFFT3D:
  [ `float ] t ->
  [ `int32 ] t ->
    [ `complex64 ] t

(* Converts one or more images from RGB to HSV. *)
(* Outputs a tensor of the same shape as the `images` tensor, containing the HSV
value of the pixels. The output is only well defined if the value in `images`
are in `[0,1]`.

`output[..., 0]` contains hue, `output[..., 1]` contains saturation, and
`output[..., 2]` contains value. All HSV values are in `[0,1]`. A hue of 0
corresponds to pure red, hue 1/3 is pure green, and 2/3 is pure blue. *)
val rGBToHSV:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Randomly crop `image`. *)
(* `size` is a 1-D int64 tensor with 2 elements representing the crop height and
width.  The values must be non negative.

This Op picks a random location in `image` and crops a `height` by `width`
rectangle from that location.  The random location is picked so the cropped
area will fit inside the original image. *)
val randomCrop:
  ?seed:int ->
  ?seed2:int ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int64 ] t ->
    ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t

(* Outputs random values from the Gamma distribution(s) described by alpha. *)
(* This op uses the algorithm by Marsaglia et al. to acquire samples via
transformation-rejection from pairs of uniform and normal random variables.
See http://dl.acm.org/citation.cfm?id=358414 *)
val randomGamma:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 's) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Outputs random values from the Poisson distribution(s) described by rate. *)
(* This op uses two algorithms, depending on rate. If rate >= 10, then
the algorithm by Hormann is used to acquire samples via
transformation-rejection.
See http://www.sciencedirect.com/science/article/pii/0167668793909974.

Otherwise, Knuth's algorithm is used to acquire samples via multiplying uniform
random variables.
See Donald E. Knuth (1969). Seminumerical Algorithms. The Art of Computer
Programming, Volume 2. Addison Wesley *)
val randomPoisson:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 's) t ->
  ([< `float | `double ] as 'dtype) t ->
    ([< `float | `double ] as 'dtype) t

(* Outputs random values from the Poisson distribution(s) described by rate. *)
(* This op uses two algorithms, depending on rate. If rate >= 10, then
the algorithm by Hormann is used to acquire samples via
transformation-rejection.
See http://www.sciencedirect.com/science/article/pii/0167668793909974.

Otherwise, Knuth's algorithm is used to acquire samples via multiplying uniform
random variables.
See Donald E. Knuth (1969). Seminumerical Algorithms. The Art of Computer
Programming, Volume 2. Addison Wesley *)
val randomPoissonV2:
  type_dtype:([< `float | `double | `int32 | `int64 ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 's) t ->
  ([< `float | `double | `int32 | `int64 ] as 'r) t ->
    ([< `float | `double | `int32 | `int64 ] as 'dtype) t

(* Randomly shuffles a tensor along its first dimension. *)
(*   The tensor is shuffled along dimension 0, such that each `value[j]` is mapped
  to one and only one `output[i]`. For example, a mapping that might occur for a
  3x2 tensor is:

```
[[1, 2],       [[5, 6],
 [3, 4],  ==>   [1, 2],
 [5, 6]]        [3, 4]]
``` *)
val randomShuffle:
  ?seed:int ->
  ?seed2:int ->
  't t ->
    't t

(* A queue that randomizes the order of elements. *)
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

(* A queue that randomizes the order of elements. *)
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

(* Outputs random values from a normal distribution. *)
(* The generated values will have mean 0 and standard deviation 1. *)
val randomStandardNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `float | `double ] as 'dtype) t

(* Outputs random values from a uniform distribution. *)
(* The generated values follow a uniform distribution in the range `[0, 1)`. The
lower bound 0 is included in the range, while the upper bound 1 is excluded. *)
val randomUniform:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `float | `double ] as 'dtype) t

(* Outputs random integers from a uniform distribution. *)
(* The generated values are uniform integers in the range `[minval, maxval)`.
The lower bound `minval` is included in the range, while the upper bound
`maxval` is excluded.

The random integers are slightly biased unless `maxval - minval` is an exact
power of two.  The bias is small for values of `maxval - minval` significantly
smaller than the range of the output (either `2^32` or `2^64`). *)
val randomUniformInt:
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tout) t ->
  ([< `int32 | `int64 ] as 'tout) t ->
    ([< `int32 | `int64 ] as 'tout) t

(* Creates a sequence of numbers. *)
(* This operation creates a sequence of numbers that begins at `start` and
extends by increments of `delta` up to but not including `limit`.

For example:

```
# 'start' is 3
# 'limit' is 18
# 'delta' is 3
tf.range(start, limit, delta) ==> [3, 6, 9, 12, 15]
``` *)
val range:
  ([< `float | `double | `int32 | `int64 ] as 'tidx) t ->
  ([< `float | `double | `int32 | `int64 ] as 'tidx) t ->
  ([< `float | `double | `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int32 | `int64 ] as 'tidx) t

(* Creates a dataset with a range of values. Corresponds to python's xrange. *)
val rangeDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* Returns the rank of a tensor. *)
(* This operation returns an integer representing the rank of `input`.

For example:

```
# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
# shape of tensor 't' is [2, 2, 3]
rank(t) ==> 3
```

**Note**: The rank of a tensor is not the same as the rank of a matrix. The rank
of a tensor is the number of indices required to uniquely select each element
of the tensor. Rank is also known as 'order', 'degree', or 'ndims.' *)
val rank:
  't t ->
    [ `int32 ] t

(* Reads and outputs the entire contents of the input filename. *)
val readFile:
  [ `string ] t ->
    [ `string ] t

(* Returns the number of records this Reader has produced. *)
(* This is the same as the number of ReaderRead executions that have
succeeded. *)
val readerNumRecordsProduced:
  [ `string ] t ->
    [ `int64 ] t

(* Returns the number of records this Reader has produced. *)
(* This is the same as the number of ReaderRead executions that have
succeeded. *)
val readerNumRecordsProducedV2:
  [ `resource ] t ->
    [ `int64 ] t

(* Returns the number of work units this Reader has finished processing. *)
val readerNumWorkUnitsCompleted:
  [ `string ] t ->
    [ `int64 ] t

(* Returns the number of work units this Reader has finished processing. *)
val readerNumWorkUnitsCompletedV2:
  [ `resource ] t ->
    [ `int64 ] t

(* Returns the next record (key, value pair) produced by a Reader. *)
(* Will dequeue from the input queue if necessary (e.g. when the
Reader needs to start reading from a new file since it has finished
with the previous file). *)
val readerRead:
  [ `string ] t ->
  [ `string ] t ->
    [ `string ] t * [ `string ] t

(* Returns up to `num_records` (key, value) pairs produced by a Reader. *)
(* Will dequeue from the input queue if necessary (e.g. when the
Reader needs to start reading from a new file since it has finished
with the previous file).
It may return less than `num_records` even before the last batch. *)
val readerReadUpTo:
  [ `string ] t ->
  [ `string ] t ->
  [ `int64 ] t ->
    [ `string ] t * [ `string ] t

(* Returns up to `num_records` (key, value) pairs produced by a Reader. *)
(* Will dequeue from the input queue if necessary (e.g. when the
Reader needs to start reading from a new file since it has finished
with the previous file).
It may return less than `num_records` even before the last batch. *)
val readerReadUpToV2:
  [ `resource ] t ->
  [ `resource ] t ->
  [ `int64 ] t ->
    [ `string ] t * [ `string ] t

(* Returns the next record (key, value pair) produced by a Reader. *)
(* Will dequeue from the input queue if necessary (e.g. when the
Reader needs to start reading from a new file since it has finished
with the previous file). *)
val readerReadV2:
  [ `resource ] t ->
  [ `resource ] t ->
    [ `string ] t * [ `string ] t

(* Restore a Reader to its initial clean state. *)
val readerReset:
  [ `string ] t ->
    unit

(* Restore a Reader to its initial clean state. *)
val readerResetV2:
  [ `resource ] t ->
    unit

(* Restore a reader to a previously saved state. *)
(* Not all Readers support being restored, so this can produce an
Unimplemented error. *)
val readerRestoreState:
  [ `string ] t ->
  [ `string ] t ->
    unit

(* Restore a reader to a previously saved state. *)
(* Not all Readers support being restored, so this can produce an
Unimplemented error. *)
val readerRestoreStateV2:
  [ `resource ] t ->
  [ `string ] t ->
    unit

(* Produce a string tensor that encodes the state of a Reader. *)
(* Not all Readers support being serialized, so this can produce an
Unimplemented error. *)
val readerSerializeState:
  [ `string ] t ->
    [ `string ] t

(* Produce a string tensor that encodes the state of a Reader. *)
(* Not all Readers support being serialized, so this can produce an
Unimplemented error. *)
val readerSerializeStateV2:
  [ `resource ] t ->
    [ `string ] t

(* Returns the real part of a complex number. *)
(* Given a tensor `input` of complex numbers, this operation returns a tensor of
type `float` that is the real part of each element in `input`. All elements in
`input` must be complex numbers of the form \\(a + bj\\), where *a* is the real
 part returned by this operation and *b* is the imaginary part.

For example:

```
# tensor 'input' is [-2.25 + 4.75j, 3.25 + 5.75j]
tf.real(input) ==> [-2.25, 3.25]
``` *)
val real:
  type_tout:([< `float | `double ] as 'tout) Type.t ->
  ([< `complex64 ] as 't) t ->
    ([< `float | `double ] as 'tout) t

(* Returns x / y element-wise for real types. *)
(* If `x` and `y` are reals, this will return the floating-point division.

*NOTE*: `Div` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val realDiv:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

(* Computes the reciprocal of x element-wise. *)
(* I.e., \\(y = 1 / x\\). *)
val reciprocal:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes the gradient for the inverse of `x` wrt its input. *)
(* Specifically, `grad = -dy * y*y`, where `y = 1/x`, and `dy`
is the corresponding input gradient. *)
val reciprocalGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Emits randomized records. *)
val recordInput:
  file_pattern:string ->
  ?file_random_seed:int ->
  ?file_shuffle_shift_ratio:float ->
  ?file_buffer_size:int ->
  ?file_parallelism:int ->
  ?batch_size:int ->
  unit ->
    [ `string ] t

(* Joins a string Tensor across the given dimensions. *)
(* Computes the string join across dimensions in the given string Tensor of shape
`[d_0, d_1, ..., d_n-1]`.  Returns a new Tensor created by joining the input
strings with the given separator (default: empty string).  Negative indices are
counted backwards from the end, with `-1` being equivalent to `n - 1`.

For example:

```python
# tensor `a` is [['a', 'b'], ['c', 'd']]
tf.reduce_join(a, 0) ==> ['ac', 'bd']
tf.reduce_join(a, 1) ==> ['ab', 'cd']
tf.reduce_join(a, -2) = tf.reduce_join(a, 0) ==> ['ac', 'bd']
tf.reduce_join(a, -1) = tf.reduce_join(a, 1) ==> ['ab', 'cd']
tf.reduce_join(a, 0, keep_dims=True) ==> [['ac', 'bd']]
tf.reduce_join(a, 1, keep_dims=True) ==> [['ab'], ['cd']]
tf.reduce_join(a, 0, separator='.') ==> ['a.c', 'b.d']
tf.reduce_join(a, [0, 1]) ==> ['acbd']
tf.reduce_join(a, [1, 0]) ==> ['abcd']
tf.reduce_join(a, []) ==> ['abcd']
``` *)
val reduceJoin:
  ?keep_dims:bool ->
  ?separator:string ->
  [ `string ] t ->
  [ `int32 ] t ->
    [ `string ] t

(* Creates or finds a child frame, and makes `data` available to the child frame. *)
(* The unique `frame_name` is used by the `Executor` to identify frames. If
`is_constant` is true, `output` is a constant in the child frame; otherwise
it may be changed in the child frame. At most `parallel_iterations` iterations
are run in parallel in the child frame. *)
val refEnter:
  frame_name:string ->
  ?is_constant:bool ->
  ?parallel_iterations:int ->
  't t ->
    't t

(* Exits the current frame to its parent frame. *)
(* Exit makes its input `data` available to the parent frame. *)
val refExit:
  't t ->
    't t

(* Return the same ref tensor as the input ref tensor. *)
val refIdentity:
  't t ->
    't t

(* Forwards the value of an available tensor from `inputs` to `output`. *)
(* `Merge` waits for at least one of the tensors in `inputs` to become available.
It is usually combined with `Switch` to implement branching.

`Merge` forwards the first tensor for become available to `output`, and sets
`value_index` to its index in `inputs`. *)
val refMerge:
  't t list ->
    't t * [ `int32 ] t

(* Makes its input available to the next iteration. *)
val refNextIteration:
  't t ->
    't t

(* Forwards the `index`th element of `inputs` to `output`. *)
val refSelect:
  [ `int32 ] t ->
  't t list ->
    't t

(* Forwards the ref tensor `data` to the output port determined by `pred`. *)
(* If `pred` is true, the `data` input is forwarded to `output_true`. Otherwise,
the data goes to `output_false`.

See also `Switch` and `Merge`. *)
val refSwitch:
  't t ->
  [ `bool ] t ->
    't t * 't t

(* Computes rectified linear: `max(features, 0)`. *)
val relu:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes rectified linear 6: `min(max(features, 0), 6)`. *)
val relu6:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes rectified linear 6 gradients for a Relu6 operation. *)
val relu6Grad:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes rectified linear gradients for a Relu operation. *)
val reluGrad:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Creates a dataset that emits the outputs of `input_dataset` `count` times. *)
val repeatDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* Given a quantized tensor described by (input, input_min, input_max), outputs a *)
(* range that covers the actual values present in that tensor.  This op is
typically used to produce the requested_output_min and requested_output_max for
Requantize. *)
val requantizationRange:
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
    [ `float ] t * [ `float ] t

(* Convert the quantized 'input' tensor into a lower-precision 'output', using the *)
(* output range specified with 'requested_output_min' and 'requested_output_max'.

[input_min, input_max] are scalar floats that specify the range for the float
interpretation of the 'input' data. For example, if input_min is -1.0f and
input_max is 1.0f, and we are dealing with quint16 quantized data, then a 0
value in the 16-bit data should be interpreted as -1.0f, and a 65535 means 1.0f. *)
val requantize:
  type_out_type:'out_type Type.t ->
  'tinput t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
  [ `float ] t ->
    'out_type t * [ `float ] t * [ `float ] t

(* Reshapes a tensor. *)
(* Given `tensor`, this operation returns a tensor that has the same values
as `tensor` with shape `shape`.

If one component of `shape` is the special value -1, the size of that dimension
is computed so that the total size remains constant.  In particular, a `shape`
of `[-1]` flattens into 1-D.  At most one component of `shape` can be -1.

If `shape` is 1-D or higher, then the operation returns a tensor with shape
`shape` filled with the values of `tensor`. In this case, the number of elements
implied by `shape` must be the same as the number of elements in `tensor`.

For example:

```
# tensor 't' is [1, 2, 3, 4, 5, 6, 7, 8, 9]
# tensor 't' has shape [9]
reshape(t, [3, 3]) ==> [[1, 2, 3],
                        [4, 5, 6],
                        [7, 8, 9]]

# tensor 't' is [[[1, 1], [2, 2]],
#                [[3, 3], [4, 4]]]
# tensor 't' has shape [2, 2, 2]
reshape(t, [2, 4]) ==> [[1, 1, 2, 2],
                        [3, 3, 4, 4]]

# tensor 't' is [[[1, 1, 1],
#                 [2, 2, 2]],
#                [[3, 3, 3],
#                 [4, 4, 4]],
#                [[5, 5, 5],
#                 [6, 6, 6]]]
# tensor 't' has shape [3, 2, 3]
# pass '[-1]' to flatten 't'
reshape(t, [-1]) ==> [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]

# -1 can also be used to infer the shape

# -1 is inferred to be 9:
reshape(t, [2, -1]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
# -1 is inferred to be 2:
reshape(t, [-1, 9]) ==> [[1, 1, 1, 2, 2, 2, 3, 3, 3],
                         [4, 4, 4, 5, 5, 5, 6, 6, 6]]
# -1 is inferred to be 3:
reshape(t, [ 2, -1, 3]) ==> [[[1, 1, 1],
                              [2, 2, 2],
                              [3, 3, 3]],
                             [[4, 4, 4],
                              [5, 5, 5],
                              [6, 6, 6]]]

# tensor 't' is [7]
# shape `[]` reshapes to a scalar
reshape(t, []) ==> 7
``` *)
val reshape:
  't t ->
  ([< `int32 | `int64 ] as 'tshape) t ->
    't t

(* Resize `images` to `size` using area interpolation. *)
(* Input images can be of different types but output images are always float.

Each output pixel is computed by first transforming the pixel's footprint into
the input tensor and then averaging the pixels that intersect the footprint. An
input pixel's contribution to the average is weighted by the fraction of its
area that intersects the footprint.  This is the same as OpenCV's INTER_AREA. *)
val resizeArea:
  ?align_corners:bool ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    [ `float ] t

(* Resize `images` to `size` using bicubic interpolation. *)
(* Input images can be of different types but output images are always float. *)
val resizeBicubic:
  ?align_corners:bool ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    [ `float ] t

(* Computes the gradient of bicubic interpolation. *)
val resizeBicubicGrad:
  ?align_corners:bool ->
  [ `float ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Resize `images` to `size` using bilinear interpolation. *)
(* Input images can be of different types but output images are always float. *)
val resizeBilinear:
  ?align_corners:bool ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    [ `float ] t

(* Computes the gradient of bilinear interpolation. *)
val resizeBilinearGrad:
  ?align_corners:bool ->
  [ `float ] t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Resize `images` to `size` using nearest neighbor interpolation. *)
val resizeNearestNeighbor:
  ?align_corners:bool ->
  ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    ([< `uInt8 | `int32 | `int64 | `float | `double ] as 't) t

(* Computes the gradient of nearest neighbor interpolation. *)
val resizeNearestNeighborGrad:
  ?align_corners:bool ->
  ([< `uInt8 | `int32 | `float | `double ] as 't) t ->
  [ `int32 ] t ->
    ([< `uInt8 | `int32 | `float | `double ] as 't) t

(* Update '*var' according to the adadelta scheme. *)
(* accum = rho() * accum + (1 - rho()) * grad.square();
update = (update_accum + epsilon).sqrt() * (accum + epsilon()).rsqrt() * grad;
update_accum = rho() * update_accum + (1 - rho()) * update.square();
var -= update; *)
val resourceApplyAdadelta:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' according to the adagrad scheme. *)
(* accum += grad * grad
var -= lr * grad * (1 / sqrt(accum)) *)
val resourceApplyAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' according to the proximal adagrad scheme. *)
val resourceApplyAdagradDA:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
    unit

(* Update '*var' according to the Adam algorithm. *)
(* lr_t <- learning_rate * sqrt(1 - beta2^t) / (1 - beta1^t)
m_t <- beta1 * m_{t-1} + (1 - beta1) * g_t
v_t <- beta2 * v_{t-1} + (1 - beta2) * g_t * g_t
variable <- variable - lr_t * m_t / (sqrt(v_t) + epsilon) *)
val resourceApplyAdam:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' according to the centered RMSProp algorithm. *)
(* The centered RMSProp algorithm uses an estimate of the centered second moment
(i.e., the variance) for normalization, as opposed to regular RMSProp, which
uses the (uncentered) second moment. This often helps with training, but is
slightly more expensive in terms of computation and memory.

Note that in dense implementation of this algorithm, mg, ms, and mom will
update even if the grad is zero, but in this sparse implementation, mg, ms,
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
mean_grad = decay * mean_grad + (1-decay) * gradient

Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)

mg <- rho * mg_{t-1} + (1-rho) * grad
ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms - mg * mg + epsilon)
var <- var - mom *)
val resourceApplyCenteredRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' according to the Ftrl-proximal scheme. *)
(* accum_new = accum + grad * grad
linear += grad - (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val resourceApplyFtrl:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' according to the Ftrl-proximal scheme. *)
(* grad_with_shrinkage = grad + 2 * l2_shrinkage * var
accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
linear += grad_with_shrinkage +
    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val resourceApplyFtrlV2:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' by subtracting 'alpha' * 'delta' from it. *)
val resourceApplyGradientDescent:
  ?use_locking:bool ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' according to the momentum scheme. Set use_nesterov = True if you *)
(* want to use Nesterov momentum.

accum = accum * momentum + grad
var -= lr * accum *)
val resourceApplyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' and '*accum' according to FOBOS with Adagrad learning rate. *)
(* accum += grad * grad
prox_v = var - lr * grad * (1 / sqrt(accum))
var = sign(prox_v)/(1+lr*l2) * max{ |prox_v|-lr*l1,0} *)
val resourceApplyProximalAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' as FOBOS algorithm with fixed learning rate. *)
(* prox_v = var - alpha * delta
var = sign(prox_v)/(1+alpha*l2) * max{ |prox_v|-alpha*l1,0} *)
val resourceApplyProximalGradientDescent:
  ?use_locking:bool ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update '*var' according to the RMSProp algorithm. *)
(* Note that in dense implementation of this algorithm, ms and mom will
update even if the grad is zero, but in this sparse implementation, ms
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
Delta = learning_rate * gradient / sqrt(mean_square + epsilon)

ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
var <- var - mom *)
val resourceApplyRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* var: Should be from a Variable(). *)
val resourceSparseApplyAdadelta:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

(* Update relevant entries in '*var' and '*accum' according to the adagrad scheme. *)
(* That is for rows we have grad for, we update var and accum as follows:
accum += grad * grad
var -= lr * grad * (1 / sqrt(accum)) *)
val resourceSparseApplyAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

(* Update entries in '*var' and '*accum' according to the proximal adagrad scheme. *)
val resourceSparseApplyAdagradDA:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
    unit

(* Update '*var' according to the centered RMSProp algorithm. *)
(* The centered RMSProp algorithm uses an estimate of the centered second moment
(i.e., the variance) for normalization, as opposed to regular RMSProp, which
uses the (uncentered) second moment. This often helps with training, but is
slightly more expensive in terms of computation and memory.

Note that in dense implementation of this algorithm, mg, ms, and mom will
update even if the grad is zero, but in this sparse implementation, mg, ms,
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
mean_grad = decay * mean_grad + (1-decay) * gradient
Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)

ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
var <- var - mom *)
val resourceSparseApplyCenteredRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

(* Update relevant entries in '*var' according to the Ftrl-proximal scheme. *)
(* That is for rows we have grad for, we update var, accum and linear as follows:
accum_new = accum + grad * grad
linear += grad + (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val resourceSparseApplyFtrl:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update relevant entries in '*var' according to the Ftrl-proximal scheme. *)
(* That is for rows we have grad for, we update var, accum and linear as follows:
grad_with_shrinkage = grad + 2 * l2_shrinkage * var
accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
linear += grad_with_shrinkage +
    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val resourceSparseApplyFtrlV2:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Update relevant entries in '*var' and '*accum' according to the momentum scheme. *)
(* Set use_nesterov = True if you want to use Nesterov momentum.

That is for rows we have grad for, we update var and accum as follows:

accum = accum * momentum + grad
var -= lr * accum *)
val resourceSparseApplyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    unit

(* Sparse update entries in '*var' and '*accum' according to FOBOS algorithm. *)
(* That is for rows we have grad for, we update var and accum as follows:
accum += grad * grad
prox_v = var
prox_v -= lr * grad * (1 / sqrt(accum))
var = sign(prox_v)/(1+lr*l2) * max{ |prox_v|-lr*l1,0} *)
val resourceSparseApplyProximalAdagrad:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

(* Sparse update '*var' as FOBOS algorithm with fixed learning rate. *)
(* That is for rows we have grad for, we update var as follows:
prox_v = var - alpha * grad
var = sign(prox_v)/(1+alpha*l2) * max{ |prox_v|-alpha*l1,0} *)
val resourceSparseApplyProximalGradientDescent:
  ?use_locking:bool ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

(* Update '*var' according to the RMSProp algorithm. *)
(* Note that in dense implementation of this algorithm, ms and mom will
update even if the grad is zero, but in this sparse implementation, ms
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
Delta = learning_rate * gradient / sqrt(mean_square + epsilon)

ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
var <- var - mom *)
val resourceSparseApplyRMSProp:
  ?use_locking:bool ->
  [ `resource ] t ->
  [ `resource ] t ->
  [ `resource ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    unit

(* Assign `value` to the sliced l-value reference of `ref`. *)
(* The values of `value` are assigned to the positions in the variable
`ref` that are selected by the slice parameters. The slice parameters
`begin, `end`, `strides`, etc. work exactly as in `StridedSlice`.

NOTE this op currently does not support broadcasting and so `value`'s
shape must be exactly the shape produced by the slice of `ref`. *)
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

(* Restores a tensor from checkpoint files. *)
(* Reads a tensor stored in one or several files. If there are several files (for
instance because a tensor was saved as slices), `file_pattern` may contain
wildcard symbols (`*` and `?`) in the filename portion only, not in the
directory portion.

If a `file_pattern` matches several files, `preferred_shard` can be used to hint
in which file the requested tensor is likely to be found. This op will first
open the file at index `preferred_shard` in the list of matching files and try
to restore tensors from that file.  Only if some tensors or tensor slices are
not found in that first file, then the Op opens all the files. Setting
`preferred_shard` to match the value passed as the `shard` input
of a matching `Save` Op may speed up Restore.  This attribute only affects
performance, not correctness.  The default value -1 means files are processed in
order.

See also `RestoreSlice`. *)
val restore:
  type_dt:'dt Type.t ->
  ?preferred_shard:int ->
  [ `string ] t ->
  [ `string ] t ->
    'dt t

(* Restores the state of the `iterator` from the checkpoint saved at `path` using 'SaveIterator'. *)
val restoreIterator:
  [ `resource ] t ->
  [ `string ] t ->
    unit

(* Restores a tensor from checkpoint files. *)
(* This is like `Restore` except that restored tensor can be listed as filling
only a slice of a larger tensor.  `shape_and_slice` specifies the shape of the
larger tensor and the slice that the restored tensor covers.

The `shape_and_slice` input has the same format as the
elements of the `shapes_and_slices` input of the `SaveSlices` op. *)
val restoreSlice:
  type_dt:'dt Type.t ->
  ?preferred_shard:int ->
  [ `string ] t ->
  [ `string ] t ->
  [ `string ] t ->
    'dt t

(* Reverses specific dimensions of a tensor. *)
(* Given a `tensor`, and a `bool` tensor `dims` representing the dimensions
of `tensor`, this operation reverses each dimension i of `tensor` where
`dims[i]` is `True`.

`tensor` can have up to 8 dimensions. The number of dimensions
of `tensor` must equal the number of elements in `dims`. In other words:

`rank(tensor) = size(dims)`

For example:

```
# tensor 't' is [[[[ 0,  1,  2,  3],
#                  [ 4,  5,  6,  7],
#                  [ 8,  9, 10, 11]],
#                 [[12, 13, 14, 15],
#                  [16, 17, 18, 19],
#                  [20, 21, 22, 23]]]]
# tensor 't' shape is [1, 2, 3, 4]

# 'dims' is [False, False, False, True]
reverse(t, dims) ==> [[[[ 3,  2,  1,  0],
                        [ 7,  6,  5,  4],
                        [ 11, 10, 9, 8]],
                       [[15, 14, 13, 12],
                        [19, 18, 17, 16],
                        [23, 22, 21, 20]]]]

# 'dims' is [False, True, False, False]
reverse(t, dims) ==> [[[[12, 13, 14, 15],
                        [16, 17, 18, 19],
                        [20, 21, 22, 23]
                       [[ 0,  1,  2,  3],
                        [ 4,  5,  6,  7],
                        [ 8,  9, 10, 11]]]]

# 'dims' is [False, False, True, False]
reverse(t, dims) ==> [[[[8, 9, 10, 11],
                        [4, 5, 6, 7],
                        [0, 1, 2, 3]]
                       [[20, 21, 22, 23],
                        [16, 17, 18, 19],
                        [12, 13, 14, 15]]]]
``` *)
val reverse:
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t ->
  [ `bool ] t ->
    ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t

(* Reverses variable length slices. *)
(* This op first slices `input` along the dimension `batch_dim`, and for each
slice `i`, reverses the first `seq_lengths[i]` elements along
the dimension `seq_dim`.

The elements of `seq_lengths` must obey `seq_lengths[i] <= input.dims[seq_dim]`,
and `seq_lengths` must be a vector of length `input.dims[batch_dim]`.

The output slice `i` along dimension `batch_dim` is then given by input
slice `i`, with the first `seq_lengths[i]` slices along dimension
`seq_dim` reversed.

For example:

```
# Given this:
batch_dim = 0
seq_dim = 1
input.dims = (4, 8, ...)
seq_lengths = [7, 2, 3, 5]

# then slices of input are reversed on seq_dim, but only up to seq_lengths:
output[0, 0:7, :, ...] = input[0, 7:0:-1, :, ...]
output[1, 0:2, :, ...] = input[1, 2:0:-1, :, ...]
output[2, 0:3, :, ...] = input[2, 3:0:-1, :, ...]
output[3, 0:5, :, ...] = input[3, 5:0:-1, :, ...]

# while entries past seq_lens are copied through:
output[0, 7:, :, ...] = input[0, 7:, :, ...]
output[1, 2:, :, ...] = input[1, 2:, :, ...]
output[2, 3:, :, ...] = input[2, 3:, :, ...]
output[3, 2:, :, ...] = input[3, 2:, :, ...]
```

In contrast, if:

```
# Given this:
batch_dim = 2
seq_dim = 0
input.dims = (8, ?, 4, ...)
seq_lengths = [7, 2, 3, 5]

# then slices of input are reversed on seq_dim, but only up to seq_lengths:
output[0:7, :, 0, :, ...] = input[7:0:-1, :, 0, :, ...]
output[0:2, :, 1, :, ...] = input[2:0:-1, :, 1, :, ...]
output[0:3, :, 2, :, ...] = input[3:0:-1, :, 2, :, ...]
output[0:5, :, 3, :, ...] = input[5:0:-1, :, 3, :, ...]

# while entries past seq_lens are copied through:
output[7:, :, 0, :, ...] = input[7:, :, 0, :, ...]
output[2:, :, 1, :, ...] = input[2:, :, 1, :, ...]
output[3:, :, 2, :, ...] = input[3:, :, 2, :, ...]
output[2:, :, 3, :, ...] = input[2:, :, 3, :, ...]
``` *)
val reverseSequence:
  seq_dim:int ->
  ?batch_dim:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tlen) t ->
    't t

(* Reverses specific dimensions of a tensor. *)
(* NOTE `tf.reverse` has now changed behavior in preparation for 1.0.
`tf.reverse_v2` is currently an alias that will be deprecated before TF 1.0.

Given a `tensor`, and a `int32` tensor `axis` representing the set of
dimensions of `tensor` to reverse. This operation reverses each dimension
`i` for which there exists `j` s.t. `axis[j] == i`.

`tensor` can have up to 8 dimensions. The number of dimensions specified
in `axis` may be 0 or more entries. If an index is specified more than
once, a InvalidArgument error is raised.

For example:

```
# tensor 't' is [[[[ 0,  1,  2,  3],
#                  [ 4,  5,  6,  7],
#                  [ 8,  9, 10, 11]],
#                 [[12, 13, 14, 15],
#                  [16, 17, 18, 19],
#                  [20, 21, 22, 23]]]]
# tensor 't' shape is [1, 2, 3, 4]

# 'dims' is [3] or 'dims' is -1
reverse(t, dims) ==> [[[[ 3,  2,  1,  0],
                        [ 7,  6,  5,  4],
                        [ 11, 10, 9, 8]],
                       [[15, 14, 13, 12],
                        [19, 18, 17, 16],
                        [23, 22, 21, 20]]]]

# 'dims' is '[1]' (or 'dims' is '[-3]')
reverse(t, dims) ==> [[[[12, 13, 14, 15],
                        [16, 17, 18, 19],
                        [20, 21, 22, 23]
                       [[ 0,  1,  2,  3],
                        [ 4,  5,  6,  7],
                        [ 8,  9, 10, 11]]]]

# 'dims' is '[2]' (or 'dims' is '[-2]')
reverse(t, dims) ==> [[[[8, 9, 10, 11],
                        [4, 5, 6, 7],
                        [0, 1, 2, 3]]
                       [[20, 21, 22, 23],
                        [16, 17, 18, 19],
                        [12, 13, 14, 15]]]]
``` *)
val reverseV2:
  ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `uInt8 | `uInt16 | `int32 | `int64 | `bool | `float | `double | `complex64 | `string ] as 't) t

(* Returns element-wise integer closest to x. *)
(* If the result is midway between two representable values,
the even representable is chosen.
For example:

```
rint(-1.5) ==> -2.0
rint(0.5000001) ==> 1.0
rint([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0]) ==> [-2., -2., -0., 0., 2., 2., 2.]
``` *)
val rint:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Rounds the values of a tensor to the nearest integer, element-wise. *)
(* Rounds half to even.  Also known as bankers rounding. If you want to round
according to the current system rounding mode use std::cint. *)
val round:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes reciprocal of square root of x element-wise. *)
(* I.e., \\(y = 1 / \sqrt{x}\\). *)
val rsqrt:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes the gradient for the rsqrt of `x` wrt its input. *)
(* Specifically, `grad = dy * -0.5 * y^3`, where `y = rsqrt(x)`, and `dy`
is the corresponding input gradient. *)
val rsqrtGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Saves the state of the `iterator` at `path`. *)
(* This state can be restored using 'RestoreIterator'. *)
val saveIterator:
  [ `resource ] t ->
  [ `string ] t ->
    unit

(* Outputs a `Summary` protocol buffer with scalar values. *)
(* The input `tags` and `values` must have the same shape.  The generated summary
has a summary value for each tag-value pair in `tags` and `values`. *)
val scalarSummary:
  [ `string ] t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    [ `string ] t

(* Adds sparse updates to a variable reference. *)
(* This operation computes

    # Scalar indices
    ref[indices, ...] += updates[...]

    # Vector indices (for each i)
    ref[indices[i], ...] += updates[i, ...]

    # High rank indices (for each i, ..., j)
    ref[indices[i, ..., j], ...] += updates[i, ..., j, ...]

This operation outputs `ref` after the update is done.
This makes it easier to chain operations that need to use the reset value.

Duplicate entries are handled correctly: if multiple `indices` reference
the same location, their contributions add.

Requires `updates.shape = indices.shape + ref.shape[1:]`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
</div> *)
val scatterAdd:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Divides a variable reference by sparse updates. *)
(* This operation computes

```python
    # Scalar indices
    ref[indices, ...] /= updates[...]

    # Vector indices (for each i)
    ref[indices[i], ...] /= updates[i, ...]

    # High rank indices (for each i, ..., j)
    ref[indices[i, ..., j], ...] /= updates[i, ..., j, ...]
```

This operation outputs `ref` after the update is done.
This makes it easier to chain operations that need to use the reset value.

Duplicate entries are handled correctly: if multiple `indices` reference
the same location, their contributions divide.

Requires `updates.shape = indices.shape + ref.shape[1:]`. *)
val scatterDiv:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Multiplies sparse updates into a variable reference. *)
(* This operation computes

```python
    # Scalar indices
    ref[indices, ...] *= updates[...]

    # Vector indices (for each i)
    ref[indices[i], ...] *= updates[i, ...]

    # High rank indices (for each i, ..., j)
    ref[indices[i, ..., j], ...] *= updates[i, ..., j, ...]
```

This operation outputs `ref` after the update is done.
This makes it easier to chain operations that need to use the reset value.

Duplicate entries are handled correctly: if multiple `indices` reference
the same location, their contributions multiply.

Requires `updates.shape = indices.shape + ref.shape[1:]`. *)
val scatterMul:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Scatter `updates` into a new (initially zero) tensor according to `indices`. *)
(* Creates a new tensor by applying sparse `updates` to individual
values or slices within a zero tensor of the given `shape` according to
indices.  This operator is the inverse of the @{tf.gather_nd} operator which
extracts values or slices from a given tensor.

**WARNING**: The order in which updates are applied is nondeterministic, so the
output will be nondeterministic if `indices` contains duplicates.

`indices` is an integer tensor containing indices into a new tensor of shape
`shape`.  The last dimension of `indices` can be at most the rank of `shape`:

    indices.shape[-1] <= shape.rank

The last dimension of `indices` corresponds to indices into elements
(if `indices.shape[-1] = shape.rank`) or slices
(if `indices.shape[-1] < shape.rank`) along dimension `indices.shape[-1]` of
`shape`.  `updates` is a tensor with shape

    indices.shape[:-1] + shape[indices.shape[-1]:]

The simplest form of scatter is to insert individual elements in a tensor by
index. For example, say we want to insert 4 scattered elements in a rank-1
tensor with 8 elements.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/ScatterNd1.png' alt>
</div>

In Python, this scatter operation would look like this:

```python
    indices = tf.constant([[4], [3], [1], [7]])
    updates = tf.constant([9, 10, 11, 12])
    shape = tf.constant([8])
    scatter = tf.scatter_nd(indices, updates, shape)
    with tf.Session() as sess:
      print(sess.run(scatter))
```

The resulting tensor would look like this:

    [0, 11, 0, 10, 9, 0, 0, 12]

We can also, insert entire slices of a higher rank tensor all at once. For
example, if we wanted to insert two slices in the first dimension of a
rank-3 tensor with two matrices of new values.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/ScatterNd2.png' alt>
</div>

In Python, this scatter operation would look like this:

```python
    indices = tf.constant([[0], [2]])
    updates = tf.constant([[[5, 5, 5, 5], [6, 6, 6, 6],
                            [7, 7, 7, 7], [8, 8, 8, 8]],
                           [[5, 5, 5, 5], [6, 6, 6, 6],
                            [7, 7, 7, 7], [8, 8, 8, 8]]])
    shape = tf.constant([4, 4, 4])
    scatter = tf.scatter_nd(indices, updates, shape)
    with tf.Session() as sess:
      print(sess.run(scatter))
```

The resulting tensor would look like this:

    [[[5, 5, 5, 5], [6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8]],
     [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]],
     [[5, 5, 5, 5], [6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8]],
     [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]] *)
val scatterNd:
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    't t

(* Applies sparse addition between `updates` and individual values or slices *)
(* within a given variable according to `indices`.

`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.

`indices` must be integer tensor, containing indices into `ref`.
It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.

The innermost dimension of `indices` (with length `K`) corresponds to
indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
dimension of `ref`.

`updates` is `Tensor` of rank `Q-1+P-K` with shape:

```
[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
```

For example, say we want to add 4 scattered elements to a rank-1 tensor to 8
elements. In Python, that addition would look like this:

    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
    indices = tf.constant([[4], [3], [1], [7]])
    updates = tf.constant([9, 10, 11, 12])
    add = tf.scatter_nd_add(ref, indices, updates)
    with tf.Session() as sess:
      print sess.run(add)

The resulting update to ref would look like this:

    [1, 13, 3, 14, 14, 6, 7, 20]

See @{tf.scatter_nd} for more details about how to make updates to
slices. *)
val scatterNdAdd:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Applies sparse addition to `input` using individual values or slices *)
(* from `updates` according to indices `indices`.  The updates are non-aliasing:
`input` is only modified in-place if no other operations will use it.
Otherwise, a copy of `input` is made.  This operation has a gradient with
respect to both `input` and `updates`.

`input` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.

`indices` must be integer tensor, containing indices into `input`.
It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.

The innermost dimension of `indices` (with length `K`) corresponds to
indices into elements (if `K = P`) or `(P-K)`-dimensional slices
(if `K < P`) along the `K`th dimension of `input`.

`updates` is `Tensor` of rank `Q-1+P-K` with shape:

```
[d_0, ..., d_{Q-2}, input.shape[K], ..., input.shape[P-1]].
```

For example, say we want to add 4 scattered elements to a rank-1 tensor to 8
elements. In Python, that addition would look like this:

    input = tf.constant([1, 2, 3, 4, 5, 6, 7, 8])
    indices = tf.constant([[4], [3], [1], [7]])
    updates = tf.constant([9, 10, 11, 12])
    output = tf.scatter_nd_non_aliasing_add(input, indices, updates)
    with tf.Session() as sess:
      print(sess.run(output))

The resulting value `output` would look like this:

    [1, 13, 3, 14, 14, 6, 7, 20]

See @{tf.scatter_nd} for more details about how to make updates to slices. *)
val scatterNdNonAliasingAdd:
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Applies sparse subtraction between `updates` and individual values or slices *)
(* within a given variable according to `indices`.

`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.

`indices` must be integer tensor, containing indices into `ref`.
It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.

The innermost dimension of `indices` (with length `K`) corresponds to
indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
dimension of `ref`.

`updates` is `Tensor` of rank `Q-1+P-K` with shape:

```
[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
```

For example, say we want to subtract 4 scattered elements from a rank-1 tensor
with 8 elements. In Python, that subtraction would look like this:

    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
    indices = tf.constant([[4], [3], [1], [7]])
    updates = tf.constant([9, 10, 11, 12])
    sub = tf.scatter_nd_sub(ref, indices, updates)
    with tf.Session() as sess:
      print sess.run(sub)

The resulting update to ref would look like this:

    [1, -9, 3, -6, -4, 6, 7, -4]

See @{tf.scatter_nd} for more details about how to make updates to
slices. *)
val scatterNdSub:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Applies sparse `updates` to individual values or slices within a given *)
(* variable according to `indices`.

`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.

`indices` must be integer tensor, containing indices into `ref`.
It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.

The innermost dimension of `indices` (with length `K`) corresponds to
indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
dimension of `ref`.

`updates` is `Tensor` of rank `Q-1+P-K` with shape:

```
[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
```

For example, say we want to update 4 scattered elements to a rank-1 tensor to
8 elements. In Python, that update would look like this:

```python
    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
    indices = tf.constant([[4], [3], [1] ,[7]])
    updates = tf.constant([9, 10, 11, 12])
    update = tf.scatter_nd_update(ref, indices, updates)
    with tf.Session() as sess:
      print sess.run(update)
```

The resulting update to ref would look like this:

    [1, 11, 3, 10, 9, 6, 7, 12]

See @{tf.scatter_nd} for more details about how to make updates to
slices. *)
val scatterNdUpdate:
  ?use_locking:bool ->
  't t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
    't t

(* Subtracts sparse updates to a variable reference. *)
(* ```python
    # Scalar indices
    ref[indices, ...] -= updates[...]

    # Vector indices (for each i)
    ref[indices[i], ...] -= updates[i, ...]

    # High rank indices (for each i, ..., j)
    ref[indices[i, ..., j], ...] -= updates[i, ..., j, ...]
```

This operation outputs `ref` after the update is done.
This makes it easier to chain operations that need to use the reset value.

Duplicate entries are handled correctly: if multiple `indices` reference
the same location, their (negated) contributions add.

Requires `updates.shape = indices.shape + ref.shape[1:]`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/ScatterSub.png' alt>
</div> *)
val scatterSub:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Applies sparse updates to a variable reference. *)
(* This operation computes

```python
    # Scalar indices
    ref[indices, ...] = updates[...]

    # Vector indices (for each i)
    ref[indices[i], ...] = updates[i, ...]

    # High rank indices (for each i, ..., j)
    ref[indices[i, ..., j], ...] = updates[i, ..., j, ...]
```

This operation outputs `ref` after the update is done.
This makes it easier to chain operations that need to use the reset value.

If values in `ref` is to be updated more than once, because there are
duplicate entries in `indices`, the order at which the updates happen
for each value is undefined.

Requires `updates.shape = indices.shape + ref.shape[1:]`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/ScatterUpdate.png' alt>
</div> *)
val scatterUpdate:
  ?use_locking:bool ->
  't t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
    't t

(* Computes fingerprints of the input strings. *)
val sdcaFprint:
  [ `string ] t ->
    [ `int64 ] t

(* Applies L1 regularization shrink step on the parameters. *)
val sdcaShrinkL1:
  l1:float ->
  l2:float ->
  [ `float ] t list ->
    unit

(* Computes the maximum along segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Computes a tensor such that
\\(output_i = \max_j(data_j)\\) where `max` is over `j` such
that `segment_ids[j] == i`.

If the max is empty for a given segment ID `i`, `output[i] = 0`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/SegmentMax.png' alt>
</div> *)
val segmentMax:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the mean along segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Computes a tensor such that
\\(output_i = \frac{\sum_j data_j}{N}\\) where `mean` is
over `j` such that `segment_ids[j] == i` and `N` is the total number of
values summed.

If the mean is empty for a given segment ID `i`, `output[i] = 0`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/SegmentMean.png' alt>
</div> *)
val segmentMean:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the minimum along segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Computes a tensor such that
\\(output_i = \min_j(data_j)\\) where `min` is over `j` such
that `segment_ids[j] == i`.

If the min is empty for a given segment ID `i`, `output[i] = 0`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/SegmentMin.png' alt>
</div> *)
val segmentMin:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the product along segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Computes a tensor such that
\\(output_i = \prod_j data_j\\) where the product is over `j` such
that `segment_ids[j] == i`.

If the product is empty for a given segment ID `i`, `output[i] = 1`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/SegmentProd.png' alt>
</div> *)
val segmentProd:
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Computes the sum along segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Computes a tensor such that
\\(output_i = \sum_j data_j\\) where sum is over `j` such
that `segment_ids[j] == i`.

If the sum is empty for a given segment ID `i`, `output[i] = 0`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/SegmentSum.png' alt>
</div> *)
val segmentSum:
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Selects elements from `t` or `e`, depending on `condition`. *)
(* The `t`, and `e` tensors must all have the same shape, and the
output will also have that shape.

The `condition` tensor must be a scalar if `t` and `e` are scalars.
If `t` and `e` are vectors or higher rank, then `condition` must be either a
scalar, a vector with size matching the first dimension of `t`, or must have
the same shape as `t`.

The `condition` tensor acts as a mask that chooses, based on the value at each
element, whether the corresponding element / row in the output should be
taken from `t` (if true) or `e` (if false).

If `condition` is a vector and `t` and `e` are higher rank matrices, then
it chooses which row (outer dimension) to copy from `t` and `e`.
If `condition` has the same shape as `t` and `e`, then it chooses which
element to copy from `t` and `e`.

For example:

```python
# 'condition' tensor is [[True,  False]
#                        [False, True]]
# 't' is [[1, 2],
#         [3, 4]]
# 'e' is [[5, 6],
#         [7, 8]]
select(condition, t, e)  # => [[1, 6], [7, 4]]


# 'condition' tensor is [True, False]
# 't' is [[1, 2],
#         [3, 4]]
# 'e' is [[5, 6],
#         [7, 8]]
select(condition, t, e) ==> [[1, 2],
                             [7, 8]]

``` *)
val select:
  [ `bool ] t ->
  't t ->
  't t ->
    't t

(* Computes the Eigen Decomposition of a batch of square self-adjoint matrices. *)
(* The input is a tensor of shape `[..., M, M]` whose inner-most 2 dimensions
form square matrices, with the same constraints as the single matrix
SelfAdjointEig.

The result is a [..., M+1, M] matrix with [..., 0,:] containing the
eigenvalues, and subsequent [...,1:, :] containing the eigenvectors. *)
val selfAdjointEig:
  ([< `double | `float ] as 't) t ->
    ([< `double | `float ] as 't) t

(* Computes the eigen decomposition of one or more square self-adjoint matrices. *)
(* Computes the eigenvalues and (optionally) eigenvectors of each inner matrix in
`input` such that `input[..., :, :] = v[..., :, :] * diag(e[..., :])`.

```python
# a is a tensor.
# e is a tensor of eigenvalues.
# v is a tensor of eigenvectors.
e, v = self_adjoint_eig(a)
e = self_adjoint_eig(a, compute_v=False)
``` *)
val selfAdjointEigV2:
  ?compute_v:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t

(* Computes scaled exponential linear: `scale * alpha * (exp(features) - 1)` *)
(* if < 0, `scale * features` otherwise.

See [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515) *)
val selu:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes gradients for the scaled exponential linear (Selu) operation. *)
val seluGrad:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Serialize an `N`-minibatch `SparseTensor` into an `[N, 3]` string `Tensor`. *)
(* The `SparseTensor` must have rank `R` greater than 1, and the first dimension
is treated as the minibatch dimension.  Elements of the `SparseTensor`
must be sorted in increasing order of this first dimension.  The serialized
`SparseTensor` objects going into each row of `serialized_sparse` will have
rank `R-1`.

The minibatch size `N` is extracted from `sparse_shape[0]`. *)
val serializeManySparse:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `string ] t

(* Serialize a `SparseTensor` into a string 3-vector (1-D `Tensor`) object. *)
val serializeSparse:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `string ] t

(* Transforms a Tensor into a serialized TensorProto proto. *)
val serializeTensor:
  't t ->
    [ `string ] t

(* Number of unique elements along last dimension of input `set`. *)
(* Input `set` is a `SparseTensor` represented by `set_indices`, `set_values`,
and `set_shape`. The last dimension contains values in a set, duplicates are
allowed but ignored.

If `validate_indices` is `True`, this op validates the order and range of `set`
indices. *)
val setSize:
  ?validate_indices:bool ->
  [ `int64 ] t ->
  ([< `int32 | `int64 | `uInt8 | `uInt16 | `string ] as 't) t ->
  [ `int64 ] t ->
    [ `int32 ] t

(* Returns the shape of a tensor. *)
(* This operation returns a 1-D integer tensor representing the shape of `input`.

For example:

```
# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
shape(t) ==> [2, 2, 3]
``` *)
val shape:
  type_out_type:([< `int32 | `int64 ] as 'out_type) Type.t ->
  't t ->
    ([< `int32 | `int64 ] as 'out_type) t

(* Returns shape of tensors. *)
(* This operation returns N 1-D integer tensors representing shape of `input[i]s`. *)
val shapeN:
  type_out_type:([< `int32 | `int64 ] as 'out_type) Type.t ->
  't t list ->
    ([< `int32 | `int64 ] as 'out_type) t list

(* Generate a sharded filename. The filename is printf formatted as *)
(*    %s-%05d-of-%05d, basename, shard, num_shards. *)
val shardedFilename:
  [ `string ] t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    [ `string ] t

(* Generate a glob pattern matching all sharded file names. *)
val shardedFilespec:
  [ `string ] t ->
  [ `int32 ] t ->
    [ `string ] t

(* Creates a dataset that shuffles elements from `input_dataset` pseudorandomly. *)
val shuffleDataset:
  ?reshuffle_each_iteration:bool ->
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* Computes sigmoid of `x` element-wise. *)
(* Specifically, `y = 1 / (1 + exp(-x))`. *)
val sigmoid:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes the gradient of the sigmoid of `x` wrt its input. *)
(* Specifically, `grad = dy * y * (1 - y)`, where `y = sigmoid(x)`, and
`dy` is the corresponding input gradient. *)
val sigmoidGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Returns an element-wise indication of the sign of a number. *)
(* `y = sign(x) = -1` if `x < 0`; 0 if `x == 0`; 1 if `x > 0`.

For complex numbers, `y = sign(x) = x / |x|` if `x != 0`, otherwise `y = 0`. *)
val sign:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes sin of x element-wise. *)
val sin:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes hyperbolic sine of x element-wise. *)
val sinh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Returns the size of a tensor. *)
(* This operation returns an integer representing the number of elements in
`input`.

For example:

```
# 't' is [[[1, 1,, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]]
size(t) ==> 12
``` *)
val size:
  type_out_type:([< `int32 | `int64 ] as 'out_type) Type.t ->
  't t ->
    ([< `int32 | `int64 ] as 'out_type) t

(* Creates a dataset that skips `count` elements from the `input_dataset`. *)
val skipDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* Parses a text file and creates a batch of examples. *)
val skipgram:
  filename:string ->
  batch_size:int ->
  ?window_size:int ->
  ?min_count:int ->
  ?subsample:float ->
  unit ->
    [ `string ] t * [ `int32 ] t * [ `int64 ] t * [ `int32 ] t * [ `int64 ] t * [ `int32 ] t * [ `int32 ] t

(* Return a slice from 'input'. *)
(* The output tensor is a tensor with dimensions described by 'size'
whose values are extracted from 'input' starting at the offsets in
'begin'.

*Requirements*:
  0 <= begin[i] <= begin[i] + size[i] <= Di  for i in [0, n) *)
val slice:
  't t ->
  ([< `int32 | `int64 ] as 'index) t ->
  ([< `int32 | `int64 ] as 'index) t ->
    't t

(* Computes softmax activations. *)
(* For each batch `i` and class `j` we have

    softmax[i, j] = exp(logits[i, j]) / sum_j(exp(logits[i, j])) *)
val softmax:
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Computes softmax cross entropy cost and gradients to backpropagate. *)
(* Inputs are the logits, not probabilities. *)
val softmaxCrossEntropyWithLogits:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t * ([< `float | `double ] as 't) t

(* Computes softplus: `log(exp(features) + 1)`. *)
val softplus:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes softplus gradients for a softplus operation. *)
val softplusGrad:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes softsign: `features / (abs(features) + 1)`. *)
val softsign:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes softsign gradients for a softsign operation. *)
val softsignGrad:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* SpaceToBatch for 4-D tensors of type T. *)
(* This is a legacy version of the more general SpaceToBatchND.

Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
More specifically, this op outputs a copy of the input tensor where values from
the `height` and `width` dimensions are moved to the `batch` dimension. After
the zero-padding, both `height` and `width` of the input must be divisible by the
block size. *)
val spaceToBatch:
  block_size:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

(* SpaceToBatch for N-D tensors of type T. *)
(* This operation divides 'spatial' dimensions `[1, ..., M]` of the input into a
grid of blocks of shape `block_shape`, and interleaves these blocks with the
'batch' dimension (0) such that in the output, the spatial dimensions
`[1, ..., M]` correspond to the position within the grid, and the batch
dimension combines both the position within a spatial block and the original
batch position.  Prior to division into blocks, the spatial dimensions of the
input are optionally zero padded according to `paddings`.  See below for a
precise description. *)
val spaceToBatchND:
  't t ->
  ([< `int32 | `int64 ] as 'tblock_shape) t ->
  ([< `int32 | `int64 ] as 'tpaddings) t ->
    't t

(* SpaceToDepth for tensors of type T. *)
(* Rearranges blocks of spatial data, into depth. More specifically,
this op outputs a copy of the input tensor where values from the `height`
and `width` dimensions are moved to the `depth` dimension.
The attr `block_size` indicates the input block size.

  * Non-overlapping blocks of size `block_size x block size` are rearranged
    into depth at each location.
  * The depth of the output tensor is `block_size * block_size * input_depth`.
  * The Y, X coordinates within each block of the input become the high order
    component of the output channel index.
  * The input tensor's height and width must be divisible by block_size.

The `data_format` attr specifies the layout of the input and output tensors
with the following options:
  'NHWC': `[ batch, height, width, channels ]`
  'NCHW': `[ batch, channels, height, width ]`
  'NCHW_VECT_C':
      `qint8 [ batch, channels / 4, height, width, channels % 4 ]`

It is useful to consider the operation as transforming a 6-D Tensor.
e.g. for data_format = NHWC,
     Each element in the input tensor can be specified via 6 coordinates,
     ordered by decreasing memory layout significance as:
     n,oY,bY,oX,bX,iC  (where n=batch index, oX, oY means X or Y coordinates
                        within the output image, bX, bY means coordinates
                        within the input block, iC means input channels).
     The output would be a transpose to the following layout:
     n,oY,oX,bY,bX,iC

This operation is useful for resizing the activations between convolutions
(but keeping all data), e.g. instead of pooling. It is also useful for training
purely convolutional models.

For example, given an input of shape `[1, 2, 2, 1]`, data_format = 'NHWC' and
block_size = 2:

```
x = [[[[1], [2]],
      [[3], [4]]]]
```

This operation will output a tensor of shape `[1, 1, 1, 4]`:

```
[[[[1, 2, 3, 4]]]]
```

Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
the corresponding output will have a single element (i.e. width and height are
both 1) and will have a depth of 4 channels (1 * block_size * block_size).
The output element shape is `[1, 1, 4]`.

For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.

```
x = [[[[1, 2, 3], [4, 5, 6]],
      [[7, 8, 9], [10, 11, 12]]]]
```

This operation, for block_size of 2, will return the following tensor of shape
`[1, 1, 1, 12]`

```
[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
```

Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:

```
x = [[[[1],   [2],  [5],  [6]],
      [[3],   [4],  [7],  [8]],
      [[9],  [10], [13],  [14]],
      [[11], [12], [15],  [16]]]]
```

the operator will return the following tensor of shape `[1 2 2 4]`:

```
x = [[[[1, 2, 3, 4],
       [5, 6, 7, 8]],
      [[9, 10, 11, 12],
       [13, 14, 15, 16]]]]
``` *)
val spaceToDepth:
  block_size:int ->
  ?data_format:string ->
  't t ->
    't t

(* Applies a sparse gradient to a given accumulator. *)
(* Does not add if local_step is smaller than the accumulator's
global_step. *)
val sparseAccumulatorApplyGradient:
  has_known_shape:bool ->
  [ `string ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t ->
  [ `int64 ] t ->
    unit

(* Extracts the average sparse gradient in a SparseConditionalAccumulator. *)
(* The op will blocks until sufficient (i.e., more than num_required)
gradients have been accumulated. If the accumulator has already
aggregated more than num_required gradients, it will return its
average of the accumulated gradients.  Also automatically increments
the recorded global_step in the accumulator by 1, and resets the
aggregate to 0. *)
val sparseAccumulatorTakeGradient:
  type_dtype:([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) Type.t ->
  [ `string ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 'dtype) t * [ `int64 ] t

(* Adds two `SparseTensor` objects to produce another `SparseTensor`. *)
(* The input `SparseTensor` objects' indices are assumed ordered in standard
lexicographic order.  If this is not the case, before this step run
`SparseReorder` to restore index ordering.

By default, if two values sum to zero at some index, the output `SparseTensor`
would still include that particular location in its index, storing a zero in the
corresponding value slot.  To override this, callers can specify `thresh`,
indicating that if the sum has a magnitude strictly smaller than `thresh`, its
corresponding value and index would then not be included.  In particular,
`thresh == 0` (default) means everything is kept and actual thresholding happens
only for a positive value.

In the following shapes, `nnz` is the count after taking `thresh` into account. *)
val sparseAdd:
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 'treal) t ->
    [ `int64 ] t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t * [ `int64 ] t

(* The gradient operator for the SparseAdd op. *)
(* The SparseAdd op calculates A + B, where A, B, and the sum are all represented
as `SparseTensor` objects.  This op takes in the upstream gradient w.r.t.
non-empty values of the sum, and outputs the gradients w.r.t. the non-empty
values of A and B. *)
val sparseAddGrad:
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* var: Should be from a Variable(). *)
val sparseApplyAdadelta:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update relevant entries in '*var' and '*accum' according to the adagrad scheme. *)
(* That is for rows we have grad for, we update var and accum as follows:
accum += grad * grad
var -= lr * grad * (1 / sqrt(accum)) *)
val sparseApplyAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update entries in '*var' and '*accum' according to the proximal adagrad scheme. *)
val sparseApplyAdagradDA:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the centered RMSProp algorithm. *)
(* The centered RMSProp algorithm uses an estimate of the centered second moment
(i.e., the variance) for normalization, as opposed to regular RMSProp, which
uses the (uncentered) second moment. This often helps with training, but is
slightly more expensive in terms of computation and memory.

Note that in dense implementation of this algorithm, mg, ms, and mom will
update even if the grad is zero, but in this sparse implementation, mg, ms,
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
mean_grad = decay * mean_grad + (1-decay) * gradient
Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)

ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
var <- var - mom *)
val sparseApplyCenteredRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update relevant entries in '*var' according to the Ftrl-proximal scheme. *)
(* That is for rows we have grad for, we update var, accum and linear as follows:
accum_new = accum + grad * grad
linear += grad + (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val sparseApplyFtrl:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update relevant entries in '*var' according to the Ftrl-proximal scheme. *)
(* That is for rows we have grad for, we update var, accum and linear as follows:
grad_with_shrinkage = grad + 2 * l2_shrinkage * var
accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
linear += grad_with_shrinkage +
    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
accum = accum_new *)
val sparseApplyFtrlV2:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update relevant entries in '*var' and '*accum' according to the momentum scheme. *)
(* Set use_nesterov = True if you want to use Nesterov momentum.

That is for rows we have grad for, we update var and accum as follows:

accum = accum * momentum + grad
var -= lr * accum *)
val sparseApplyMomentum:
  ?use_locking:bool ->
  ?use_nesterov:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Sparse update entries in '*var' and '*accum' according to FOBOS algorithm. *)
(* That is for rows we have grad for, we update var and accum as follows:
accum += grad * grad
prox_v = var
prox_v -= lr * grad * (1 / sqrt(accum))
var = sign(prox_v)/(1+lr*l2) * max{ |prox_v|-lr*l1,0} *)
val sparseApplyProximalAdagrad:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Sparse update '*var' as FOBOS algorithm with fixed learning rate. *)
(* That is for rows we have grad for, we update var as follows:
prox_v = var - alpha * grad
var = sign(prox_v)/(1+alpha*l2) * max{ |prox_v|-alpha*l1,0} *)
val sparseApplyProximalGradientDescent:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Update '*var' according to the RMSProp algorithm. *)
(* Note that in dense implementation of this algorithm, ms and mom will
update even if the grad is zero, but in this sparse implementation, ms
and mom will not update in iterations during which the grad is zero.

mean_square = decay * mean_square + (1-decay) * gradient ** 2
Delta = learning_rate * gradient / sqrt(mean_square + epsilon)

ms <- rho * ms_{t-1} + (1-rho) * grad * grad
mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
var <- var - mom *)
val sparseApplyRMSProp:
  ?use_locking:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Concatenates a list of `SparseTensor` along the specified dimension. *)
(* Concatenation is with respect to the dense versions of these sparse tensors.
It is assumed that each input is a `SparseTensor` whose elements are ordered
along increasing dimension number.

All inputs' shapes must match, except for the concat dimension.  The
`indices`, `values`, and `shapes` lists must have the same length.

The output shape is identical to the inputs', except along the concat
dimension, where it is the sum of the inputs' sizes along that dimension.

The output elements will be resorted to preserve the sort order along
increasing dimension number.

This op runs in `O(M log M)` time, where `M` is the total number of non-empty
values across all inputs. This is due to the need for an internal sort in
order to concatenate efficiently across an arbitrary dimension.

For example, if `concat_dim = 1` and the inputs are

    sp_inputs[0]: shape = [2, 3]
    [0, 2]: 'a'
    [1, 0]: 'b'
    [1, 1]: 'c'

    sp_inputs[1]: shape = [2, 4]
    [0, 1]: 'd'
    [0, 2]: 'e'

then the output will be

    shape = [2, 7]
    [0, 2]: 'a'
    [0, 4]: 'd'
    [0, 5]: 'e'
    [1, 0]: 'b'
    [1, 1]: 'c'

Graphically this is equivalent to doing

    [    a] concat [  d e  ] = [    a   d e  ]
    [b c  ]        [       ]   [b c          ] *)
val sparseConcat:
  concat_dim:int ->
  [ `int64 ] t list ->
  't t list ->
  [ `int64 ] t list ->
    [ `int64 ] t * 't t * [ `int64 ] t

(* A conditional accumulator for aggregating sparse gradients. *)
(* The accumulator accepts gradients marked with local_step greater or
equal to the most recent global_step known to the accumulator. The
average can be extracted from the accumulator, provided sufficient
gradients have been accumulated. Extracting the average automatically
resets the aggregate to 0, and increments the global_step recorded by
the accumulator. *)
val sparseConditionalAccumulator:
  shape:int list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* Adds up a SparseTensor and a dense Tensor, using these special rules: *)
(* (1) Broadcasts the dense side to have the same shape as the sparse side, if
    eligible;
(2) Then, only the dense values pointed to by the indices of the SparseTensor
    participate in the cwise addition.

By these rules, the result is a logical SparseTensor with exactly the same
indices and shape, but possibly with different non-zero values.  The output of
this Op is the resultant non-zero values. *)
val sparseDenseCwiseAdd:
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Component-wise divides a SparseTensor by a dense Tensor. *)
(* *Limitation*: this Op only broadcasts the dense side to the sparse side, but not
the other direction. *)
val sparseDenseCwiseDiv:
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Component-wise multiplies a SparseTensor by a dense Tensor. *)
(* The output locations corresponding to the implicitly zero elements in the sparse
tensor will be zero (i.e., will not take up storage space), regardless of the
contents of the dense tensor (even if it's +/-INF and that INF*0 == NaN).

*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
the other direction. *)
val sparseDenseCwiseMul:
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Fills empty rows in the input 2-D `SparseTensor` with a default value. *)
(* The input `SparseTensor` is represented via the tuple of inputs
(`indices`, `values`, `dense_shape`).  The output `SparseTensor` has the
same `dense_shape` but with indices `output_indices` and values
`output_values`.

This op inserts a single entry for every row that doesn't have any values.
The index is created as `[row, 0, ..., 0]` and the inserted value
is `default_value`.

For example, suppose `sp_input` has shape `[5, 6]` and non-empty values:

    [0, 1]: a
    [0, 3]: b
    [2, 0]: c
    [3, 1]: d

Rows 1 and 4 are empty, so the output will be of shape `[5, 6]` with values:

    [0, 1]: a
    [0, 3]: b
    [1, 0]: default_value
    [2, 0]: c
    [3, 1]: d
    [4, 0]: default_value

The output `SparseTensor` will be in row-major order and will have the
same shape as the input.

This op also returns an indicator vector shaped `[dense_shape[0]]` such that

    empty_row_indicator[i] = True iff row i was an empty row.

And a reverse index map vector shaped `[indices.shape[0]]` that is used during
backpropagation,

    reverse_index_map[j] = out_j s.t. indices[j, :] == output_indices[out_j, :] *)
val sparseFillEmptyRows:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
  't t ->
    [ `int64 ] t * 't t * [ `bool ] t * [ `int64 ] t

(* The gradient of SparseFillEmptyRows. *)
(* Takes vectors reverse_index_map, shaped `[N]`, and grad_values,
shaped `[N_full]`, where `N_full >= N` and copies data into either
`d_values` or `d_default_value`.  Here `d_values` is shaped `[N]` and
`d_default_value` is a scalar.

  d_values[j] = grad_values[reverse_index_map[j]]
  d_default_value = sum_{k : 0 .. N_full - 1} (
     grad_values[k] * 1{k not in reverse_index_map}) *)
val sparseFillEmptyRowsGrad:
  [ `int64 ] t ->
  't t ->
    't t * 't t

(* Multiply matrix 'a' by matrix 'b'. *)
(* The inputs must be two-dimensional matrices and the inner dimension of 'a' must
match the outer dimension of 'b'. This op is optimized for the case where at
least one of 'a' or 'b' is sparse. The breakeven for using this versus a dense
matrix multiply on one platform was 30% zero values in the sparse matrix.

The gradient computation of this operation will only take advantage of sparsity
in the input gradient when that gradient comes from a Relu. *)
val sparseMatMul:
  ?transpose_a:bool ->
  ?transpose_b:bool ->
  ?a_is_sparse:bool ->
  ?b_is_sparse:bool ->
  ([< `float ] as 'ta) t ->
  ([< `float ] as 'tb) t ->
    [ `float ] t

(* Computes the max of elements across dimensions of a SparseTensor. *)
(* This Op takes a SparseTensor and is the sparse counterpart to
`tf.reduce_max()`.  In particular, this Op also returns a dense `Tensor`
instead of a sparse one.

Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
with length 1.

If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
with a single element is returned.  Additionally, the axes can be negative,
which are interpreted according to the indexing rules in Python. *)
val sparseReduceMax:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the max of elements across dimensions of a SparseTensor. *)
(* This Op takes a SparseTensor and is the sparse counterpart to
`tf.reduce_max()`.  In contrast to SparseReduceMax, this Op returns a
SparseTensor.

Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
with length 1.

If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
with a single element is returned.  Additionally, the axes can be negative,
which are interpreted according to the indexing rules in Python. *)
val sparseReduceMaxSparse:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t * [ `int64 ] t

(* Computes the sum of elements across dimensions of a SparseTensor. *)
(* This Op takes a SparseTensor and is the sparse counterpart to
`tf.reduce_sum()`.  In particular, this Op also returns a dense `Tensor`
instead of a sparse one.

Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
with length 1.

If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
with a single element is returned.  Additionally, the axes can be negative,
which are interpreted according to the indexing rules in Python. *)
val sparseReduceSum:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Computes the sum of elements across dimensions of a SparseTensor. *)
(* This Op takes a SparseTensor and is the sparse counterpart to
`tf.reduce_sum()`.  In contrast to SparseReduceSum, this Op returns a
SparseTensor.

Reduces `sp_input` along the dimensions given in `reduction_axes`.  Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_axes`. If `keep_dims` is true, the reduced dimensions are retained
with length 1.

If `reduction_axes` has no entries, all dimensions are reduced, and a tensor
with a single element is returned.  Additionally, the axes can be negative,
which are interpreted according to the indexing rules in Python. *)
val sparseReduceSumSparse:
  ?keep_dims:bool ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int32 ] t ->
    [ `int64 ] t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t * [ `int64 ] t

(* Reorders a SparseTensor into the canonical, row-major ordering. *)
(* Note that by convention, all sparse ops preserve the canonical ordering along
increasing dimension number. The only time ordering can be violated is during
manual manipulation of the indices and values vectors to add entries.

Reordering does not affect the shape of the SparseTensor.

If the tensor has rank `R` and `N` non-empty values, `input_indices` has
shape `[N, R]`, input_values has length `N`, and input_shape has length `R`. *)
val sparseReorder:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
    [ `int64 ] t * 't t

(* Reshapes a SparseTensor to represent values in a new dense shape. *)
(* This operation has the same semantics as reshape on the represented dense
tensor.  The `input_indices` are recomputed based on the requested `new_shape`.

If one component of `new_shape` is the special value -1, the size of that
dimension is computed so that the total dense size remains constant.  At
most one component of `new_shape` can be -1.  The number of dense elements
implied by `new_shape` must be the same as the number of dense elements
originally implied by `input_shape`.

Reshaping does not affect the order of values in the SparseTensor.

If the input tensor has rank `R_in` and `N` non-empty values, and `new_shape`
has length `R_out`, then `input_indices` has shape `[N, R_in]`,
`input_shape` has length `R_in`, `output_indices` has shape `[N, R_out]`, and
`output_shape` has length `R_out`. *)
val sparseReshape:
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `int64 ] t

(* Computes the mean along sparse segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Like `SegmentMean`, but `segment_ids` can have rank less than `data`'s first
dimension, selecting a subset of dimension 0, specified by `indices`. *)
val sparseSegmentMean:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

(* Computes gradients for SparseSegmentMean. *)
(* Returns tensor 'output' with same shape as grad, except for dimension 0 whose
value is output_dim0. *)
val sparseSegmentMeanGrad:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

(* Computes the sum along sparse segments of a tensor divided by the sqrt of N. *)
(* N is the size of the segment being reduced.

Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments. *)
val sparseSegmentSqrtN:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

(* Computes gradients for SparseSegmentSqrtN. *)
(* Returns tensor 'output' with same shape as grad, except for dimension 0 whose
value is output_dim0. *)
val sparseSegmentSqrtNGrad:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
  [ `int32 ] t ->
    ([< `float | `double ] as 't) t

(* Computes the sum along sparse segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Like `SegmentSum`, but `segment_ids` can have rank less than `data`'s first
dimension, selecting a subset of dimension 0, specified by `indices`.

For example:

```python
c = tf.constant([[1,2,3,4], [-1,-2,-3,-4], [5,6,7,8]])

# Select two rows, one segment.
tf.sparse_segment_sum(c, tf.constant([0, 1]), tf.constant([0, 0]))
# => [[0 0 0 0]]

# Select two rows, two segment.
tf.sparse_segment_sum(c, tf.constant([0, 1]), tf.constant([0, 1]))
# => [[ 1  2  3  4]
#     [-1 -2 -3 -4]]

# Select all rows, two segments.
tf.sparse_segment_sum(c, tf.constant([0, 1, 2]), tf.constant([0, 0, 1]))
# => [[0 0 0 0]
#     [5 6 7 8]]

# Which is equivalent to:
tf.segment_sum(c, tf.constant([0, 0, 1]))
``` *)
val sparseSegmentSum:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Slice a `SparseTensor` based on the `start` and `size`. *)
(* For example, if the input is

    input_tensor = shape = [2, 7]
    [    a   d e  ]
    [b c          ]

Graphically the output tensors are:

    sparse_slice([0, 0], [2, 4]) = shape = [2, 4]
    [    a  ]
    [b c    ]

    sparse_slice([0, 4], [2, 3]) = shape = [2, 3]
    [ d e  ]
    [      ] *)
val sparseSlice:
  [ `int64 ] t ->
  't t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
    [ `int64 ] t * 't t * [ `int64 ] t

(* Applies softmax to a batched N-D `SparseTensor`. *)
(* The inputs represent an N-D SparseTensor  with logical shape `[..., B, C]`
(where `N >= 2`), and with indices sorted in the canonical lexicographic order.

This op is equivalent to applying the normal `tf.nn.softmax()` to each innermost
logical submatrix with shape `[B, C]`, but with the catch that *the implicitly
zero elements do not participate*.  Specifically, the algorithm is equivalent
to the following:

  (1) Applies `tf.nn.softmax()` to a densified view of each innermost submatrix
      with shape `[B, C]`, along the size-C dimension;
  (2) Masks out the original implicitly-zero locations;
  (3) Renormalizes the remaining elements.

Hence, the `SparseTensor` result has exactly the same non-zero indices and
shape. *)
val sparseSoftmax:
  [ `int64 ] t ->
  ([< `float | `double ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double ] as 't) t

(* Computes softmax cross entropy cost and gradients to backpropagate. *)
(* Unlike `SoftmaxCrossEntropyWithLogits`, this operation does not accept
a matrix of label probabilities, but rather a single label per row
of features.  This label is considered to have probability 1.0 for the
given row.

Inputs are the logits, not probabilities. *)
val sparseSoftmaxCrossEntropyWithLogits:
  ([< `float | `double ] as 't) t ->
  ([< `int32 | `int64 ] as 'tlabels) t ->
    ([< `float | `double ] as 't) t * ([< `float | `double ] as 't) t

(* Returns the element-wise max of two SparseTensors. *)
(* Assumes the two SparseTensors have the same shape, i.e., no broadcasting. *)
val sparseSparseMaximum:
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int64 ] t ->
    [ `int64 ] t * ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Returns the element-wise min of two SparseTensors. *)
(* Assumes the two SparseTensors have the same shape, i.e., no broadcasting. *)
val sparseSparseMinimum:
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
  [ `int64 ] t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  [ `int64 ] t ->
    [ `int64 ] t * ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Adds up a `SparseTensor` and a dense `Tensor`, producing a dense `Tensor`. *)
(* This Op does not require `a_indices` be sorted in standard lexicographic order. *)
val sparseTensorDenseAdd:
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Multiply SparseTensor (of rank 2) 'A' by dense matrix 'B'. *)
(* No validity checking is performed on the indices of A.  However, the following
input format is recommended for optimal behavior:

if adjoint_a == false:
  A should be sorted in lexicographically increasing order.  Use SparseReorder
  if you're not sure.
if adjoint_a == true:
  A should be sorted in order of increasing dimension 1 (i.e., 'column major'
  order instead of 'row major' order). *)
val sparseTensorDenseMatMul:
  ?adjoint_a:bool ->
  ?adjoint_b:bool ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
  [ `int64 ] t ->
  't t ->
    't t

(* Creates a dataset that splits a SparseTensor into elements row-wise. *)
val sparseTensorSliceDataset:
  [ `int64 ] t ->
  'tvalues t ->
  [ `int64 ] t ->
    [ `variant ] t

(* Converts a sparse representation into a dense tensor. *)
(* Builds an array `dense` with shape `output_shape` such that

```
# If sparse_indices is scalar
dense[i] = (i == sparse_indices ? sparse_values : default_value)

# If sparse_indices is a vector, then for each i
dense[sparse_indices[i]] = sparse_values[i]

# If sparse_indices is an n by d matrix, then for each i in [0, n)
dense[sparse_indices[i][0], ..., sparse_indices[i][d-1]] = sparse_values[i]
```

All other values in `dense` are set to `default_value`.  If `sparse_values` is a
scalar, all sparse indices are set to this single value.

Indices should be sorted in lexicographic order, and indices must not
contain any repeats. If `validate_indices` is true, these properties
are checked during execution. *)
val sparseToDense:
  ?validate_indices:bool ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  't t ->
  't t ->
    't t

(* Applies set operation along last dimension of 2 `SparseTensor` inputs. *)
(* See SetOperationOp::SetOperationFromContext for values of `set_operation`.

If `validate_indices` is `True`, `SparseToSparseSetOperation` validates the
order and range of `set1` and `set2` indices.

Input `set1` is a `SparseTensor` represented by `set1_indices`, `set1_values`,
and `set1_shape`. For `set1` ranked `n`, 1st `n-1` dimensions must be the same
as `set2`. Dimension `n` contains values in a set, duplicates are allowed but
ignored.

Input `set2` is a `SparseTensor` represented by `set2_indices`, `set2_values`,
and `set2_shape`. For `set2` ranked `n`, 1st `n-1` dimensions must be the same
as `set1`. Dimension `n` contains values in a set, duplicates are allowed but
ignored.

If `validate_indices` is `True`, this op validates the order and range of `set1`
and `set2` indices.

Output `result` is a `SparseTensor` represented by `result_indices`,
`result_values`, and `result_shape`. For `set1` and `set2` ranked `n`, this
has rank `n` and the same 1st `n-1` dimensions as `set1` and `set2`. The `nth`
dimension contains the result of `set_operation` applied to the corresponding
`[0...n-1]` dimension of `set`. *)
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

(* Splits a tensor into `num_split` tensors along one dimension. *)
val split:
  num_split:int ->
  [ `int32 ] t ->
  't t ->
    't t list

(* Splits a tensor into `num_split` tensors along one dimension. *)
val splitV:
  num_split:int ->
  't t ->
  ([< `int32 | `int64 ] as 'tlen) t ->
  [ `int32 ] t ->
    't t list

(* Creates a dataset that executes a SQL query and emits rows of the result set. *)
val sqlDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `string ] t ->
  [ `string ] t ->
  [ `string ] t ->
    [ `variant ] t

(* Computes square root of x element-wise. *)
(* I.e., \\(y = \sqrt{x} = x^{1/2}\\). *)
val sqrt:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes the gradient for the sqrt of `x` wrt its input. *)
(* Specifically, `grad = dy * 0.5 / y`, where `y = sqrt(x)`, and `dy`
is the corresponding input gradient. *)
val sqrtGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes square of x element-wise. *)
(* I.e., \\(y = x * x = x^2\\). *)
val square:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Returns (x - y)(x - y) element-wise. *)
(* *NOTE*: `SquaredDifference` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val squaredDifference:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Removes dimensions of size 1 from the shape of a tensor. *)
(* Given a tensor `input`, this operation returns a tensor of the same type with
all dimensions of size 1 removed. If you don't want to remove all size 1
dimensions, you can remove specific size 1 dimensions by specifying
`squeeze_dims`.

For example:

```
# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
shape(squeeze(t)) ==> [2, 3]
```

Or, to remove specific size 1 dimensions:

```
# 't' is a tensor of shape [1, 2, 1, 3, 1, 1]
shape(squeeze(t, [2, 4])) ==> [1, 2, 3, 1]
``` *)
val squeeze:
  ?squeeze_dims:int list ->
  't t ->
    't t

(* Deprecated, use StackV2. *)
val stack:
  ?stack_name:string ->
  unit ->
    [ `string ] t

(* Deprecated, use StackCloseV2. *)
val stackClose:
  [ `string ] t ->
    unit

(* Delete the stack from its resource container. *)
val stackCloseV2:
  [ `resource ] t ->
    unit

(* Deprecated, use StackPopV2. *)
val stackPop:
  type_elem_type:'elem_type Type.t ->
  [ `string ] t ->
    'elem_type t

(* Pop the element at the top of the stack. *)
val stackPopV2:
  type_elem_type:'elem_type Type.t ->
  [ `resource ] t ->
    'elem_type t

(* Deprecated, use StackPushV2. *)
val stackPush:
  ?swap_memory:bool ->
  [ `string ] t ->
  't t ->
    't t

(* Push an element onto the stack. *)
val stackPushV2:
  ?swap_memory:bool ->
  [ `resource ] t ->
  't t ->
    't t

(* A stack that produces elements in first-in last-out order. *)
val stackV2:
  ?stack_name:string ->
  [ `int32 ] t ->
    [ `resource ] t

(* Op removes all elements in the underlying container. *)
val stageClear:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    unit

(* Op returns the number of elements in the underlying container. *)
val stageSize:
  ?capacity:int ->
  ?memory_limit:int ->
  dtypes:Type.p list ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `int32 ] t

(* Outputs deterministic pseudorandom values from a normal distribution. *)
(* The generated values will have mean 0 and standard deviation 1.

The outputs are a deterministic function of `shape` and `seed`. *)
val statelessRandomNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ([< `int32 | `int64 ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double ] as 'dtype) t

(* Outputs deterministic pseudorandom random values from a uniform distribution. *)
(* The generated values follow a uniform distribution in the range `[0, 1)`. The
lower bound 0 is included in the range, while the upper bound 1 is excluded.

The outputs are a deterministic function of `shape` and `seed`. *)
val statelessRandomUniform:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ([< `int32 | `int64 ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double ] as 'dtype) t

(* Outputs deterministic pseudorandom values from a truncated normal distribution. *)
(* The generated values follow a normal distribution with mean 0 and standard
deviation 1, except that values whose magnitude is more than 2 standard
deviations from the mean are dropped and re-picked.

The outputs are a deterministic function of `shape` and `seed`. *)
val statelessTruncatedNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ([< `int32 | `int64 ] as 't) t ->
  [ `int64 ] t ->
    ([< `float | `double ] as 'dtype) t

(* Stops gradient computation. *)
(* When executed in a graph, this op outputs its input tensor as-is.

When building ops to compute gradients, this op prevents the contribution of
its inputs to be taken into account.  Normally, the gradient generator adds ops
to a graph to compute the derivatives of a specified 'loss' by recursively
finding out inputs that contributed to its computation.  If you insert this op
in the graph it inputs are masked from the gradient generator.  They are not
taken into account for computing gradients.

This is useful any time you want to compute a value with TensorFlow but need
to pretend that the value was a constant. Some examples include:

*  The *EM* algorithm where the *M-step* should not involve backpropagation
   through the output of the *E-step*.
*  Contrastive divergence training of Boltzmann machines where, when
   differentiating the energy function, the training must not backpropagate
   through the graph that generated the samples from the model.
*  Adversarial training, where no backprop should happen through the adversarial
   example generation process. *)
val stopGradient:
  't t ->
    't t

(* Return a strided slice from `input`. *)
(* Note, most python users will want to use the Python `Tensor.__getitem__`
or `Variable.__getitem__` rather than this op directly.

The goal of this op is to produce a new tensor with a subset of
the elements from the `n` dimensional `input` tensor. The subset is chosen using
a sequence of `m` sparse range specifications encoded into the arguments
of this function. Note, in some cases
`m` could be equal to `n`, but this need not be the case. Each
range specification entry can be one of the following:

- An ellipsis (...). Ellipses are used to imply zero or more
  dimensions of full-dimension selection and are produced using
  `ellipsis_mask`. For example, `foo[...]` is the identity slice.

- A new axis. This is used to insert a new shape=1 dimension and is
  produced using `new_axis_mask`. For example, `foo[:, ...]` where
  `foo` is shape `(3, 4)` produces a `(1, 3, 4)` tensor.


- A range `begin:end:stride`. This is used to specify how much to choose from
  a given dimension. `stride` can be any integer but 0.  `begin` is an integer
  which represents the index of the first value to select while `end` represents
  the index of the last value to select. The number of values selected in each
  dimension is `end - begin` if `stride > 0` and `begin - end` if `stride < 0`.
  `begin` and `end` can be negative where `-1` is the last element, `-2` is
  the second to last. `begin_mask` controls whether to replace the explicitly
  given `begin` with an implicit effective value of `0` if `stride > 0` and
  `-1` if `stride < 0`. `end_mask` is analogous but produces the number
  required to create the largest open interval. For example, given a shape
  `(3,)` tensor `foo[:]`, the effective `begin` and `end` are `0` and `3`. Do
  not assume this is equivalent to `foo[0:-1]` which has an effective `begin`
  and `end` of `0` and `2`. Another example is `foo[-2::-1]` which reverses the
  first dimension of a tensor while dropping the last two (in the original
  order elements). For example `foo = [1,2,3,4]; foo[-2::-1]` is `[4,3]`.

- A single index. This is used to keep only elements that have a given
  index. For example (`foo[2, :]` on a shape `(5,6)` tensor produces a
  shape `(6,)` tensor. This is encoded in `begin` and `end` and
  `shrink_axis_mask`.

Each conceptual range specification is encoded in the op's argument. This
encoding is best understand by considering a non-trivial example. In
particular,
`foo[1, 2:4, None, ..., :-3:-1, :]` will be encoded as

```
begin = [1, 2, x, x, 0, x] # x denotes don't care (usually 0)
end = [2, 4, x, x, -3, x]
strides = [1, 1, x, x, -1, 1]
begin_mask = 1<<4 | 1 << 5 = 48
end_mask = 1<<5 = 32
ellipsis_mask = 1<<3 = 8
new_axis_mask = 1<<2 4
shrink_axis_mask = 1<<0
```

In this case if `foo.shape` is (5, 5, 5, 5, 5, 5) the final shape of
the slice becomes (2, 1, 5, 5, 2, 5).
Let us walk step by step through each argument specification.

1.  The first argument in the example slice is turned into `begin = 1` and
`end = begin + 1 = 2`. To disambiguate from the original spec `2:4` we
also set the appropriate bit in `shrink_axis_mask`.

2. `2:4` is contributes 2, 4, 1 to begin, end, and stride. All masks have
zero bits contributed.

3. None is a synonym for `tf.newaxis`. This means insert a dimension of size 1
dimension in the final shape. Dummy values are contributed to begin,
end and stride, while the new_axis_mask bit is set.

4. `...` grab the full ranges from as many dimensions as needed to
fully specify a slice for every dimension of the input shape.

5. `:-3:-1` shows the use of negative indices. A negative index `i` associated
with a dimension that has shape `s` is converted to a positive index
`s + i`. So `-1` becomes `s-1` (i.e. the last element). This conversion
is done internally so begin, end and strides receive x, -3, and -1.
The appropriate begin_mask bit is set to indicate the start range is the
full range (ignoring the x).

6. `:` indicates that the entire contents of the corresponding dimension
is selected. This is equivalent to `::` or `0::1`. begin, end, and strides
receive 0, 0, and 1, respectively. The appropriate bits in `begin_mask` and
`end_mask` are also set.

*Requirements*:
  `0 != strides[i] for i in [0, m)`
  `ellipsis_mask must be a power of two (only one ellipsis)` *)
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

(* Assign `value` to the sliced l-value reference of `ref`. *)
(* The values of `value` are assigned to the positions in the variable
`ref` that are selected by the slice parameters. The slice parameters
`begin, `end`, `strides`, etc. work exactly as in `StridedSlice`.

NOTE this op currently does not support broadcasting and so `value`'s
shape must be exactly the shape produced by the slice of `ref`. *)
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

(* Returns the gradient of `StridedSlice`. *)
(* Since `StridedSlice` cuts out pieces of its `input` which is size
`shape`, its gradient will have the same shape (which is passed here
as `shape`). The gradient will be zero in any element that the slice
does not select.

Arguments are the same as StridedSliceGrad with the exception that
`dy` is the input gradient to be propagated and `shape` is the
shape of `StridedSlice`'s `input`. *)
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

(* Joins the strings in the given list of string tensors into one tensor; *)
(* with the given separator (default is an empty separator). *)
val stringJoin:
  ?separator:string ->
  [ `string ] t list ->
    [ `string ] t

(* Split elements of `input` based on `delimiter` into a `SparseTensor`. *)
(* Let N be the size of source (typically N will be the batch size). Split each
element of `input` based on `delimiter` and return a `SparseTensor`
containing the splitted tokens. Empty tokens are ignored.

`delimiter` can be empty, or a string of split characters. If `delimiter` is an
 empty string, each element of `input` is split into individual single-byte
 character strings, including splitting of UTF-8 multibyte sequences. Otherwise
 every character of `delimiter` is a potential split point.

For example:
  N = 2, input[0] is 'hello world' and input[1] is 'a b c', then the output
  will be

  indices = [0, 0;
             0, 1;
             1, 0;
             1, 1;
             1, 2]
  shape = [2, 3]
  values = ['hello', 'world', 'a', 'b', 'c'] *)
val stringSplit:
  ?skip_empty:bool ->
  [ `string ] t ->
  [ `string ] t ->
    [ `int64 ] t * [ `string ] t * [ `int64 ] t

(* Converts each string in the input Tensor to its hash mod by a number of buckets. *)
(* The hash function is deterministic on the content of the string within the
process.

Note that the hash function may change from time to time.
This functionality will be deprecated and it's recommended to use
`tf.string_to_hash_bucket_fast()` or `tf.string_to_hash_bucket_strong()`. *)
val stringToHashBucket:
  num_buckets:int ->
  [ `string ] t ->
    [ `int64 ] t

(* Converts each string in the input Tensor to its hash mod by a number of buckets. *)
(* The hash function is deterministic on the content of the string within the
process and will never change. However, it is not suitable for cryptography.
This function may be used when CPU time is scarce and inputs are trusted or
unimportant. There is a risk of adversaries constructing inputs that all hash
to the same bucket. To prevent this problem, use a strong hash function with
`tf.string_to_hash_bucket_strong`. *)
val stringToHashBucketFast:
  num_buckets:int ->
  [ `string ] t ->
    [ `int64 ] t

(* Converts each string in the input Tensor to its hash mod by a number of buckets. *)
(* The hash function is deterministic on the content of the string within the
process. The hash function is a keyed hash function, where attribute `key`
defines the key of the hash function. `key` is an array of 2 elements.

A strong hash is important when inputs may be malicious, e.g. URLs with
additional components. Adversaries could try to make their inputs hash to the
same bucket for a denial-of-service attack or to skew the results. A strong
hash prevents this by making it difficult, if not infeasible, to compute inputs
that hash to the same bucket. This comes at a cost of roughly 4x higher compute
time than `tf.string_to_hash_bucket_fast`. *)
val stringToHashBucketStrong:
  num_buckets:int ->
  key:int list ->
  [ `string ] t ->
    [ `int64 ] t

(* Converts each string in the input Tensor to the specified numeric type. *)
(* (Note that int32 overflow results in an error while float overflow
results in a rounded value.) *)
val stringToNumber:
  type_out_type:([< `float | `double | `int32 | `int64 ] as 'out_type) Type.t ->
  [ `string ] t ->
    ([< `float | `double | `int32 | `int64 ] as 'out_type) t

(* Returns x - y element-wise. *)
(* *NOTE*: `Sub` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val sub:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

(* Return substrings from `Tensor` of strings. *)
(* For each string in the input `Tensor`, creates a substring starting at index
`pos` with a total length of `len`.

If `len` defines a substring that would extend beyond the length of the input
string, then as many characters as possible are used.

If `pos` is negative or specifies a character index larger than any of the input
strings, then an `InvalidArgumentError` is thrown.

`pos` and `len` must have the same shape, otherwise a `ValueError` is thrown on
Op creation.

*NOTE*: `Substr` supports broadcasting up to two dimensions. More about
broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)

---

Examples

Using scalar `pos` and `len`:

```python
input = [b'Hello', b'World']
position = 1
length = 3

output = [b'ell', b'orl']
```

Using `pos` and `len` with same shape as `input`:

```python
input = [[b'ten', b'eleven', b'twelve'],
         [b'thirteen', b'fourteen', b'fifteen'],
         [b'sixteen', b'seventeen', b'eighteen']]
position = [[1, 2, 3],
            [1, 2, 3],
            [1, 2, 3]]
length =   [[2, 3, 4],
            [4, 3, 2],
            [5, 5, 5]]

output = [[b'en', b'eve', b'lve'],
          [b'hirt', b'urt', b'te'],
          [b'ixtee', b'vente', b'hteen']]
```

Broadcasting `pos` and `len` onto `input`:

```
input = [[b'ten', b'eleven', b'twelve'],
         [b'thirteen', b'fourteen', b'fifteen'],
         [b'sixteen', b'seventeen', b'eighteen'],
         [b'nineteen', b'twenty', b'twentyone']]
position = [1, 2, 3]
length =   [1, 2, 3]

output = [[b'e', b'ev', b'lve'],
          [b'h', b'ur', b'tee'],
          [b'i', b've', b'hte'],
          [b'i', b'en', b'nty']]
```

Broadcasting `input` onto `pos` and `len`:

```
input = b'thirteen'
position = [1, 5, 7]
length =   [3, 2, 1]

output = [b'hir', b'ee', b'n']
``` *)
val substr:
  [ `string ] t ->
  ([< `int32 | `int64 ] as 't) t ->
  ([< `int32 | `int64 ] as 't) t ->
    [ `string ] t

(* Computes the sum of elements across dimensions of a tensor. *)
(* Reduces `input` along the dimensions given in `reduction_indices`. Unless
`keep_dims` is true, the rank of the tensor is reduced by 1 for each entry in
`reduction_indices`. If `keep_dims` is true, the reduced dimensions are
retained with length 1. *)
val sum:
  ?keep_dims:bool ->
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tidx) t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Computes the singular value decompositions of one or more matrices. *)
(* Computes the SVD of each inner matrix in `input` such that
`input[..., :, :] = u[..., :, :] * diag(s[..., :, :]) * transpose(v[..., :, :])`

```python
# a is a tensor containing a batch of matrices.
# s is a tensor of singular values for each matrix.
# u is the tensor containing of left singular vectors for each matrix.
# v is the tensor containing of right singular vectors for each matrix.
s, u, v = svd(a)
s, _, _ = svd(a, compute_uv=False)
``` *)
val svd:
  ?compute_uv:bool ->
  ?full_matrices:bool ->
  ([< `double | `float | `complex64 ] as 't) t ->
    ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t * ([< `double | `float | `complex64 ] as 't) t

(* Forwards `data` to the output port determined by `pred`. *)
(* If `pred` is true, the `data` input is forwarded to `output_true`. Otherwise,
the data goes to `output_false`.

See also `RefSwitch` and `Merge`. *)
val switch:
  't t ->
  [ `bool ] t ->
    't t * 't t

(* Creates a dataset that emits the records from one or more TFRecord files. *)
val tFRecordDataset:
  [ `string ] t ->
  [ `string ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* A Reader that outputs the records from a TensorFlow Records file. *)
val tFRecordReader:
  ?container:string ->
  ?shared_name:string ->
  ?compression_type:string ->
  unit ->
    [ `string ] t

(* A Reader that outputs the records from a TensorFlow Records file. *)
val tFRecordReaderV2:
  ?container:string ->
  ?shared_name:string ->
  ?compression_type:string ->
  unit ->
    [ `resource ] t

(* Creates a dataset that contains `count` elements from the `input_dataset`. *)
val takeDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* Read `SparseTensors` from a `SparseTensorsMap` and concatenate them. *)
(* The input `sparse_handles` must be an `int64` matrix of shape `[N, 1]` where
`N` is the minibatch size and the rows correspond to the output handles of
`AddSparseToTensorsMap` or `AddManySparseToTensorsMap`.  The ranks of the
original `SparseTensor` objects that went into the given input ops must all
match.  When the final `SparseTensor` is created, it has rank one
higher than the ranks of the incoming `SparseTensor` objects
(they have been concatenated along a new row dimension on the left).

The output `SparseTensor` object's shape values for all dimensions but the
first are the max across the input `SparseTensor` objects' shape values
for the corresponding dimensions.  Its first shape value is `N`, the minibatch
size.

The input `SparseTensor` objects' indices are assumed ordered in
standard lexicographic order.  If this is not the case, after this
step run `SparseReorder` to restore index ordering.

For example, if the handles represent an input, which is a `[2, 3]` matrix
representing two original `SparseTensor` objects:

```
    index = [ 0]
            [10]
            [20]
    values = [1, 2, 3]
    shape = [50]
```

and

```
    index = [ 2]
            [10]
    values = [4, 5]
    shape = [30]
```

then the final `SparseTensor` will be:

```
    index = [0  0]
            [0 10]
            [0 20]
            [1  2]
            [1 10]
    values = [1, 2, 3, 4, 5]
    shape = [2 50]
``` *)
val takeManySparseFromTensorsMap:
  type_dtype:'dtype Type.t ->
  ?container:string ->
  ?shared_name:string ->
  [ `int64 ] t ->
    [ `int64 ] t * 'dtype t * [ `int64 ] t

(* Computes tan of x element-wise. *)
val tan:
  ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `complex64 ] as 't) t

(* Computes hyperbolic tangent of `x` element-wise. *)
val tanh:
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Computes the gradient for the tanh of `x` wrt its input. *)
(* Specifically, `grad = dy * (1 - y*y)`, where `y = tanh(x)`, and `dy`
is the corresponding input gradient. *)
val tanhGrad:
  ([< `float | `double | `complex64 ] as 't) t ->
  ([< `float | `double | `complex64 ] as 't) t ->
    ([< `float | `double | `complex64 ] as 't) t

(* Returns a tensor that may be mutated, but only persists within a single step. *)
(* This is an experimental op for internal use only and it is possible to use this
op in unsafe ways.  DO NOT USE unless you fully understand the risks.

It is the caller's responsibility to ensure that 'ref' is eventually passed to a
matching 'DestroyTemporaryVariable' op after all other uses have completed.

Outputs a ref to the tensor state so it may be read or modified.

  E.g.
      var = state_ops._temporary_variable([1, 2], types.float_)
      var_name = var.op.name
      var = state_ops.assign(var, [[4.0, 5.0]])
      var = state_ops.assign_add(var, [[6.0, 7.0]])
      final = state_ops._destroy_temporary_variable(var, var_name=var_name) *)
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

(* Deprecated. Use TensorArrayCloseV3 *)
val tensorArrayCloseV2:
  [ `string ] t ->
    unit

(* Delete the TensorArray from its resource container. *)
(* This enables the user to close and release the resource in the middle
of a step/run. *)
val tensorArrayCloseV3:
  [ `resource ] t ->
    unit

val tensorArrayConcat:
  type_dtype:'dtype Type.t ->
  ?element_shape_except0:int list ->
  [ `string ] t ->
  [ `float ] t ->
    'dtype t * [ `int64 ] t

(* Deprecated. Use TensorArrayConcatV3 *)
val tensorArrayConcatV2:
  type_dtype:'dtype Type.t ->
  ?element_shape_except0:int list ->
  [ `string ] t ->
  [ `float ] t ->
    'dtype t * [ `int64 ] t

(* Concat the elements from the TensorArray into value `value`. *)
(* Takes `T` elements of shapes

  ```
  (n0 x d0 x d1 x ...), (n1 x d0 x d1 x ...), ..., (n(T-1) x d0 x d1 x ...)
  ```

and concatenates them into a Tensor of shape:

  ```(n0 + n1 + ... + n(T-1) x d0 x d1 x ...)```

All elements must have the same shape (excepting the first dimension). *)
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

(* Deprecated. Use TensorArrayGatherV3 *)
val tensorArrayGatherV2:
  type_dtype:'dtype Type.t ->
  ?element_shape:int list ->
  [ `string ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

(* Gather specific elements from the TensorArray into output `value`. *)
(* All elements selected by `indices` must have the same shape. *)
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

(* Deprecated. Use TensorArrayGradV3 *)
val tensorArrayGradV2:
  source:string ->
  [ `string ] t ->
  [ `float ] t ->
    [ `string ] t

(* Creates a TensorArray for storing the gradients of values in the given handle. *)
(* If the given TensorArray gradient already exists, returns a reference to it.

Locks the size of the original TensorArray by disabling its dynamic size flag.

**A note about the input flow_in:**

The handle flow_in forces the execution of the gradient lookup to occur
only after certain other operations have occurred.  For example, when
the forward TensorArray is dynamically sized, writes to this TensorArray
may resize the object.  The gradient TensorArray is statically sized based
on the size of the forward TensorArray when this operation executes.
Furthermore, the size of the forward TensorArray is frozen by this call.
As a result, the flow is used to ensure that the call to generate the gradient
TensorArray only happens after all writes are executed.

In the case of dynamically sized TensorArrays, gradient computation should
only be performed on read operations that have themselves been chained via
flow to occur only after all writes have executed. That way the final size
of the forward TensorArray is known when this operation is called.

**A note about the source attribute:**

TensorArray gradient calls use an accumulator TensorArray object.  If
multiple gradients are calculated and run in the same session, the multiple
gradient nodes may accidentally flow through the same accumulator TensorArray.
This double counts and generally breaks the TensorArray gradient flow.

The solution is to identify which gradient call this particular
TensorArray gradient is being called in.  This is performed by identifying
a unique string (e.g. 'gradients', 'gradients_1', ...) from the input
gradient Tensor's name.  This string is used as a suffix when creating
the TensorArray gradient object here (the attribute `source`).

The attribute `source` is added as a suffix to the forward TensorArray's
name when performing the creation / lookup, so that each separate gradient
calculation gets its own TensorArray accumulator. *)
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

(* Deprecated. Use TensorArrayReadV3 *)
val tensorArrayReadV2:
  type_dtype:'dtype Type.t ->
  [ `string ] t ->
  [ `int32 ] t ->
  [ `float ] t ->
    'dtype t

(* Read an element from the TensorArray into output `value`. *)
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

(* Deprecated. Use TensorArrayScatterV3 *)
val tensorArrayScatterV2:
  [ `string ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

(* Scatter the data from the input value into specific TensorArray elements. *)
(* `indices` must be a vector, its length must match the first dim of `value`. *)
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

(* Deprecated. Use TensorArraySizeV3 *)
val tensorArraySizeV2:
  [ `string ] t ->
  [ `float ] t ->
    [ `int32 ] t

(* Get the current size of the TensorArray. *)
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

(* Deprecated. Use TensorArraySplitV3 *)
val tensorArraySplitV2:
  [ `string ] t ->
  't t ->
  [ `int64 ] t ->
  [ `float ] t ->
    [ `float ] t

(* Split the data from the input value into TensorArray elements. *)
(* Assuming that `lengths` takes on values

  ```(n0, n1, ..., n(T-1))```

and that `value` has shape

  ```(n0 + n1 + ... + n(T-1) x d0 x d1 x ...)```,

this splits values into a TensorArray with T tensors.

TensorArray index t will be the subtensor of values with starting position

  ```(n0 + n1 + ... + n(t-1), 0, 0, ...)```

and having size

  ```nt x d0 x d1 x ...``` *)
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

(* Deprecated. Use TensorArrayV3 *)
val tensorArrayV2:
  ?element_shape:int list ->
  ?dynamic_size:bool ->
  ?clear_after_read:bool ->
  ?tensor_array_name:string ->
  [ `int32 ] t ->
    [ `string ] t

(* An array of Tensors of given size. *)
(* Write data via Write and read via Read or Pack. *)
val tensorArrayV3:
  ?element_shape:int list ->
  ?dynamic_size:bool ->
  ?clear_after_read:bool ->
  ?tensor_array_name:string ->
  [ `int32 ] t ->
    [ `resource ] t * [ `float ] t

val tensorArrayWrite:
  [ `string ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

(* Deprecated. Use TensorArrayGradV3 *)
val tensorArrayWriteV2:
  [ `string ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

(* Push an element onto the tensor_array. *)
val tensorArrayWriteV3:
  [ `resource ] t ->
  [ `int32 ] t ->
  't t ->
  [ `float ] t ->
    [ `float ] t

(* Outputs a `Summary` protocol buffer with a tensor. *)
(* This op is being phased out in favor of TensorSummaryV2, which lets callers pass
a tag as well as a serialized SummaryMetadata proto string that contains
plugin-specific data. We will keep this op to maintain backwards compatibility. *)
val tensorSummary:
  ?description:string ->
  ?display_name:string ->
  't t ->
    [ `string ] t

(* Outputs a `Summary` protocol buffer with a tensor and per-plugin data. *)
val tensorSummaryV2:
  [ `string ] t ->
  't t ->
  [ `string ] t ->
    [ `string ] t

(* Creates a dataset that emits the lines of one or more text files. *)
val textLineDataset:
  [ `string ] t ->
  [ `string ] t ->
  [ `int64 ] t ->
    [ `variant ] t

(* A Reader that outputs the lines of a file delimited by '\n'. *)
val textLineReader:
  ?skip_header_lines:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* A Reader that outputs the lines of a file delimited by '\n'. *)
val textLineReaderV2:
  ?skip_header_lines:int ->
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

(* Generates labels for candidate sampling with a learned unigram distribution. *)
(* See explanations of candidate sampling and the data formats at
go/candidate-sampling.

For each batch, this op picks a single set of sampled candidate labels.

The advantages of sampling candidates per-batch are simplicity and the
possibility of efficient dense matrix multiplication. The disadvantage is that
the sampled candidates must be chosen independently of the context and of the
true labels. *)
val threadUnsafeUnigramCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

(* Constructs a tensor by tiling a given tensor. *)
(* This operation creates a new tensor by replicating `input` `multiples` times.
The output tensor's i'th dimension has `input.dims(i) * multiples[i]` elements,
and the values of `input` are replicated `multiples[i]` times along the 'i'th
dimension. For example, tiling `[a b c d]` by `[2]` produces
`[a b c d a b c d]`. *)
val tile:
  't t ->
  ([< `int32 | `int64 ] as 'tmultiples) t ->
    't t

(* Returns the gradient of `Tile`. *)
(* Since `Tile` takes an input and repeats the input `multiples` times
along each dimension, `TileGrad` takes in `multiples` and aggregates
each repeated tile of `input` into `output`. *)
val tileGrad:
  't t ->
  [ `int32 ] t ->
    't t

(* Finds values and indices of the `k` largest elements for the last dimension. *)
(* If the input is a vector (rank-1), finds the `k` largest entries in the vector
and outputs their values and indices as vectors.  Thus `values[j]` is the
`j`-th largest entry in `input`, and its index is `indices[j]`.

For matrices (resp. higher rank input), computes the top `k` entries in each
row (resp. vector along the last dimension).  Thus,

    values.shape = indices.shape = input.shape[:-1] + [k]

If two elements are equal, the lower-index element appears first.

If `k` varies dynamically, use `TopKV2` below. *)
val topK:
  k:int ->
  ?sorted:bool ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t * [ `int32 ] t

(* Finds values and indices of the `k` largest elements for the last dimension. *)
(* If the input is a vector (rank-1), finds the `k` largest entries in the vector
and outputs their values and indices as vectors.  Thus `values[j]` is the
`j`-th largest entry in `input`, and its index is `indices[j]`.

For matrices (resp. higher rank input), computes the top `k` entries in each
row (resp. vector along the last dimension).  Thus,

    values.shape = indices.shape = input.shape[:-1] + [k]

If two elements are equal, the lower-index element appears first. *)
val topKV2:
  ?sorted:bool ->
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t * [ `int32 ] t

(* Shuffle dimensions of x according to a permutation. *)
(* The output `y` has the same rank as `x`. The shapes of `x` and `y` satisfy:
  `y.shape[i] == x.shape[perm[i]] for i in [0, 1, ..., rank(x) - 1]` *)
val transpose:
  't t ->
  ([< `int32 | `int64 ] as 'tperm) t ->
    't t

(* Returns x / y element-wise for integer types. *)
(* Truncation designates that negative numbers will round fractional quantities
toward zero. I.e. -7 / 5 = 1. This matches C semantics but it is different
than Python semantics. See `FloorDiv` for a division function that matches
Python Semantics.

*NOTE*: `TruncateDiv` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val truncateDiv:
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
  ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t ->
    ([< `float | `double | `uInt8 | `uInt16 | `int32 | `int64 | `complex64 ] as 't) t

(* Returns element-wise remainder of division. This emulates C semantics in that *)
(* the result here is consistent with a truncating divide. E.g. `truncate(x / y) *
y + truncate_mod(x, y) = x`.

*NOTE*: `TruncateMod` supports broadcasting. More about broadcasting
[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html) *)
val truncateMod:
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
  ([< `int32 | `int64 | `float | `double ] as 't) t ->
    ([< `int32 | `int64 | `float | `double ] as 't) t

(* Outputs random values from a truncated normal distribution. *)
(* The generated values follow a normal distribution with mean 0 and standard
deviation 1, except that values whose magnitude is more than 2 standard
deviations from the mean are dropped and re-picked. *)
val truncatedNormal:
  type_dtype:([< `float | `double ] as 'dtype) Type.t ->
  ?seed:int ->
  ?seed2:int ->
  ([< `int32 | `int64 ] as 't) t ->
    ([< `float | `double ] as 'dtype) t

(* Generates labels for candidate sampling with a uniform distribution. *)
(* See explanations of candidate sampling and the data formats at
go/candidate-sampling.

For each batch, this op picks a single set of sampled candidate labels.

The advantages of sampling candidates per-batch are simplicity and the
possibility of efficient dense matrix multiplication. The disadvantage is that
the sampled candidates must be chosen independently of the context and of the
true labels. *)
val uniformCandidateSampler:
  num_true:int ->
  num_sampled:int ->
  unique:bool ->
  range_max:int ->
  ?seed:int ->
  ?seed2:int ->
  [ `int64 ] t ->
    [ `int64 ] t * [ `float ] t * [ `float ] t

(* Finds unique elements in a 1-D tensor. *)
(* This operation returns a tensor `y` containing all of the unique elements of `x`
sorted in the same order that they occur in `x`. This operation also returns a
tensor `idx` the same size as `x` that contains the index of each value of `x`
in the unique output `y`. In other words:

`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`

For example:

```
# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
y, idx = unique(x)
y ==> [1, 2, 4, 7, 8]
idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
``` *)
val unique:
  type_out_idx:([< `int32 | `int64 ] as 'out_idx) Type.t ->
  't t ->
    't t * ([< `int32 | `int64 ] as 'out_idx) t

(* Finds unique elements in a 1-D tensor. *)
(* This operation returns a tensor `y` containing all of the unique elements of `x`
sorted in the same order that they occur in `x`. This operation also returns a
tensor `idx` the same size as `x` that contains the index of each value of `x`
in the unique output `y`. Finally, it returns a third tensor `count` that
contains the count of each element of `y` in `x`. In other words:

`y[idx[i]] = x[i] for i in [0, 1,...,rank(x) - 1]`

For example:

```
# tensor 'x' is [1, 1, 2, 4, 4, 4, 7, 8, 8]
y, idx, count = unique_with_counts(x)
y ==> [1, 2, 4, 7, 8]
idx ==> [0, 0, 1, 2, 2, 2, 3, 4, 4]
count ==> [2, 1, 3, 1, 2]
``` *)
val uniqueWithCounts:
  type_out_idx:([< `int32 | `int64 ] as 'out_idx) Type.t ->
  't t ->
    't t * ([< `int32 | `int64 ] as 'out_idx) t * ([< `int32 | `int64 ] as 'out_idx) t

(* Unpacks a given dimension of a rank-`R` tensor into `num` rank-`(R-1)` tensors. *)
(* Unpacks `num` tensors from `value` by chipping it along the `axis` dimension.
For example, given a tensor of shape `(A, B, C, D)`;

If `axis == 0` then the i'th tensor in `output` is the slice `value[i, :, :, :]`
  and each tensor in `output` will have shape `(B, C, D)`. (Note that the
  dimension unpacked along is gone, unlike `split`).

If `axis == 1` then the i'th tensor in `output` is the slice `value[:, i, :, :]`
  and each tensor in `output` will have shape `(A, C, D)`.
Etc.

This is the opposite of `pack`. *)
val unpack:
  num:int ->
  ?axis:int ->
  't t ->
    't t list

(* Computes the Max along segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

This operator is similar to the [unsorted segment sum operator](../../../api_docs/python/math_ops.md#UnsortedSegmentSum).
Instead of computing the sum over segments, it computes the maximum
such that:

\\(output_i = \max_j data_j\\) where max is over `j` such
that `segment_ids[j] == i`.

If the maximum is empty for a given segment ID `i`, it outputs the smallest possible value for specific numeric type,
 `output[i] = numeric_limits<T>::min()`.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/UnsortedSegmentMax.png' alt>
</div> *)
val unsortedSegmentMax:
  ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  [ `int32 ] t ->
    ([< `float | `double | `int32 | `int64 | `uInt8 | `uInt16 ] as 't) t

(* Computes the sum along segments of a tensor. *)
(* Read @{$math_ops#segmentation$the section on segmentation} for an explanation of
segments.

Computes a tensor such that
`(output[i] = sum_{j...} data[j...]` where the sum is over tuples `j...` such
that `segment_ids[j...] == i`.  Unlike `SegmentSum`, `segment_ids`
need not be sorted and need not cover all values in the full
range of valid values.

If the sum is empty for a given segment ID `i`, `output[i] = 0`.

`num_segments` should equal the number of distinct segment IDs.

<div style='width:70%; margin:auto; margin-bottom:10px; margin-top:20px;'>
<img style='width:100%' src='https://www.tensorflow.org/images/UnsortedSegmentSum.png' alt>
</div> *)
val unsortedSegmentSum:
  ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t ->
  ([< `int32 | `int64 ] as 'tindices) t ->
  [ `int32 ] t ->
    ([< `float | `double | `int64 | `int32 | `uInt8 | `uInt16 | `complex64 ] as 't) t

(* Returns locations of true values in a boolean tensor. *)
(* This operation returns the coordinates of true elements in `input`. The
coordinates are returned in a 2-D tensor where the first dimension (rows)
represents the number of true elements, and the second dimension (columns)
represents the coordinates of the true elements. Keep in mind, the shape of
the output tensor can vary depending on how many true values there are in
`input`. Indices are output in row-major order.

For example:

```
# 'input' tensor is [[True, False]
#                    [True, False]]
# 'input' has two true values, so output has two coordinates.
# 'input' has rank of 2, so coordinates have two indices.
where(input) ==> [[0, 0],
                  [1, 0]]

# `input` tensor is [[[True, False]
#                     [True, False]]
#                    [[False, True]
#                     [False, True]]
#                    [[False, False]
#                     [False, True]]]
# 'input' has 5 true values, so output has 5 coordinates.
# 'input' has rank of 3, so coordinates have three indices.
where(input) ==> [[0, 0, 0],
                  [0, 1, 0],
                  [1, 0, 1],
                  [1, 1, 1],
                  [2, 1, 1]]
``` *)
val where:
  [ `bool ] t ->
    [ `int64 ] t

(* A Reader that outputs the entire contents of a file as a value. *)
(* To use, enqueue filenames in a Queue.  The output of ReaderRead will
be a filename (key) and the contents of that file (value). *)
val wholeFileReader:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `string ] t

(* A Reader that outputs the entire contents of a file as a value. *)
(* To use, enqueue filenames in a Queue.  The output of ReaderRead will
be a filename (key) and the contents of that file (value). *)
val wholeFileReaderV2:
  ?container:string ->
  ?shared_name:string ->
  unit ->
    [ `resource ] t

(* Writes contents to the file at input filename. Creates file and recursively *)
(* creates directory if not existing. *)
val writeFile:
  [ `string ] t ->
  [ `string ] t ->
    unit

(* Returns a tensor of zeros with the same shape and type as x. *)
val zerosLike:
  't t ->
    't t

(* Compute the Hurwitz zeta function \\(\zeta(x, q)\\). *)
(* The Hurwitz zeta function is defined as:


\\(\zeta(x, q) = \sum_{n=0}^{\infty} (q + n)^{-x}\\) *)
val zeta:
  ([< `float | `double ] as 't) t ->
  ([< `float | `double ] as 't) t ->
    ([< `float | `double ] as 't) t

(* Creates a dataset that zips together `input_datasets`. *)
val zipDataset:
  output_types:Type.p list ->
  output_shapes:int list list ->
  [ `variant ] t list ->
    [ `variant ] t

