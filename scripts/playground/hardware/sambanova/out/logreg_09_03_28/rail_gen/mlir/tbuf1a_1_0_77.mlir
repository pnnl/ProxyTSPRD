module @tbuf1a_1_0_77  {
  "rail.buffer"() ( {
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 32 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64, i64, i64) -> i64
      "rail.iterchain"(%3) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64) -> ()
      %4 = "rail.ctrdone"(%3) {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64) -> i1
      %5 = "rail.ctxdone"(%4) {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i1) -> i1
      %6 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = true} : () -> i1
      %7 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 0 : i64} : () -> i64
      %8 = "rail.const"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%3, %6, %7, %8) {kDim = 1 : i8, kMemOp = true, kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : (i64, i1, i64, i64) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0"} : () -> ()
    }) {kContextType = "kRolled", kName = "kFrontDynamicWriteCtx", kSourceContext = "software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp:347:0", sym_name = "kFrontDynamicWriteCtx"} : () -> ()
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 1 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 12 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i64, i64, i64) -> i64
      %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 0 : i64} : () -> i64
      %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 32 : i64} : () -> i64
      %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 1 : i64} : () -> i64
      %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i64, i64, i64) -> i64
      %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i64) -> i1
      %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i1) -> i1
      "rail.iterchain"(%3, %11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i64, i64, i64) -> ()
      %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = true} : () -> i1
      %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 0 : i64} : () -> i64
      %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%11, %14, %15, %16) {kDim = 1 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kVecDim = 0 : i64} : (i64, i1, i64, i64) -> ()
      %17 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i64) -> i1
      %18 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY", kLanes = [], kPortName = "phase2_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", kUnitName = "tbuf1a_1_0_77", sym_name = "phase2_strip_done"} : () -> i1
      "rail.inbuf"(%18, %17) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : (i1, i1) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0"} : () -> ()
    }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY", kSourceContext = "software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp:1294:0", sym_name = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY"} : () -> ()
    "rail.terminator"() {kSourceContext = "LogregTorchSamba.cpp:194:0"} : () -> ()
  }) {kFIFOMode = false, kName = "tbuf1a_1_0_77", kSourceContext = "LogregTorchSamba.cpp:194:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[0, 64]], base_address = 0 : i64, dim_order = [0], format = 2 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_77"} : () -> ()
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:194:0"}
}