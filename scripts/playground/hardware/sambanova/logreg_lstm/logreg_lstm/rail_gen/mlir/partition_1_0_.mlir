module @partition_1_0_ attributes {rail.kChipId = 0 : i64, rail.kIsSectionModule = true, rail.kSectionId = 1 : i64}  {
  module @tbuf2u_1_0_401  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 60 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 64 : i64} : () -> ui32
        %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%14, %10) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %15 = "rail.ctrdone"(%14) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%10, %14, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultWrite", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [100], sym_name = "kDefaultWrite"} : () -> ()
      "rail.context"() ( {
        %7 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_401", sym_name = "tbuf2u_1_0_401_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_scalar_in_idx"} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 1 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 32 : i64} : () -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 64 : i64} : () -> ui32
        %15 = "rail.iterator"(%12, %13, %14) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32) -> ()
        %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32) -> i1
        %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1) -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 60 : i64} : () -> ui32
        %20 = "rail.less_than"(%7, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32) -> i1
        %21 = "rail.and"(%18, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> i1
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %15, %22, %21, %24, %25, %26) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %27 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_401", sym_name = "0"} : () -> i1
        "rail.inbuf"(%27, %17) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        %28 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "1", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_401", sym_name = "1"} : () -> i1
        "rail.inbuf"(%28, %17) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        %29 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "2", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_401", sym_name = "2"} : () -> i1
        "rail.inbuf"(%29, %17) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        %30 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "3", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_401", sym_name = "3"} : () -> i1
        "rail.inbuf"(%30, %17) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2497:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_401", kSourceContext = loc("LogregTorchSamba.cpp":2497:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [60, 64], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_401"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2497:0)}
  }
  module @rbuf1u_1_0_402  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 16 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%10) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> ()
        %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%10, %13, %14, %15, %16, %17) {kDim = 1 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kFrontDynamicWriteCtx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kFrontDynamicWriteCtx"} : () -> ()
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 16 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0), kValue = 100 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0), kValue = 1 : i64} : () -> ui32
        %13 = "rail.iterator"(%11, %12, %10) {Par = 1 : i32, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0)} : (ui32, ui32, ui32) -> ui32
        %14 = "rail.ctrdone"(%13) {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0)} : (ui32) -> i1
        %15 = "rail.ctxdone"(%14) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %16 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIsMaster = true, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%13, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %17 = "rail.ctrdone"(%16) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %20 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %22 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%16, %18, %19, %20, %21, %22) {kDim = 1 : i8, kMemOp = false, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kVecDim = 0 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        %23 = "rail.pacing_done_expr"() {kPacingWindow = 1 : i64, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : () -> i1
        %24 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0), kUnitName = "rbuf1u_1_0_402", sym_name = "0"} : () -> i1
        "rail.inbuf"(%24, %23) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : (i1, i1) -> ()
        %25 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0), kUnitName = "rbuf1u_1_0_402", sym_name = "1"} : () -> i1
        "rail.inbuf"(%25, %23) {kInit = 12 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : (i1, i1) -> ()
        %26 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "2", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0), kUnitName = "rbuf1u_1_0_402", sym_name = "2"} : () -> i1
        "rail.inbuf"(%26, %23) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : (i1, i1) -> ()
        %27 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "3", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0), kUnitName = "rbuf1u_1_0_402", sym_name = "3"} : () -> i1
        "rail.inbuf"(%27, %23) {kInit = 12 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultRead1", kPacingWindow = 1 : i64, kRepeatFactorInCtxDone = 100 : i64, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [100], rail.kMetapipeIterDivider = [100], sym_name = "kDefaultRead1"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2508:0)} : () -> ()
    }) {kFIFOMode = false, kName = "rbuf1u_1_0_402", kSourceContext = loc("LogregTorchSamba.cpp":2508:0), params = {kDepth = 1 : i64, kLayout = {alignments = [], base_address = 0 : i64, dim_order = [0], format = 5 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "rbuf1u_1_0_402"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2508:0)}
  }
  module @tbuf2a_1_0_850  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 16 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%10) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> ()
        %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%10, %13, %14, %15, %16, %17) {kDim = 1 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kVecDim = 0 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        %18 = "rail.io.control_out"() {kCtxName = "kDefaultWrite", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2a_1_0_850", sym_name = "1000"} : () -> i1
        "rail.send"(%12, %18) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultWrite", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [100], sym_name = "kDefaultWrite"} : () -> ()
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 1 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 32 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 64 : i64} : () -> ui32
        %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%10, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32) -> ()
        %15 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32) -> i1
        %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (i1) -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%10, %17, %18, %19, %20, %21) {kDim = 1 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kVecDim = -1 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        %22 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kUnitName = "tbuf2a_1_0_850", sym_name = "0"} : () -> i1
        "rail.inbuf"(%22, %16) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (i1, i1) -> ()
        %23 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "1", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kUnitName = "tbuf2a_1_0_850", sym_name = "1"} : () -> i1
        "rail.inbuf"(%23, %16) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (i1, i1) -> ()
        %24 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "2", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kUnitName = "tbuf2a_1_0_850", sym_name = "2"} : () -> i1
        "rail.inbuf"(%24, %16) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (i1, i1) -> ()
        %25 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "3", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kUnitName = "tbuf2a_1_0_850", sym_name = "3"} : () -> i1
        "rail.inbuf"(%25, %16) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (i1, i1) -> ()
        %26 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2a_1_0_850", sym_name = "1000"} : () -> i1
        "rail.send"(%16, %26) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2519:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2a_1_0_850", kSourceContext = loc("LogregTorchSamba.cpp":2519:0), params = {kDepth = 2 : i64, kLayout = {alignments = [], base_address = 0 : i64, dim_order = [0], format = 5 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2a_1_0_850"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2519:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_ attributes {rail.kMetapipeIterCounts = [100]}  {
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2532:0)}
  }
  module @tbuf2u_1_0_406  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 32 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 64 : i64} : () -> ui32
        %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%10, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32) -> ()
        %15 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32) -> i1
        %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (i1) -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%10, %14, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_406", sym_name = "1000"} : () -> i1
        "rail.send"(%16, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"} : () -> ()
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 64 : i64} : () -> ui32
        %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%14, %10) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %15 = "rail.ctrdone"(%14) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%10, %14, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %22 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf2u_1_0_406", sym_name = "0"} : () -> i1
        "rail.inbuf"(%22, %16) {kInit = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1, i1) -> ()
        %23 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf2u_1_0_406", sym_name = "1"} : () -> i1
        "rail.inbuf"(%23, %16) {kInit = 7 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1, i1) -> ()
        %24 = "rail.io.control_out"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_406", sym_name = "1000"} : () -> i1
        "rail.send"(%16, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultRead1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [100], sym_name = "kDefaultRead1"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2543:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_406", kSourceContext = loc("LogregTorchSamba.cpp":2543:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [1, 64], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_406"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2543:0)}
  }
  module @tbuf2u_1_0_409  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 32 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 64 : i64} : () -> ui32
        %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%10, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32) -> ()
        %15 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32) -> i1
        %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (i1) -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%14, %10, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kVecDim = 0 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_409", sym_name = "1000"} : () -> i1
        "rail.send"(%16, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"} : () -> ()
      "rail.context"() ( {
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 128 : i64} : () -> ui32
        %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32) -> i1
        %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1) -> i1
        %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 64 : i64} : () -> ui32
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 64 : i64} : () -> ui32
        %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 32 : i64} : () -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 64 : i64} : () -> ui32
        %20 = "rail.iterator"(%17, %18, %19) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 4 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %24 = "rail.iterator"(%21, %22, %23) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %28 = "rail.iterator"(%25, %26, %27) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %32 = "rail.iterator"(%29, %30, %31) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 5 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %34 = "rail.sub"(%33, %32) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        "rail.iterchain"(%10, %16, %24, %28, %20, %32) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32, ui32, ui32, ui32) -> ()
        %35 = "rail.add"(%24, %28) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        %36 = "rail.add"(%35, %34) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        %37 = "rail.add"(%16, %20) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        %38 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = true} : () -> i1
        %39 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = true} : () -> i1
        %40 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %41 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %42 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %43 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %44 = "rail.less_than"(%36, %43) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> i1
        "rail.addr"(%37, %36, %44, %39, %40, %41, %42) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %45 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kFwdPropB", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_1_0_409", sym_name = "0"} : () -> i1
        "rail.inbuf"(%45, %12) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1, i1) -> ()
        %46 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kFwdPropB", kLanes = [], kPortName = "1", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_1_0_409", sym_name = "1"} : () -> i1
        "rail.inbuf"(%46, %12) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1, i1) -> ()
        %47 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kFwdPropB", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_409", sym_name = "1000"} : () -> i1
        "rail.send"(%12, %47) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kFwdPropB", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kFwdPropB"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2565:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_409", kSourceContext = loc("LogregTorchSamba.cpp":2565:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_409"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2565:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 262144 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 262144 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 262144 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 262144 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 262144 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 262144 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %26 = "rail.pacing_done_expr"(%10) {kPacingWindow = 8192 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %27 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
          "rail.inbuf"(%27, %26) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 8192 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [262144, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4661:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum_1 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %26 = "rail.pacing_done_expr"(%10) {kPacingWindow = 128 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %27 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
          "rail.inbuf"(%27, %26) {kInit = 4 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 128 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4681:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4700:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_1 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4719:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_2 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4738:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_3 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 4096 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4757:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_4 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4776:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_5 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4795:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_6 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4814:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_7 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 8704 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4833:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_8 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4852:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_9 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4871:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_10 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4890:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_11 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4909:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_12 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4928:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_13 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4947:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_14 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4966:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_15 attributes {rail.kMetapipeIterCounts = [100]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 100 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.greater_than_equal"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %24 = "rail.less_than"(%14, %23) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %25 = "rail.and"(%22, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %25, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %32 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%32, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          %33 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_special_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_special_done"} : () -> i1
          %34 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%34, %33) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), rail.kMetapipeIterDivider = [100], sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 99 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 1 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%14, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%14, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %24, %23, %26, %27, %28) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %30 = "rail.ctxdone"(%29) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1) -> i1
          %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 0 : i64} : () -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 32 : i64} : () -> ui32
          %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kValue = 64 : i64} : () -> ui32
          %34 = "rail.iterator"(%31, %32, %33) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32) -> ui32
          "rail.annotate"(%10, %34, %18, %34, %18) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32, ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "r_drain_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "r_drain_done_in"} : () -> i1
          %36 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %37 = "rail.or"(%36, %35) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> i1
          %38 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "w_loop_special_done_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "w_loop_special_done_in"} : () -> i1
          "rail.inbuf"(%38, %37) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          %39 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (ui32) -> i1
          %40 = "rail.io.control_in"() {kCtxName = "r_loop_0_0", kLanes = [], kPortName = "not_last", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), kUnitName = "tbuf", sym_name = "not_last"} : () -> i1
          "rail.inbuf"(%40, %39) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kExplicitMemPort = 2 : i64, kName = "r_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":473:0), rail.kMetapipeIterDivider = [100], sym_name = "r_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%10, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%10, %16, %17, %18, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %23 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "w_done_in_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "w_done_in_0_0"} : () -> i1
          "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          %24 = "rail.io.control_out"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "r_drain_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "r_drain_done"} : () -> i1
          %25 = "rail.ctrdone"(%10) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          "rail.send"(%25, %24) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), rail.kMetapipeIterDivider = [100], sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kImplicitControl = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@w_loop_special_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_special_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@kBackReadCtx::@w_done_in_0_0, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@w_loop_0_0::@w_loop_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@not_last, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    "rail.TConnect"() {kDst = @tbuf::@tbuf::@r_loop_0_0::@r_drain_done_in, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf::@tbuf::@kBackReadCtx::@r_drain_done} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4985:0)}
  }
  %0 = "rail.io.vector_out"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "rbuf1u_1_0_402", kVectorLengthInBytes = 64 : i64, sym_name = "rbuf1u_1_0_402_tbuffer_kDefaultRead1_vector_out_1001"} : () -> vector<16xi32>
  %1 = "rail.io.vector_in"() {kCtxName = "kDefaultWrite", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2a_1_0_850", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2a_1_0_850_tbuffer_kDefaultWrite_vector_in_8"} : () -> vector<16xi32>
  "rail.TConnect"() {kDst = @tbuf2a_1_0_850_tbuffer_kDefaultWrite_vector_in_8, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @rbuf1u_1_0_402_tbuffer_kDefaultRead1_vector_out_1001} : () -> ()
  %2 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_401", sym_name = "tbuf2u_1_0_401_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_scalar_in_idx"} : () -> ui32
  %3 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_401", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_401_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> vector<32xbf16>
  %4 = "rail.io.scalar_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2a_1_0_850", sym_name = "tbuf2a_1_0_850_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd_scalar_out_1001"} : () -> ui32
  %5 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_406", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_406_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8"} : () -> vector<32xbf16>
  %6 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_409", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_409_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_401_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_scalar_in_idx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @"tbuf2a_1_0_850_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd_scalar_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_406_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @"tbuf2u_1_0_401_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_409_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @"tbuf2u_1_0_401_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_401::@tbuf2u_1_0_401::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_406::@tbuf2u_1_0_406::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_401::@tbuf2u_1_0_401::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"1", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_409::@tbuf2u_1_0_409::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_401::@tbuf2u_1_0_401::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"2", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_406::@tbuf2u_1_0_406::@kDefaultRead1::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_401::@tbuf2u_1_0_401::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"3", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_409::@tbuf2u_1_0_409::@"LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kFwdPropB"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @rbuf1u_1_0_402::@rbuf1u_1_0_402::@kDefaultRead1::@"0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2a_1_0_850::@tbuf2a_1_0_850::@kDefaultWrite::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @rbuf1u_1_0_402::@rbuf1u_1_0_402::@kDefaultRead1::@"2", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2a_1_0_850::@tbuf2a_1_0_850::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2a_1_0_850::@tbuf2a_1_0_850::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd"::@"0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_406::@tbuf2u_1_0_406::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2a_1_0_850::@tbuf2a_1_0_850::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd"::@"1", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_409::@tbuf2u_1_0_409::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2a_1_0_850::@tbuf2a_1_0_850::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd"::@"2", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_406::@tbuf2u_1_0_406::@kDefaultRead1::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2a_1_0_850::@tbuf2a_1_0_850::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd"::@"3", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_409::@tbuf2u_1_0_409::@"LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kFwdPropB"::@"1000"} : () -> ()
  module_terminator {kSourceContext = loc(unknown)}
}