module @partition_1_0_ attributes {rail.kChipId = 0 : i64, rail.kIsSectionModule = true, rail.kSectionId = 1 : i64}  {
  module @tbuf2u_1_0_394  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 60 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 64 : i64} : () -> ui32
        %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%12, %8) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %13 = "rail.ctrdone"(%12) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %14 = "rail.ctxdone"(%13) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%8, %12, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultWrite", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kDefaultWrite"} : () -> ()
      "rail.context"() ( {
        %5 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_394", sym_name = "tbuf2u_1_0_394_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_scalar_in_idx"} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 1 : i64} : () -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 1 : i64} : () -> ui32
        %9 = "rail.iterator"(%6, %7, %8) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 32 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 64 : i64} : () -> ui32
        %13 = "rail.iterator"(%10, %11, %12) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%9, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32) -> ()
        %14 = "rail.ctrdone"(%9) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32) -> i1
        %15 = "rail.ctxdone"(%14) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1) -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 60 : i64} : () -> ui32
        %18 = "rail.less_than"(%5, %17) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (ui32, ui32) -> i1
        %19 = "rail.and"(%16, %18) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> i1
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = true} : () -> i1
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%5, %13, %20, %19, %22, %23, %24) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %25 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_394", sym_name = "0"} : () -> i1
        "rail.inbuf"(%25, %15) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        %26 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "1", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_394", sym_name = "1"} : () -> i1
        "rail.inbuf"(%26, %15) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        %27 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "2", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_394", sym_name = "2"} : () -> i1
        "rail.inbuf"(%27, %15) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        %28 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "3", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), kUnitName = "tbuf2u_1_0_394", sym_name = "3"} : () -> i1
        "rail.inbuf"(%28, %15) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":137:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2501:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_394", kSourceContext = loc("LogregTorchSamba.cpp":2501:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [60, 64], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_394"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2501:0)}
  }
  module @tbuf1a_1_0_832  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 16 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%8) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> ()
        %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%8, %11, %12, %13, %14, %15) {kDim = 1 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultWrite", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kDefaultWrite"} : () -> ()
      "rail.context"() ( {
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 1 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 32 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 64 : i64} : () -> ui32
        %12 = "rail.iterator"(%9, %10, %11) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%8, %12) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32, ui32) -> ()
        %13 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (ui32) -> i1
        %14 = "rail.ctxdone"(%13) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : (i1) -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%8, %15, %16, %17, %18, %19) {kDim = 1 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), kVecDim = -1 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":124:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2512:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf1a_1_0_832", kSourceContext = loc("LogregTorchSamba.cpp":2512:0), params = {kDepth = 1 : i64, kLayout = {alignments = [], base_address = 0 : i64, dim_order = [0], format = 5 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_832"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2512:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_ attributes {rail.kMetapipeIterCounts = [1]}  {
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2525:0)}
  }
  module @tbuf2u_1_0_399  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 32 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 64 : i64} : () -> ui32
        %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%8, %12) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32) -> ()
        %13 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32) -> i1
        %14 = "rail.ctxdone"(%13) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (i1) -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%8, %12, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %20 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_399", sym_name = "1000"} : () -> i1
        "rail.send"(%14, %20) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"} : () -> ()
      "rail.context"() ( {
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 64 : i64} : () -> ui32
        %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%12, %8) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %13 = "rail.ctrdone"(%12) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %14 = "rail.ctxdone"(%13) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%8, %12, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %20 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf2u_1_0_399", sym_name = "0"} : () -> i1
        "rail.inbuf"(%20, %14) {kInit = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1, i1) -> ()
        %21 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf2u_1_0_399", sym_name = "1"} : () -> i1
        "rail.inbuf"(%21, %14) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1, i1) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_399", sym_name = "1000"} : () -> i1
        "rail.send"(%14, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultRead1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kDefaultRead1"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2536:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_399", kSourceContext = loc("LogregTorchSamba.cpp":2536:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [1, 64], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_399"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2536:0)}
  }
  module @tbuf2u_1_0_402  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 1 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 32 : i64} : () -> ui32
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 64 : i64} : () -> ui32
        %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%8, %12) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32, ui32) -> ()
        %13 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (ui32) -> i1
        %14 = "rail.ctxdone"(%13) {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : (i1) -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = true} : () -> i1
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%12, %8, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), kVecDim = 0 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %20 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_402", sym_name = "1000"} : () -> i1
        "rail.send"(%14, %20) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kSourceContext = loc("software/templates/src/templates/index/rail/Index.cpp":161:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"} : () -> ()
      "rail.context"() ( {
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 1 : i64} : () -> ui32
        %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 43 : i64} : () -> ui32
        %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32, ui32) -> ui32
        %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32) -> i1
        %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (i1) -> i1
        %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 32 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 64 : i64} : () -> ui32
        %14 = "rail.iterator"(%11, %12, %13) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32, ui32) -> ui32
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 1 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 1 : i64} : () -> ui32
        %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32, ui32) -> ui32
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 1 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 1 : i64} : () -> ui32
        %22 = "rail.iterator"(%19, %20, %21) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32, ui32) -> ui32
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %24 = "rail.sub"(%23, %22) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32) -> ui32
        "rail.iterchain"(%8, %18, %14, %22) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32, ui32, ui32) -> ()
        %25 = "rail.add"(%18, %24) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32) -> ui32
        %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = true} : () -> i1
        %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = true} : () -> i1
        %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 0 : i64} : () -> ui32
        %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kValue = 1 : i64} : () -> ui32
        %32 = "rail.less_than"(%25, %31) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32) -> i1
        "rail.addr"(%14, %25, %32, %27, %28, %29, %30) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %33 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kB", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kUnitName = "tbuf2u_1_0_402", sym_name = "0"} : () -> i1
        "rail.inbuf"(%33, %10) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (i1, i1) -> ()
        %34 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kB", kLanes = [], kPortName = "1", kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), kUnitName = "tbuf2u_1_0_402", sym_name = "1"} : () -> i1
        "rail.inbuf"(%34, %10) {kInit = 2 : i32, kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : (i1, i1) -> ()
        %35 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kB", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_402", sym_name = "1000"} : () -> i1
        "rail.send"(%10, %35) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kB", kSourceContext = loc("software/templates/src/templates/gemm/prism/BigGemm.cpp":4221:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kB"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":2558:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_1_0_402", kSourceContext = loc("LogregTorchSamba.cpp":2558:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_1_0_402"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":2558:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 512 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 512 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 512 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1024 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 512 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1024 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_1_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[1 : i32]], dims = [1]}, kName = "w_loop_1_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_1_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1024 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1536 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1024 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1536 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_2_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[2 : i32]], dims = [1]}, kName = "w_loop_2_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_2_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1536 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2048 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1536 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2048 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_3_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[3 : i32]], dims = [1]}, kName = "w_loop_3_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_3_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2048 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2560 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2048 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2560 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_4_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[4 : i32]], dims = [1]}, kName = "w_loop_4_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_4_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2560 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3072 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 2560 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3072 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_5_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[5 : i32]], dims = [1]}, kName = "w_loop_5_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_5_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3072 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3584 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3072 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3584 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_6_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[6 : i32]], dims = [1]}, kName = "w_loop_6_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_6_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3584 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4080 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 3584 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4080 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_7_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[7 : i32]], dims = [1]}, kName = "w_loop_7_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_7_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4080 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %20 = "rail.pacing_done_expr"(%8) {kPacingWindow = 8192 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %21 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
          "rail.inbuf"(%21, %20) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 8192 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 64], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4672:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum_1 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %20 = "rail.pacing_done_expr"(%8) {kPacingWindow = 128 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %21 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
          "rail.inbuf"(%21, %20) {kInit = 4 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 128 : i64, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4692:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4711:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_1 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4730:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_2 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4749:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_3 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 4096 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 4096 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [4096, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4768:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_4 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4787:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_5 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4806:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_6 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4825:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_7 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 8704 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 8704 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [8704, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4844:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_8 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4863:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_9 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4882:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_10 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4901:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_11 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4920:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_12 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4939:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_13 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4958:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_14 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4977:0)}
  }
  module @LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_15 attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 32 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %12 = "rail.iterator"(%9, %10, %11) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.iterator"(%13, %14, %15) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ui32
          %17 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          %18 = "rail.ctxdone"(%17) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1) -> i1
          "rail.iterchain"(%8, %12, %16) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, ui32) -> ()
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %20 = "rail.greater_than_equal"(%12, %19) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 64 : i64} : () -> ui32
          %22 = "rail.less_than"(%12, %21) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32) -> i1
          %23 = "rail.and"(%20, %22) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = true} : () -> i1
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%12, %16, %23, %25, %26, %27, %28) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "w_loop_0_0", kLanes = [], kPortName = "w_loop_done", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), kUnitName = "tbuf", sym_name = "w_loop_done"} : () -> i1
          %30 = "rail.ctrdone"(%12) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (ui32) -> i1
          "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableFullStall = true, kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "w_loop_0_0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":424:0), sym_name = "w_loop_0_0"} : () -> ()
        "rail.context"() ( {
          %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 32 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 64 : i64} : () -> ui32
          %8 = "rail.iterator"(%5, %6, %7) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          %9 = "rail.ctrdone"(%8) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32) -> i1
          %10 = "rail.ctxdone"(%9) {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (i1) -> i1
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 1 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%8, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32) -> ()
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = true} : () -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%8, %14, %15, %16, %17, %18, %19) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0)} : () -> ()
        }) {kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), sym_name = "kBackReadCtx"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)} : () -> ()
      }) {kAllowTrimWithMinMax = true, kBankByDuplication = true, kDisableUnderflowCheck = 1 : i64, kEnableDispatchReassignment = false, kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 9 : i64, shape = [64, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":578:0)}
    }
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":4996:0)}
  }
  %0 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_394", sym_name = "tbuf2u_1_0_394_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_scalar_in_idx"} : () -> ui32
  %1 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_394", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_394_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> vector<32xbf16>
  %2 = "rail.io.scalar_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf1a_1_0_832", sym_name = "tbuf1a_1_0_832_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd_scalar_out_1001"} : () -> ui32
  %3 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_399", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_399_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8"} : () -> vector<32xbf16>
  %4 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kUnitName = "tbuf2u_1_0_402", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_1_0_402_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_394_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_scalar_in_idx", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @"tbuf1a_1_0_832_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kIndexRd_scalar_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_399_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @"tbuf2u_1_0_394_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @"tbuf2u_1_0_402_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_vector_in_8", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @"tbuf2u_1_0_394_tbuffer_LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_394::@tbuf2u_1_0_394::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"0", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_399::@tbuf2u_1_0_399::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_394::@tbuf2u_1_0_394::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"1", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_402::@tbuf2u_1_0_402::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_394::@tbuf2u_1_0_394::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"2", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_399::@tbuf2u_1_0_399::@kDefaultRead1::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_1_0_394::@tbuf2u_1_0_394::@"LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kLutRd"::@"3", kSourceContext = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp":629:0), kSrc = @tbuf2u_1_0_402::@tbuf2u_1_0_402::@"LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_recompute_@kB"::@"1000"} : () -> ()
  module_terminator {kSourceContext = loc(unknown)}
}