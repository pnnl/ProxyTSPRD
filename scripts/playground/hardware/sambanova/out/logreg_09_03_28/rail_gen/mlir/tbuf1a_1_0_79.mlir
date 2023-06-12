module @tbuf1a_1_0_79  {
  "rail.buffer"() ( {
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 10 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 32 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 1 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64, i64, i64) -> i64
      "rail.iterchain"(%7, %3) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64, i64) -> ()
      %8 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64) -> i1
      %9 = "rail.ctxdone"(%8) {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i1) -> i1
      %10 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = true} : () -> i1
      %11 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 0 : i64} : () -> i64
      %12 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%3, %7, %10, %11, %12) {kDim = 2 : i8, kMemOp = true, kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64, i64, i1, i64, i64) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : () -> ()
    }) {kContextType = "kRolled", kName = "kDefaultWrite", kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", sym_name = "kDefaultWrite"} : () -> ()
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 1 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 2 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64, i64, i64) -> i64
      %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 0 : i64} : () -> i64
      %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 32 : i64} : () -> i64
      %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 1 : i64} : () -> i64
      %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64, i64, i64) -> i64
      %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 0 : i64} : () -> i64
      %13 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 1 : i64} : () -> i64
      %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 12 : i64} : () -> i64
      %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64, i64, i64) -> i64
      %16 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64) -> i1
      %17 = "rail.ctxdone"(%16) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i1) -> i1
      "rail.iterchain"(%3, %7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64, i64, i64, i64) -> ()
      %18 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64) -> i1
      %19 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "1000", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kUnitName = "tbuf1a_1_0_79", sym_name = "1000"} : () -> i1
      "rail.send"(%18, %19) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i1, i1) -> ()
      %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 10 : i64} : () -> i64
      %21 = "rail.less_than"(%15, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64, i64) -> i1
      %22 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 0 : i64} : () -> i64
      %23 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%15, %11, %21, %22, %23) {kDim = 2 : i8, kMemOp = false, kPredicateType = "kPredicateForceZero", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
      %24 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64) -> i1
      %25 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64) -> i1
      %26 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i64) -> i1
      %27 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "phase0_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kUnitName = "tbuf1a_1_0_79", sym_name = "phase0_strip_done"} : () -> i1
      %28 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "phase1_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kUnitName = "tbuf1a_1_0_79", sym_name = "phase1_strip_done"} : () -> i1
      %29 = "rail.or"(%27, %28) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i1, i1) -> i1
      "rail.inbuf"(%29, %24) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i1, i1) -> ()
      %30 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "phase3_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kUnitName = "tbuf1a_1_0_79", sym_name = "phase3_strip_done"} : () -> i1
      "rail.inbuf"(%30, %25) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i1, i1) -> ()
      %31 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "5000", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", kUnitName = "tbuf1a_1_0_79", sym_name = "5000"} : () -> i1
      "rail.send"(%25, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : (i1, i1) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0"} : () -> ()
    }) {kArithSplit = true, kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kExplicitMemPort = 2 : i64, kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kPacingWindow = 12 : i64, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1187:0", sym_name = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0"} : () -> ()
    "rail.terminator"() {kSourceContext = "LogregTorchSamba.cpp:208:0"} : () -> ()
  }) {kFIFOMode = false, kName = "tbuf1a_1_0_79", kSourceContext = "LogregTorchSamba.cpp:208:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 8 : i64, shape = [10, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_79"} : () -> ()
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:208:0"}
}