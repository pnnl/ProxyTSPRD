module @partition_1_0_ attributes {rail.kChipId = 0 : i64, rail.kIsSectionModule = true, rail.kSectionId = 1 : i64}  {
  module @tbuf2u_1_0_245  {
    "rail.buffer"() ( {
      "rail.memory_context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 60 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 136 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7, %11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %11, %16, %17, %14, %15, %18) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kFrontDynamicWriteCtx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "kFrontDynamicWriteCtx"} : () -> ()
      "rail.memory_context"() ( {
        %4 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kUnitName = "tbuf2u_1_0_245", sym_name = "tbuf2u_1_0_245_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd_scalar_in_idx"} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 3 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 32 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 136 : i64} : () -> ui32
        %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%8, %12) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (ui32, ui32) -> ()
        %13 = "rail.ctrdone"(%8) {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (ui32) -> i1
        %14 = "rail.ctxdone"(%13) {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (i1) -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 60 : i64} : () -> ui32
        %17 = "rail.less_than"(%4, %16) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (ui32, ui32) -> i1
        %18 = "rail.and"(%15, %17) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (i1, i1) -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = true} : () -> i1
        %22 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%4, %12, %21, %18, %19, %20, %22) {kDim = 2 : i8, kMemOp = false, kPredicateType = "kPredicateForceZero", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %23 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kUnitName = "tbuf2u_1_0_245", sym_name = "0"} : () -> i1
        "rail.inbuf"(%23, %14) {kInit = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (i1, i1) -> ()
        %24 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kUnitName = "tbuf2u_1_0_245", sym_name = "1"} : () -> i1
        "rail.inbuf"(%24, %14) {kInit = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":1773:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_245", kSourceContext = loc("LogregTorchSamba.cpp":1773:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 8 : i64, shape = [60, 136], vector_transpose = 1 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_245"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":1773:0)}
  }
  module @tbuf1u_1_0_246  {
    "rail.buffer"() ( {
      "rail.memory_context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 16 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 3 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32) -> ()
        %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32) -> i1
        %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1) -> i1
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %12, %13, %10, %11, %14) {kDim = 1 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kFrontDynamicWriteCtx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "kFrontDynamicWriteCtx"} : () -> ()
      "rail.memory_context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 3 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 136 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7, %11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %17, %14, %15, %16, %18) {kDim = 1 : i8, kMemOp = false, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), kVecDim = -1 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kIndexRd", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kIndexRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":1782:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf1u_1_0_246", kSourceContext = loc("LogregTorchSamba.cpp":1782:0), params = {kDepth = 1 : i64, kLayout = {alignments = [], base_address = 0 : i64, dim_order = [0], format = 4 : i64, shape = [3], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1u_1_0_246"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":1782:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_ attributes {rail.kMetapipeIterCount = 1 : i64}  {
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":1793:0)}
  }
  module @tbuf2u_1_0_250  {
    "rail.buffer"() ( {
      "rail.memory_context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 3 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 136 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7, %11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%11, %7, %14, %17, %15, %16, %18) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), kVecDim = 0 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %19 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "1000", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf2u_1_0_250", sym_name = "1000"} : () -> i1
        "rail.send"(%13, %19) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr"} : () -> ()
      "rail.memory_context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 32 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 136 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 3 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %11, %16, %17, %14, %15, %18) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %19 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_1_0_250", sym_name = "0"} : () -> i1
        "rail.inbuf"(%19, %13) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1, i1) -> ()
        %20 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_1_0_250", sym_name = "1"} : () -> i1
        "rail.inbuf"(%20, %13) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1, i1) -> ()
        %21 = "rail.io.control_out"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1000", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf2u_1_0_250", sym_name = "1000"} : () -> i1
        "rail.send"(%13, %21) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultRead1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "kDefaultRead1"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":1803:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_250", kSourceContext = loc("LogregTorchSamba.cpp":1803:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [136, 3], vector_transpose = 1 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_250"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":1803:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 128 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 128 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_0_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 128 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 128 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_1_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_1_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_1_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 384 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 384 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_2_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_2_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_2_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 384 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 512 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 384 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 512 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_3_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_3_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_3_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 512 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 640 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 512 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 640 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_4_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_4_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_4_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 640 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 768 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 640 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 768 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_5_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_5_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_5_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 768 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 896 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 768 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 896 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_6_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_6_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_6_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 896 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1024 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 896 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1024 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_7_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_7_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_7_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1024 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1152 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1024 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1152 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_8_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_8_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_8_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1152 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1280 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1152 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1280 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_9_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_9_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_9_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1280 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1408 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1280 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1408 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_10_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_10_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_10_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1408 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1536 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1408 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1536 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_11_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_11_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_11_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1536 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1664 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1536 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1664 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_12_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_12_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_12_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1664 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1792 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1664 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1792 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_13_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_13_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_13_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1792 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1920 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1792 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1920 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_14_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_14_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_14_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1920 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2048 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1920 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2048 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_15_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_15_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_15_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2048 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2176 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2048 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2176 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_16_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_16_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_16_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2176 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2304 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2176 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2304 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_17_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_17_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_17_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2304 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2432 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2304 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2432 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_18_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_18_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_18_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2432 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2560 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2432 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2560 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_19_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_19_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_19_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2560 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2688 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2560 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2688 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_20_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_20_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_20_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2688 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2816 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2688 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2816 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_21_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_21_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_21_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2816 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2944 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2816 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2944 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_22_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_22_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_22_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2944 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3072 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 2944 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3072 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_23_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_23_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_23_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3072 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3200 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3072 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3200 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_24_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_24_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_24_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3200 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3328 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3200 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3328 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_25_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_25_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_25_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3328 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3456 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3328 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3456 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_26_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_26_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_26_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3456 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3584 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3456 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3584 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_27_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_27_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_27_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3584 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3712 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3584 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3712 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_28_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_28_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_28_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3712 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3840 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3712 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3840 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_29_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_29_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_29_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3840 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3968 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3840 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3968 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_30_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_30_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_30_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3968 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 4080 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 3968 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 4080 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_31_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_31_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_31_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 32 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 4080 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32) -> i1
          %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (i1) -> i1
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 1 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 256 : i64} : () -> ui32
          %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32) -> ()
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%7, %13, %17, %14, %15, %16, %18) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %19 = "rail.pacing_done_expr"(%7) {kPacingWindow = 8192 : i64, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32) -> i1
          %20 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
          "rail.inbuf"(%20, %19) {kInit = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 8192 : i64, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [4096, 256], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2173:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum_1  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 4096 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 4096 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_0_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 32 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 4096 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32) -> i1
          %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (i1) -> i1
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 1 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32) -> ()
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%7, %13, %17, %14, %15, %16, %18) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %19 = "rail.pacing_done_expr"(%7) {kPacingWindow = 128 : i64, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32) -> i1
          %20 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
          "rail.inbuf"(%20, %19) {kInit = 4 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 128 : i64, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2192:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__conv_layer__conv2d_bwd_accum  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 122880 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 122880 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_0_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 32 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 122880 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32) -> i1
          %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (i1) -> i1
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 1 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32) -> ()
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%7, %13, %17, %14, %15, %16, %18) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [122880, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2209:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__conv_layer__conv2d_bwd_accum_1  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 32 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ui32
          %16 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1) -> i1
          "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, ui32) -> ()
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.greater_than_equal"(%11, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 256 : i64} : () -> ui32
          %21 = "rail.less_than"(%11, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32) -> i1
          %22 = "rail.and"(%19, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%11, %15, %22, %25, %23, %24, %26) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %28 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (ui32) -> i1
          "rail.send"(%28, %27) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_0_0", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":420:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.memory_context"() ( {
          %4 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %5 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 32 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 256 : i64} : () -> ui32
          %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32) -> i1
          %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (i1) -> i1
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 1 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32) -> ()
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = true} : () -> i1
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%7, %13, %17, %14, %15, %16, %18) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %19 = "rail.pacing_done_expr"(%7) {kPacingWindow = 8 : i64, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (ui32) -> i1
          %20 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
          "rail.inbuf"(%20, %19) {kInit = 4 : i32, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 8 : i64, kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":613:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [256, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp":563:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2227:0)}
  }
  module @LogregTorchSamba.partition_1_0_.permute_1_0_416 attributes {rail.kMetapipeIterCount = 1 : i64}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.memory_context"() ( {
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 256 : i64} : () -> ui32
          %9 = "rail.iterator"(%6, %7, %8) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 3 : i64} : () -> ui32
          %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 32 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 136 : i64} : () -> ui32
          %21 = "rail.iterator"(%18, %19, %20) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%9, %13, %17, %21) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%9) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32) -> i1
          %23 = "rail.ctxdone"(%22) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%9, %13, %17, %21, %26, %27, %24, %25, %28) {kDim = 4 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : () -> ()
        }) {kContextType = "kRolled", kName = "W", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), sym_name = "W"} : () -> ()
        "rail.memory_context"() ( {
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = true} : () -> i1
          %7 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 3 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 3 : i64} : () -> ui32
          %12 = "rail.less_than"(%10, %11) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %13 = "rail.and"(%6, %12) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %19 = "rail.less_than"(%17, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %20 = "rail.and"(%13, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 136 : i64} : () -> ui32
          %24 = "rail.iterator"(%21, %22, %23) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 136 : i64} : () -> ui32
          %26 = "rail.less_than"(%24, %25) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %27 = "rail.and"(%20, %26) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 32 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 256 : i64} : () -> ui32
          %31 = "rail.iterator"(%28, %29, %30) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 256 : i64} : () -> ui32
          %33 = "rail.less_than"(%31, %32) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %34 = "rail.and"(%27, %33) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          "rail.iterchain"(%10, %17, %31, %24) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.ctrdone"(%10) {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32) -> i1
          %36 = "rail.ctxdone"(%35) {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1) -> i1
          %37 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %38 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %39 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = true} : () -> i1
          %40 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%31, %10, %17, %24, %34, %39, %37, %38, %40) {kDim = 4 : i8, kMemOp = false, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : () -> ()
        }) {kArithSplit = true, kContextType = "kRolled", kName = "R", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), sym_name = "R"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0)} : () -> ()
      }) {kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[3, 64]], base_address = 0 : i64, dim_order = [0, 1, 2, 3], format = 8 : i64, shape = [256, 3, 1, 136], vector_transpose = 3 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0)}
    }
    %4 = "rail.io.vector_in"() {kCtxName = "W", kLanes = [], kPortName = "8", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tbuffer_W_vector_in_8"} : () -> vector<32xbf16>
    %5 = "rail.io.vector_out"() {kCtxName = "R", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tbuffer_R_vector_out_1001"} : () -> vector<32xbf16>
    module_terminator {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":26:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__conv_layer__conv2d_weight_permute_bwd attributes {rail.kMetapipeIterCount = 1 : i64}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.memory_context"() ( {
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 3 : i64} : () -> ui32
          %9 = "rail.iterator"(%6, %7, %8) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 32 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 136 : i64} : () -> ui32
          %17 = "rail.iterator"(%14, %15, %16) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 256 : i64} : () -> ui32
          %21 = "rail.iterator"(%18, %19, %20) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%9, %13, %17, %21) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32, ui32) -> ()
          %22 = "rail.ctrdone"(%9) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32) -> i1
          %23 = "rail.ctxdone"(%22) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %26 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
          %27 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = true} : () -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%9, %13, %17, %21, %26, %27, %24, %25, %28) {kDim = 4 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : () -> ()
        }) {kContextType = "kRolled", kName = "W", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), sym_name = "W"} : () -> ()
        "rail.memory_context"() ( {
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = true} : () -> i1
          %7 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 256 : i64} : () -> ui32
          %10 = "rail.iterator"(%7, %8, %9) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 256 : i64} : () -> ui32
          %12 = "rail.less_than"(%10, %11) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %13 = "rail.and"(%6, %12) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 136 : i64} : () -> ui32
          %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 136 : i64} : () -> ui32
          %19 = "rail.less_than"(%17, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %20 = "rail.and"(%13, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 32 : i64} : () -> ui32
          %23 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 3 : i64} : () -> ui32
          %24 = "rail.iterator"(%21, %22, %23) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 3 : i64} : () -> ui32
          %26 = "rail.less_than"(%24, %25) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %27 = "rail.and"(%20, %26) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          %28 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %29 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %30 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %31 = "rail.iterator"(%28, %29, %30) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32) -> ui32
          %32 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 1 : i64} : () -> ui32
          %33 = "rail.less_than"(%31, %32) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32) -> i1
          %34 = "rail.and"(%27, %33) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1, i1) -> i1
          "rail.iterchain"(%10, %17, %24, %31) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32, ui32) -> ()
          %35 = "rail.ctrdone"(%10) {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32) -> i1
          %36 = "rail.ctxdone"(%35) {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (i1) -> i1
          %37 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %38 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          %39 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = true} : () -> i1
          %40 = "rail.const"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%24, %31, %17, %10, %34, %39, %37, %38, %40) {kDim = 4 : i8, kMemOp = false, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : () -> ()
        }) {kArithSplit = true, kContextType = "kRolled", kName = "R", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), sym_name = "R"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0)} : () -> ()
      }) {kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[3, 64]], base_address = 0 : i64, dim_order = [0, 1, 3, 2], format = 8 : i64, shape = [3, 1, 136, 256], vector_transpose = 2 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0)}
    }
    %4 = "rail.io.vector_in"() {kCtxName = "W", kLanes = [], kPortName = "8", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tbuffer_W_vector_in_8"} : () -> vector<32xbf16>
    %5 = "rail.io.vector_out"() {kCtxName = "R", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tbuffer_R_vector_out_1001"} : () -> vector<32xbf16>
    module_terminator {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":26:0)}
  }
  %0 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf2u_1_0_245", sym_name = "tbuf2u_1_0_245_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd_scalar_in_idx"} : () -> ui32
  %1 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf2u_1_0_245", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_245_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> vector<32xbf16>
  %2 = "rail.io.scalar_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf1u_1_0_246", sym_name = "tbuf1u_1_0_246_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kIndexRd_scalar_out_1001"} : () -> ui32
  %3 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "8", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf2u_1_0_250", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_250_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_245_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd_scalar_in_idx", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kSrc = @"tbuf1u_1_0_246_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kIndexRd_scalar_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_250_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr_vector_in_8", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kSrc = @"tbuf2u_1_0_245_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_245::@tbuf2u_1_0_245::@"LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd"::@"0", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kSrc = @tbuf2u_1_0_250::@tbuf2u_1_0_250::@"LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_245::@tbuf2u_1_0_245::@"LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd"::@"1", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kSrc = @tbuf2u_1_0_250::@tbuf2u_1_0_250::@kDefaultRead1::@"1000"} : () -> ()
  module_terminator {kSourceContext = loc(unknown)}
}