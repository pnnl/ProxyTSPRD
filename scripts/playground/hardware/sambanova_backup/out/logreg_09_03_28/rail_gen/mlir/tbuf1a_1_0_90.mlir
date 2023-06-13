module @tbuf1a_1_0_90  {
  "rail.buffer"() ( {
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 1 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 12 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i64, i64, i64) -> i64
      %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 0 : i64} : () -> i64
      %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 32 : i64} : () -> i64
      %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 1 : i64} : () -> i64
      %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i64, i64, i64) -> i64
      %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i64) -> i1
      %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i1) -> i1
      "rail.iterchain"(%3, %11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i64, i64, i64) -> ()
      %14 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0", kLanes = [], kPortName = "done", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kUnitName = "tbuf1a_1_0_90", sym_name = "done"} : () -> i1
      %15 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i64) -> i1
      "rail.send"(%15, %14) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i1, i1) -> ()
      %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 10 : i64} : () -> i64
      %17 = "rail.less_than"(%7, %16) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : (i64, i64) -> i1
      %18 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 0 : i64} : () -> i64
      %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%7, %11, %17, %18, %19) {kDim = 2 : i8, kMemOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0"} : () -> ()
    }) {kArithSplit = true, kContextType = "kRolled", kDispatchIds = [0 : i32], kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1246:0", sym_name = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0"} : () -> ()
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
      "rail.addr"(%3, %7, %10, %11, %12) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64, i64, i1, i64, i64) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : () -> ()
    }) {kContextType = "kRolled", kName = "kDefaultRead1", kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", sym_name = "kDefaultRead1"} : () -> ()
    "rail.terminator"() {kSourceContext = "LogregTorchSamba.cpp:227:0"} : () -> ()
  }) {kFIFOMode = false, kName = "tbuf1a_1_0_90", kSourceContext = "LogregTorchSamba.cpp:227:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 8 : i64, shape = [10, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_90"} : () -> ()
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:227:0"}
}