module @program attributes {arc.AIRMappingDecisionIsSpatial = false, arc.kAIRAddnOpt = true, arc.kAIRBufferBeforeConcatAddn = false, arc.kAIRBufferNonRedundancy = false, arc.kAIRDDRBoundSections = [], arc.kAIRDPTilingOptimization = false, arc.kAIRDisableConcatStoreOpt = false, arc.kAIRDisableOptimizeRereadBuffer = false, arc.kAIRMappingDecisionGlobalNumBatches = 1 : i64, arc.kAIRMappingDecisionSectionDRAMTransferSize = [17272, 17272, 62720], arc.kAIRMappingDecisionSectionDRAMTransferTime = [1.6085803508758545E-4, 1.6085803508758545E-4, 5.8412551879882813E-4], arc.kAIRMappingDecisionSectionLatencies = [3.5682500310940668E-5, 3.5993667552247643E-5, 3.5584125726018101E-5], arc.kAIRMappingDecisionSectionNames = ["$FWD", "$BCKWD", "$OPT"], arc.kAIRMappingDecisionSectionPCUs = [3.000000e+00, 7.000000e+00, 1.000000e+00], arc.kAIRMappingDecisionSectionPMUs = [[3, 4, 4, 2, 2, 2, 1], [3, 4, 8, 1, 1, 2, 0], [0, 4, 0, 6, 0, 0, 0]], arc.kAIRMappingDecisionSectionResourceScales = [1.1000000238418579, 1.2000000476837158, 0.89999997615814208], arc.kAIRMappingDecisionSectionTypes = ["Forward", "Backward", "Optimizer"], arc.kAIRMappingDecisionSectionUniqueNames = ["logreg__lin_layer__linear_as_initial", "logreg__criterion__crossentropyloss_bwd_loss_as_initial", "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_as_initial"], arc.kAIRMetaPipeWithOneIterationRemoval = false, arc.kAIRTransposeMatMulTransformation = false, arc.kAppName = "logreg_torch_samba", arc.kArchMajor = 1 : i64, arc.kArchMinor = 0 : i64, arc.kConcisePrinting = false, arc.kDataParallelFactor = 1 : i64, arc.kDebugMode = false, arc.kEliminateBufferTimeout = 100 : i64, arc.kEnableAutoGrouping = true, arc.kExperimentalOptimization = true, arc.kExperimentalRAILCrossEntropy = false, arc.kExperimentalRAILCrossEntropyGrad = false, arc.kGenerateReference = false, arc.kGenerateTensorboard = false, arc.kHasGraphData = false, arc.kLayoutTimeout = 1000 : i64, arc.kLegalizeDataflow = true, arc.kLegalizeSamples = false, arc.kLowered = true, arc.kMacAutogen = true, arc.kMaximumGroupLatencyFactor = 5.000000e-02 : f32, arc.kMoveViews = false, arc.kOutputFolder = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/models", arc.kOverrideMaxFanout = 0 : i64, arc.kPefMetadataacc_test = "False", arc.kPefMetadataarc_debug_mode = "False", arc.kPefMetadatabatch_size = "1", arc.kPefMetadatacompiled_stats_json = "None", arc.kPefMetadatacompiler_configs_file = "", arc.kPefMetadatadata_folder = "mnist_data", arc.kPefMetadatadata_parallel = "False", arc.kPefMetadatadata_parallel_mode = "normal", arc.kPefMetadatadebug = "False", arc.kPefMetadatadev_mode = "False", arc.kPefMetadatadisable_mac_tiling = "False", arc.kPefMetadatadisable_retry_lower_visible_resources = "False", arc.kPefMetadatadistlearn_config = "", arc.kPefMetadatadump_accuracy_debug_info = "False", arc.kPefMetadataenable_conv2d_conversion = "False", arc.kPefMetadataenable_conv_tiling = "False", arc.kPefMetadataenable_hd_retry_lower_visible_resources = "False", arc.kPefMetadataforce_node_proximity = "False", arc.kPefMetadatafp32_params = "False", arc.kPefMetadatafuse_fwd_bwd = "False", arc.kPefMetadatagen_tensorboard = "False", arc.kPefMetadatagrad_accumulation_steps = "1", arc.kPefMetadatahost_fifo = "False", arc.kPefMetadatahypersection_arc = "False", arc.kPefMetadatainclude_read_stall_cycles = "False", arc.kPefMetadatainference = "False", arc.kPefMetadatajson = "None", arc.kPefMetadatalatency_budget_bwd = "None", arc.kPefMetadatalatency_budget_fwd = "None", arc.kPefMetadatalisten_for_input = "False", arc.kPefMetadatalocal_rank = "-1", arc.kPefMetadatalog_dir = "None", arc.kPefMetadatalog_level = "warning", arc.kPefMetadatalr = "0.0015", arc.kPefMetadatamac_human_decision = "None", arc.kPefMetadatamac_only = "False", arc.kPefMetadatamac_v1 = "False", arc.kPefMetadatamapping = "section", arc.kPefMetadatamax_expected_mac_latency = "-1.0", arc.kPefMetadatamax_mac_loop_attempt = "35", arc.kPefMetadatametapipe_disable = "False", arc.kPefMetadatamicrobatch_size = "None", arc.kPefMetadatamin_duration = "0.0", arc.kPefMetadatamlir_file_name = "None", arc.kPefMetadatamock_inference = "False", arc.kPefMetadatamodel = "LogReg(\0A  (lin_layer): Linear(in_features=784, out_features=10, bias=False)\0A  (criterion): CrossEntropyLoss()\0A)", arc.kPefMetadatamodel_parallel = "False", arc.kPefMetadatamomentum = "0.0", arc.kPefMetadatan_chips = "1", arc.kPefMetadatandtest = "False", arc.kPefMetadatandtest_mp = "False", arc.kPefMetadatanum_classes = "10", arc.kPefMetadatanum_epochs = "1", arc.kPefMetadatanum_features = "784", arc.kPefMetadatanum_iterations = "100", arc.kPefMetadatanum_sections = "None", arc.kPefMetadatanum_spatial_batches = "1", arc.kPefMetadatanum_tiles = "4", arc.kPefMetadatapef = "None", arc.kPefMetadataplot = "None", arc.kPefMetadatarecompute_ratio = "-1.0", arc.kPefMetadatareduce_on_rdu = "False", arc.kPefMetadataresources_scaling_factors = "['-1.0', '-1.0', '-1.0', '-1.0']", arc.kPefMetadatarun_analysis_pass = "False", arc.kPefMetadatarun_graph_only = "False", arc.kPefMetadatasamba_plot = "False", arc.kPefMetadatasamba_version = "1.11.2", arc.kPefMetadatasection_cut_beam_search = "['2', '2']", arc.kPefMetadatasection_cut_sort_order = "3", arc.kPefMetadatasingle_opt_sec = "False", arc.kPefMetadataskip_instrumentation_on_read0 = "False", arc.kPefMetadataskip_instrumentation_on_read1 = "False", arc.kPefMetadatastage_instrumentation = "none", "arc.kPefMetadatastop_mac_c++" = "False", arc.kPefMetadatatensor_parallel = "none", arc.kPefMetadatatile_orientation = "auto", arc.kPefMetadatavalidate_mac_resource_prediction = "False", arc.kPefMetadataverbose = "0", arc.kPefMetadatavisualize = "False", arc.kPefMetadataweight_decay = "0.0003", arc.kPefMetadataweight_norm = "False", arc.kPefMetadataworld_size = "1", arc.kPefMetadatayaml_config = "None", arc.kPefName = "logreg", arc.kPlasmaAStarConnect = true, arc.kPlasmaIncludeReadStallCycles = false, arc.kPlasmaSkipInstrumentationOnRead0 = false, arc.kPlasmaSkipInstrumentationOnRead1 = false, arc.kPlasmaStageInstrumentation = "none", arc.kPrintSrcs = [], arc.kResourceAwareBuffers = false, arc.kSkipBufferBandwidthWeight = 1 : i64, arc.kSkipBufferMaxDepth = 4096 : i64, arc.kSkipBufferMaxFanin = 8 : i64, arc.kSkipBufferPmuWeight = 1 : i64, arc.kSplitSkipBuffer = true, arc.kTileSize = 5 : i64, arc.kUniqueIdCounter = 15 : i64, arc.kVerbose = false, mac.kMacConvTiling = false, mac.kMacDisableAutoSpatialSplit = true, mac.kMacDisableRetryLowerScalingFactor = false, mac.kMacEnableHDRetryLowerVisibleResources = false, mac.kMacEnableHyperSection = 0 : i64, mac.kMacExpectedMaxLatency = -1.000000e+00 : f64, mac.kMacForceNodeProximity = false, mac.kMacFuseFwdBwd = false, mac.kMacInference = false, mac.kMacIsIterativeMapping = false, mac.kMacModelParallel = false, mac.kMacNumChips = 1 : i64, mac.kMacNumTiles = 4 : i64, mac.kMacOnlyCompileMac = false, mac.kMacPlot = false, mac.kMacResourceSetupTraceScaleBwd = 1.200000e+00 : f64, mac.kMacResourceSetupTraceScaleFwd = 1.100000e+00 : f64, mac.kMacResourceSetupTraceScaleGradnorm = 9.000000e-01 : f64, mac.kMacResourceSetupTraceScaleOpt = 9.000000e-01 : f64, mac.kMacSectionCutBeamSearch = [2, 2], mac.kMacSectionCutSortOrder = 3 : i64, mac.kMacSingleOptSec = false, mac.kMacUseHostFIFO = false}  {
  module @templates  {
    module_terminator {kSourceContext = "Unknown File:"}
  }
  module @sections  {
    %0 = "air.Tensor"() {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kWeightGroupID = -1 : i64, distribution = 7 : i32, distribution_gain = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = "", kInputsNamedDims = [], kIsBubbledRecomputeNode = false, kIsCached = false, kIsWeight = true, kMacConsumerNames = [["logreg__lin_layer__linear", "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt"]], kMacID = "logreg__lin_layer__weight", kName = "logreg__lin_layer__weight", kNodeCategory = 5 : i64, kOutputsNamedDims = [["logreg__lin_layer__weight_dim_0", "logreg__lin_layer__weight_dim_1"]], kSourceContext = "software/compiler/mac/src/pybind/py_air.cpp:1503:0", kToDeviceTransform = "", kUniqueId = 0 : i64} : () -> tensor<10x784xbf16>
    %1 = "air.Tensor"() {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kIsHostFifo = false, air.kWeightGroupID = -1 : i64, distribution = 6 : i32, distribution_max = 1.000000e-01 : f64, distribution_min = -1.000000e-01 : f64, kCompression = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = ".transpose(-1,-2)", kHostMemory = 1 : i64, kInputsNamedDims = [], kIsBubbledRecomputeNode = false, kIsRngSeed = false, kIsWeight = false, kMacConsumerNames = [["logreg__lin_layer__linear", "logreg__lin_layer__linear_bwd_weight"]], kMacID = "image", kName = "image", kNodeCategory = 5 : i64, kOutputsNamedDims = [["logreg__lin_layer__weight_dim_1", "B"]], kSourceContext = "UnknownFileName:0:0", kSparsity = -1.000000e+00 : f64, kToDeviceTransform = ".transpose(-1,-2)", kUniqueId = 1 : i64} : () -> tensor<784x1xbf16>
    %2 = "air.Linear"(%0, %1) {air.kBoxLayout = true, air.kBoxPerPartition = true, air.kColParFactor = 1 : i64, air.kEstimateToleranceLatency = 1.000000e-01 : f64, air.kEstimateToleranceUtilization = 1.000000e-01 : f64, air.kLatencyBudget = 862 : i64, air.kNPCUs = 1 : i64, air.kNPMUsBw = 1 : i64, air.kNPartition = 1 : i64, air.kRowParFactor = 1 : i64, air.kSectionID = 0 : i64, air.kWeightGroupID = -1 : i64, kAggressiveColPar = true, kChipID = 0 : i64, kDoRecompute = false, kHasBias = false, kInputsNamedDims = [["logreg__lin_layer__weight_dim_0", "logreg__lin_layer__weight_dim_1"], ["logreg__lin_layer__weight_dim_1", "B"]], kIsBubbledRecomputeNode = false, kLatency = 8.620000e+02 : f64, kLatencyInCycles = 862 : i64, kMacConsumerNames = [["logreg__lin_layer__linear_t_output0"]], kMacID = "logreg__lin_layer__linear", kNPMUs = 2 : i64, kNPMUsCapacity = 1 : i64, kName = "logreg__lin_layer__linear", kNodeCategory = 1 : i64, kOutputsNamedDims = [["logreg__lin_layer__weight_dim_0", "B"]], kSourceContext = "/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0", kStageLatency = 8.620000e+02 : f64, kUniqueId = 2 : i64} : (tensor<10x784xbf16>, tensor<784x1xbf16>) -> tensor<10x1xbf16>
    %3 = "air.Tensor"() {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kFwdNodeID = "logreg__criterion__crossentropyloss__outputs__0", air.kIsHostFifo = false, air.kWeightGroupID = -1 : i64, distribution = 6 : i32, distribution_max = 1.000000e+00 : f64, distribution_min = 1.000000e+00 : f64, kCompression = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = ".mean()", kHostMemory = 0 : i64, kInputsNamedDims = [], kIsBubbledRecomputeNode = false, kIsRngSeed = false, kIsWeight = false, kMacConsumerNames = [["logreg__criterion__crossentropyloss_bwd_loss"]], kMacID = "logreg__criterion__crossentropyloss__outputs__0__grad", kName = "logreg__criterion__crossentropyloss__outputs__0__grad", kNodeCategory = 5 : i64, kOutputsNamedDims = [["B"]], kSourceContext = "UnknownFileName:0:0", kSparsity = -1.000000e+00 : f64, kTensorType = 1 : i64, kToDeviceTransform = "", kUniqueId = 3 : i64} : () -> tensor<1xbf16>
    %4 = "air.Tensor"() {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kIsHostFifo = false, air.kWeightGroupID = -1 : i64, distribution = 6 : i32, distribution_max = 1.000000e-01 : f64, distribution_min = -1.000000e-01 : f64, kCompression = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = "", kHostMemory = 1 : i64, kInputsNamedDims = [], kIsBubbledRecomputeNode = false, kIsRngSeed = false, kIsWeight = false, kMacConsumerNames = [["logreg__criterion__crossentropyloss", "logreg__criterion__crossentropyloss_bwd_loss"]], kMacID = "label", kName = "label", kNodeCategory = 5 : i64, kOutputsNamedDims = [["B"]], kSourceContext = "UnknownFileName:0:0", kSparsity = -1.000000e+00 : f64, kToDeviceTransform = ".short()", kUniqueId = 4 : i64} : () -> tensor<1xi16>
    %5 = "air.Transpose"(%2) {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kLatencyBudget = 862 : i64, air.kNPCUs = 1 : i64, air.kNPMUsBw = 0 : i64, air.kParFactor = 1 : i64, air.kSectionID = 0 : i64, air.kWeightGroupID = -1 : i64, kChipID = 0 : i64, kDoRecompute = false, kInputsNamedDims = [["logreg__lin_layer__weight_dim_0", "B"]], kIsBubbledRecomputeNode = false, kLatency = 0.000000e+00 : f64, kLatencyInCycles = 0 : i64, kMacConsumerNames = [["logreg__criterion__crossentropyloss", "logreg__lin_layer__linear__outputs__0", "logreg__criterion__crossentropyloss_bwd_loss"]], kMacID = "logreg__lin_layer__linear_t_output0", kNPMUs = 2 : i64, kNPMUsCapacity = 1 : i64, kName = "logreg__lin_layer__linear_t_output0", kNodeCategory = 1 : i64, kOutputsNamedDims = [["B", "logreg__lin_layer__weight_dim_0"]], kSourceContext = "/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0", kStageLatency = 0.000000e+00 : f64, kUniqueId = 5 : i64} : (tensor<10x1xbf16>) -> tensor<1x10xbf16>
    %6 = "air.Tensor"() {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kFwdNodeID = "logreg__lin_layer__weight", air.kWeightGroupID = -1 : i64, distribution = 7 : i32, distribution_gain = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = "", kInputsNamedDims = [], kIsBubbledRecomputeNode = false, kIsCached = false, kIsWeight = true, kMacConsumerNames = [["logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt"]], kMacID = "logreg__lin_layer__weight__sgd0__momentum", kName = "logreg__lin_layer__weight__sgd0__momentum", kNodeCategory = 5 : i64, kOutputsNamedDims = [["logreg__lin_layer__weight_dim_0", "logreg__lin_layer__weight_dim_1"]], kSourceContext = "software/compiler/mac/src/pybind/py_air.cpp:1503:0", kToDeviceTransform = "", kUniqueId = 8 : i64} : () -> tensor<10x784xbf16>
    %7 = "air.CrossEntropy"(%5, %4) {air.kCrossEntropyTemplateDecision = 7 : i64, air.kEstimateToleranceLatency = 1.000000e-01 : f64, air.kEstimateToleranceUtilization = 1.000000e-01 : f64, air.kLatencyBudget = 862 : i64, air.kNPCUs = 1 : i64, air.kNPMUsBw = 2 : i64, air.kParFactor = 1 : i64, air.kSectionID = 0 : i64, air.kWeightGroupID = -1 : i64, kChipID = 0 : i64, kDoRecompute = false, kInputsNamedDims = [["B", "logreg__criterion__crossentropyloss_num_classes"], ["B"]], kIsBubbledRecomputeNode = false, kLatency = 4.820000e+02 : f64, kLatencyInCycles = 482 : i64, kMacConsumerNames = [["logreg__criterion__crossentropyloss__outputs__0"]], kMacID = "logreg__criterion__crossentropyloss", kNPMUs = 1 : i64, kNPMUsCapacity = 1 : i64, kName = "logreg__criterion__crossentropyloss", kNodeCategory = 1 : i64, kOutputsNamedDims = [["B"]], kReductionMode = 1 : i64, kSourceContext = "/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0", kStageLatency = 4.820000e+02 : f64, kUniqueId = 10 : i64, kUseExtraPCU = false} : (tensor<1x10xbf16>, tensor<1xi16>) -> tensor<1xbf16>
    %8 = "air.CrossEntropyGrad"(%5, %4, %3) {air.kCrossEntropyTemplateDecision = 8 : i64, air.kEstimateToleranceLatency = 1.000000e-01 : f64, air.kEstimateToleranceUtilization = 1.000000e-01 : f64, air.kFwdNodeID = "logreg__criterion__crossentropyloss", air.kLatencyBudget = 1255 : i64, air.kNPCUs = 1 : i64, air.kNPMUsBw = 1 : i64, air.kParFactor = 1 : i64, air.kSectionID = 1 : i64, air.kWeightGroupID = -1 : i64, kChipID = 0 : i64, kDoRecompute = false, kHasLossInput = true, kInputsNamedDims = [["B", "logreg__criterion__crossentropyloss_num_classes"], ["B"], ["B"]], kIsBubbledRecomputeNode = false, kLatency = 1.140000e+02 : f64, kLatencyInCycles = 114 : i64, kMacConsumerNames = [["logreg__lin_layer__linear_t_output0_bwd"]], kMacID = "logreg__criterion__crossentropyloss_bwd_loss", kNPMUs = 1 : i64, kNPMUsCapacity = 1 : i64, kName = "logreg__criterion__crossentropyloss_bwd_loss", kNodeCategory = 2 : i64, kOutputsNamedDims = [["B", "logreg__criterion__crossentropyloss_num_classes"]], kSourceContext = "/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0", kStageLatency = 1.140000e+02 : f64, kUniqueId = 6 : i64} : (tensor<1x10xbf16>, tensor<1xi16>, tensor<1xbf16>) -> tensor<1x10xbf16>
    %9 = "air.Transpose"(%8) {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kFwdNodeID = "logreg__lin_layer__linear_t_output0", air.kLatencyBudget = 1255 : i64, air.kNPCUs = 1 : i64, air.kNPMUsBw = 0 : i64, air.kParFactor = 1 : i64, air.kSectionID = 1 : i64, air.kWeightGroupID = -1 : i64, kChipID = 0 : i64, kDoRecompute = false, kInputsNamedDims = [["B", "logreg__lin_layer__weight_dim_0"]], kIsBubbledRecomputeNode = false, kLatency = 0.000000e+00 : f64, kLatencyInCycles = 0 : i64, kMacConsumerNames = [["logreg__lin_layer__linear_bwd_weight"]], kMacID = "logreg__lin_layer__linear_t_output0_bwd", kNPMUs = 2 : i64, kNPMUsCapacity = 1 : i64, kName = "logreg__lin_layer__linear_t_output0_bwd", kNodeCategory = 2 : i64, kOutputsNamedDims = [["logreg__lin_layer__weight_dim_0", "B"]], kSourceContext = "/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0", kStageLatency = 0.000000e+00 : f64, kUniqueId = 7 : i64} : (tensor<1x10xbf16>) -> tensor<10x1xbf16>
    %10 = "air.LinearWeightGrad"(%1, %9) {air.kBoxLayout = true, air.kColParFactor = 4 : i64, air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kFwdNodeID = "logreg__lin_layer__linear", air.kLatencyBudget = 1255 : i64, air.kNPCUs = 5 : i64, air.kNPMUsBw = 2 : i64, air.kNPartition = 1 : i64, air.kRowParFactor = 1 : i64, air.kSectionID = 1 : i64, air.kWeightGroupID = -1 : i64, kAggressiveColPar = true, kChipID = 0 : i64, kDoRecompute = false, kEnableLoopBuffer = false, kFwdNodeInputNumBytesAfterSplits = 15680 : i64, kInputsNamedDims = [["logreg__lin_layer__weight_dim_1", "B"], ["logreg__lin_layer__weight_dim_0", "B"]], kIntegratedBias = false, kIsBubbledRecomputeNode = false, kIsWeightTying = false, kLatency = 1.255000e+03 : f64, kLatencyInCycles = 1255 : i64, kMacConsumerNames = [["logreg__lin_layer__weight__grad", "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt"]], kMacID = "logreg__lin_layer__linear_bwd_weight", kNPMUs = 1 : i64, kNPMUsCapacity = 1 : i64, kName = "logreg__lin_layer__linear_bwd_weight", kNoBias = true, kNodeCategory = 2 : i64, kOutputsNamedDims = [["logreg__lin_layer__weight_dim_0", "logreg__lin_layer__weight_dim_1"]], kSourceContext = "/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0", kStageLatency = 1.255000e+03 : f64, kTransposeWeight = false, kUniqueId = 9 : i64} : (tensor<784x1xbf16>, tensor<10x1xbf16>) -> tensor<10x784xbf16>
    %11 = "air.SGD"(%0, %6, %10) {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kFwdNodeID = "logreg__lin_layer__weight", air.kLatencyBudget = 0 : i64, air.kNPCUs = 1 : i64, air.kNPMUsBw = 0 : i64, air.kNPartition = 1 : i64, air.kParFactor = 1 : i64, air.kSectionID = 2 : i64, air.kWeightGroupID = -1 : i64, kArgInGroup = "", kChipID = 0 : i64, kDecayRate = 3.0000001424923539E-4 : f64, kDoRecompute = false, kInputsNamedDims = [["logreg__lin_layer__weight_dim_0__opt", "logreg__lin_layer__weight_dim_1__opt"], ["logreg__lin_layer__weight_dim_0__opt", "logreg__lin_layer__weight_dim_1__opt"], ["logreg__lin_layer__weight_dim_0__opt", "logreg__lin_layer__weight_dim_1__opt"]], kIsBubbledRecomputeNode = false, kLatency = 0.000000e+00 : f64, kLatencyInCycles = 0 : i64, kLrRate = 0.001500000013038516 : f64, kMacConsumerNames = [], kMacID = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt", kMixP = false, kMomentumRate = 0.000000e+00 : f64, kNPMUs = 0 : i64, kNPMUsCapacity = 0 : i64, kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt", kNodeCategory = 4 : i64, kOutputsNamedDims = [["logreg__lin_layer__weight_dim_0__opt", "logreg__lin_layer__weight_dim_1__opt"]], kSourceContext = "logreg__lin_layer__weight:0:0", kStageLatency = 0.000000e+00 : f64, kUniqueId = 11 : i64} : (tensor<10x784xbf16>, tensor<10x784xbf16>, tensor<10x784xbf16>) -> tensor<10x784xbf16>
    "air.Output"(%10) {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kFwdNodeID = "logreg__lin_layer__weight", air.kIsHostFifo = false, kCompression = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = "", kHostMemory = 0 : i64, kInputsNamedDims = [["logreg__lin_layer__weight_dim_0", "logreg__lin_layer__weight_dim_1"]], kIsBubbledRecomputeNode = false, kIsInputBwd = false, kIsMask = false, kMacConsumerNames = [], kMacID = "logreg__lin_layer__weight__grad", kName = "logreg__lin_layer__weight__grad", kNeedsDataParallelReduce = false, kNodeCategory = 5 : i64, kOutputType = 1 : i64, kOutputsNamedDims = [], kSourceContext = "software/compiler/mac/src/pybind/py_air.cpp:1677:0", kSparsity = -1.000000e+00 : f64, kToDeviceTransform = "", kUniqueId = 12 : i64, kZeroFillDram = false} : (tensor<10x784xbf16>) -> ()
    "air.Output"(%7) {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kIsHostFifo = false, kCompression = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = ".mean()", kHostMemory = 2 : i64, kInputsNamedDims = [["B"]], kIsBubbledRecomputeNode = false, kIsInputBwd = false, kIsMask = false, kMacConsumerNames = [], kMacID = "logreg__criterion__crossentropyloss__outputs__0", kMemoryType = 2 : i64, kName = "logreg__criterion__crossentropyloss__outputs__0", kNeedsDataParallelReduce = false, kNodeCategory = 5 : i64, kOutputsNamedDims = [], kSourceContext = "software/compiler/mac/src/pybind/py_air.cpp:1677:0", kSparsity = -1.000000e+00 : f64, kToDeviceTransform = "", kUniqueId = 13 : i64} : (tensor<1xbf16>) -> ()
    "air.Output"(%5) {air.kEstimateToleranceLatency = -1.000000e+00 : f64, air.kEstimateToleranceUtilization = -1.000000e+00 : f64, air.kIsHostFifo = false, kCompression = 1.000000e+00 : f64, kDoRecompute = false, kFromDeviceTransform = "", kHostMemory = 2 : i64, kInputsNamedDims = [["B", "logreg__lin_layer__weight_dim_0"]], kIsBubbledRecomputeNode = false, kIsInputBwd = false, kIsMask = false, kMacConsumerNames = [], kMacID = "logreg__lin_layer__linear__outputs__0", kMemoryType = 2 : i64, kName = "logreg__lin_layer__linear__outputs__0", kNeedsDataParallelReduce = false, kNodeCategory = 5 : i64, kOutputsNamedDims = [], kSourceContext = "software/compiler/mac/src/pybind/py_air.cpp:1677:0", kSparsity = -1.000000e+00 : f64, kToDeviceTransform = "", kUniqueId = 14 : i64} : (tensor<1x10xbf16>) -> ()
    module_terminator {kSourceContext = "Unknown File:"}
  }
  module @schedule  {
    module_terminator {kSourceContext = "Unknown File:"}
  }
  module @rnn_function  {
    module_terminator {kSourceContext = "Unknown File:"}
  }
  module_terminator {kSourceContext = "Unknown File:"}
}
