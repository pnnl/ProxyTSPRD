module @partition_0_0_ attributes {rail.kChipId = 0 : i64, rail.kIsSectionModule = true, rail.kSectionId = 0 : i64}  {
  module @tbuf2u_0_0_334  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 60 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 64 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7, %11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %11, %14, %15, %16, %17, %18) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultWrite", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [100], sym_name = "kDefaultWrite"} : () -> ()
      "rail.context"() ( {
        %4 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_0_0_334", sym_name = "tbuf2u_0_0_334_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd_scalar_in_idx"} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 1 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 32 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 64 : i64} : () -> ui32
        %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%8, %12) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32) -> ()
        %13 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32) -> i1
        %14 = "rail.ctxdone"(%13) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1) -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 60 : i64} : () -> ui32
        %17 = "rail.less_than"(%4, %16) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32) -> i1
        %18 = "rail.and"(%15, %17) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%4, %12, %19, %18, %21, %22, %23) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %24 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_0_0_334", sym_name = "0"} : () -> i1
        "rail.inbuf"(%24, %14) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        %25 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd", kLanes = [], kPortName = "1", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_0_0_334", sym_name = "1"} : () -> i1
        "rail.inbuf"(%25, %14) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":923:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_0_0_334", kSourceContext = loc("LogregTorchSamba.cpp":923:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [60, 64], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_0_0_334"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":923:0)}
  }
  module @rbuf1u_0_0_335  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 16 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> ()
        %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %10, %11, %12, %13, %14) {kDim = 1 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kFrontDynamicWriteCtx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kFrontDynamicWriteCtx"} : () -> ()
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0), kValue = 100 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.iterator"(%8, %9, %7) {Par = 1 : i32, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0)} : (ui32, ui32, ui32) -> ui32
        %11 = "rail.ctrdone"(%10) {kSourceContext = loc("software/compiler/rail/src/lib/util/ControlUtil.cpp":313:0)} : (ui32) -> i1
        %12 = "rail.ctxdone"(%11) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (i1) -> i1
        %13 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIsMaster = true, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 32 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 64 : i64} : () -> ui32
        %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%10, %13, %17) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32, ui32) -> ()
        %18 = "rail.ctrdone"(%13) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32) -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = true} : () -> i1
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = true} : () -> i1
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%13, %19, %20, %21, %22, %23) {kDim = 1 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kVecDim = -1 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        %24 = "rail.pacing_done_expr"() {kPacingWindow = 2 : i64, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : () -> i1
        %25 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0), kUnitName = "rbuf1u_0_0_335", sym_name = "0"} : () -> i1
        "rail.inbuf"(%25, %24) {kInit = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : (i1, i1) -> ()
        %26 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0), kUnitName = "rbuf1u_0_0_335", sym_name = "1"} : () -> i1
        "rail.inbuf"(%26, %24) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":362:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd", kPacingWindow = 2 : i64, kRepeatFactorInCtxDone = 100 : i64, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), rail.kMetapipeIterCounts = [100], rail.kMetapipeIterDivider = [100], sym_name = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":934:0)} : () -> ()
    }) {kFIFOMode = false, kName = "rbuf1u_0_0_335", kSourceContext = loc("LogregTorchSamba.cpp":934:0), params = {kDepth = 1 : i64, kLayout = {alignments = [], base_address = 0 : i64, dim_order = [0], format = 5 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "rbuf1u_0_0_335"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":934:0)}
  }
  module @LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect attributes {rail.kMetapipeIterCounts = [100]}  {
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":947:0)}
  }
  module @tbuf2u_0_0_342  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 64 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7, %11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%7) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%11, %7, %14, %15, %16, %17, %18) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kVecDim = 0 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %19 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_0_0_342", sym_name = "1000"} : () -> i1
        "rail.send"(%13, %19) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr"} : () -> ()
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 128 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32) -> i1
        %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1) -> i1
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 64 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 64 : i64} : () -> ui32
        %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 32 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 64 : i64} : () -> ui32
        %17 = "rail.iterator"(%14, %15, %16) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 4 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %21 = "rail.iterator"(%18, %19, %20) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %25 = "rail.iterator"(%22, %23, %24) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %29 = "rail.iterator"(%26, %27, %28) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 5 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32) -> ui32
        %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %31 = "rail.sub"(%30, %29) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        "rail.iterchain"(%7, %13, %21, %25, %17, %29) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, ui32, ui32, ui32, ui32) -> ()
        %32 = "rail.add"(%21, %25) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        %33 = "rail.add"(%32, %31) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        %34 = "rail.add"(%13, %17) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> ui32
        %35 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = true} : () -> i1
        %36 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = true} : () -> i1
        %37 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %38 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %39 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 0 : i64} : () -> ui32
        %40 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kValue = 1 : i64} : () -> ui32
        %41 = "rail.less_than"(%33, %40) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32) -> i1
        "rail.addr"(%34, %33, %41, %36, %37, %38, %39) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %42 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__dense_layer__linear@kFwdPropB", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_0_0_342", sym_name = "0"} : () -> i1
        "rail.inbuf"(%42, %9) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1, i1) -> ()
        %43 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__dense_layer__linear@kFwdPropB", kLanes = [], kPortName = "1", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_0_0_342", sym_name = "1"} : () -> i1
        "rail.inbuf"(%43, %9) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1, i1) -> ()
        %44 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__dense_layer__linear@kFwdPropB", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_0_0_342", sym_name = "1000"} : () -> i1
        "rail.send"(%9, %44) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__dense_layer__linear@kFwdPropB", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), rail.kMetapipeIterCounts = [100], sym_name = "LogregTorchSamba.partition_0_0_.ptconvlstm__dense_layer__linear@kFwdPropB"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":958:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_0_0_342", kSourceContext = loc("LogregTorchSamba.cpp":958:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_0_0_342"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":958:0)}
  }
  %0 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_0_0_334", sym_name = "tbuf2u_0_0_334_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd_scalar_in_idx"} : () -> ui32
  %1 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_0_0_334", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_0_0_334_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd_vector_out_1001"} : () -> vector<32xbf16>
  %2 = "rail.io.scalar_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "rbuf1u_0_0_335", sym_name = "rbuf1u_0_0_335_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd_scalar_out_1001"} : () -> ui32
  %3 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kUnitName = "tbuf2u_0_0_342", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_0_0_342_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @"tbuf2u_0_0_334_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd_scalar_in_idx", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kSrc = @"rbuf1u_0_0_335_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd_scalar_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @"tbuf2u_0_0_342_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr_vector_in_8", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kSrc = @"tbuf2u_0_0_334_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_0_0_334::@tbuf2u_0_0_334::@"LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd"::@"0", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kSrc = @tbuf2u_0_0_342::@tbuf2u_0_0_342::@"LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_0_0_334::@tbuf2u_0_0_334::@"LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kLutRd"::@"1", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kSrc = @tbuf2u_0_0_342::@tbuf2u_0_0_342::@"LogregTorchSamba.partition_0_0_.ptconvlstm__dense_layer__linear@kFwdPropB"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @rbuf1u_0_0_335::@rbuf1u_0_0_335::@"LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd"::@"0", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kSrc = @tbuf2u_0_0_342::@tbuf2u_0_0_342::@"LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @rbuf1u_0_0_335::@rbuf1u_0_0_335::@"LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kIndexRd"::@"1", kSourceContext = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp":2012:0), kSrc = @tbuf2u_0_0_342::@tbuf2u_0_0_342::@"LogregTorchSamba.partition_0_0_.ptconvlstm__dense_layer__linear@kFwdPropB"::@"1000"} : () -> ()
  module_terminator {kSourceContext = loc(unknown)}
}