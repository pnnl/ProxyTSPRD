module @tbuf1a_0_0_73  {
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
      %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 1 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 1 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64, i64, i64) -> i64
      %8 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64) -> i1
      %9 = "rail.ctxdone"(%8) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i1) -> i1
      %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 0 : i64} : () -> i64
      %11 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 1 : i64} : () -> i64
      %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 1 : i64} : () -> i64
      %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64, i64, i64) -> i64
      "rail.iterchain"(%3, %7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64, i64, i64) -> ()
      %14 = "rail.add"(%7, %13) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64, i64) -> i64
      %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 1 : i64} : () -> i64
      %16 = "rail.less_than"(%14, %15) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64, i64) -> i1
      %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 0 : i64} : () -> i64
      %18 = "rail.ifelse"(%16, %14, %17) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i1, i64, i64) -> i64
      %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = true} : () -> i1
      %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 0 : i64} : () -> i64
      %21 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%18, %19, %20, %21) {kDim = 1 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64, i1, i64, i64) -> ()
      %22 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i64) -> i1
      %23 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputY", kLanes = [], kPortName = "phase2_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", kUnitName = "tbuf1a_0_0_73", sym_name = "phase2_strip_done"} : () -> i1
      "rail.inbuf"(%23, %22) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : (i1, i1) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0"} : () -> ()
    }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputY", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1623:0", sym_name = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputY"} : () -> ()
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 32 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 1 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i64, i64, i64) -> i64
      %8 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i64) -> i1
      %9 = "rail.ctxdone"(%8) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i1) -> i1
      %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 0 : i64} : () -> i64
      %11 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 32 : i64} : () -> i64
      %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 32 : i64} : () -> i64
      %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i64, i64, i64) -> i64
      %14 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i64) -> i1
      "rail.iterchain"(%3, %7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i64, i64, i64) -> ()
      %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = true} : () -> i1
      %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 0 : i64} : () -> i64
      %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%7, %15, %16, %17) {kDim = 1 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kVecDim = 0 : i64} : (i64, i1, i64, i64) -> ()
      %18 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc", kLanes = [], kPortName = "phase3_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kUnitName = "tbuf1a_0_0_73", sym_name = "phase3_strip_done"} : () -> i1
      "rail.inbuf"(%18, %14) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i1, i1) -> ()
      %19 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc", kLanes = [], kPortName = "y_copy_rd_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", kUnitName = "tbuf1a_0_0_73", sym_name = "y_copy_rd_done"} : () -> i1
      "rail.inbuf"(%19, %14) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : (i1, i1) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0"} : () -> ()
    }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1639:0", sym_name = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc"} : () -> ()
    "rail.terminator"() {kSourceContext = "LogregTorchSamba.cpp:125:0"} : () -> ()
  }) {kFIFOMode = false, kName = "tbuf1a_0_0_73", kSourceContext = "LogregTorchSamba.cpp:125:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[0, 64]], base_address = 0 : i64, dim_order = [0], format = 2 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_0_0_73"} : () -> ()
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:125:0"}
}