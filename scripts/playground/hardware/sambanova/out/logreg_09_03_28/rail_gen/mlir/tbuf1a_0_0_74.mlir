module @tbuf1a_0_0_74  {
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
      %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 1 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 2 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64, i64, i64) -> i64
      %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 0 : i64} : () -> i64
      %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 32 : i64} : () -> i64
      %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 1 : i64} : () -> i64
      %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64, i64, i64) -> i64
      %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 0 : i64} : () -> i64
      %13 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 1 : i64} : () -> i64
      %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 12 : i64} : () -> i64
      %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 3 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64, i64, i64) -> i64
      %16 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64) -> i1
      %17 = "rail.ctxdone"(%16) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1) -> i1
      "rail.iterchain"(%3, %7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64, i64, i64, i64) -> ()
      %18 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64) -> i1
      %19 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kLanes = [], kPortName = "1000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kUnitName = "tbuf1a_0_0_74", sym_name = "1000"} : () -> i1
      "rail.send"(%18, %19) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1, i1) -> ()
      %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = true} : () -> i1
      %21 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 0 : i64} : () -> i64
      %22 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%15, %11, %20, %21, %22) {kDim = 2 : i8, kMemOp = false, kPredicateType = "kPredicateDrop", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
      %23 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64) -> i1
      %24 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64) -> i1
      %25 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i64) -> i1
      %26 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kLanes = [], kPortName = "5000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kUnitName = "tbuf1a_0_0_74", sym_name = "5000"} : () -> i1
      "rail.inbuf"(%26, %25) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1, i1) -> ()
      %27 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kLanes = [], kPortName = "phase3_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kUnitName = "tbuf1a_0_0_74", sym_name = "phase3_strip_done"} : () -> i1
      "rail.inbuf"(%27, %24) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1, i1) -> ()
      %28 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kLanes = [], kPortName = "phase0_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kUnitName = "tbuf1a_0_0_74", sym_name = "phase0_strip_done"} : () -> i1
      %29 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kLanes = [], kPortName = "phase1_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kUnitName = "tbuf1a_0_0_74", sym_name = "phase1_strip_done"} : () -> i1
      %30 = "rail.or"(%28, %29) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1, i1) -> i1
      "rail.inbuf"(%30, %23) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1, i1) -> ()
      %31 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kLanes = [], kPortName = "scalar_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kUnitName = "tbuf1a_0_0_74", sym_name = "scalar_done"} : () -> i1
      "rail.inbuf"(%31, %24) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1, i1) -> ()
      %32 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kLanes = [], kPortName = "4000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", kUnitName = "tbuf1a_0_0_74", sym_name = "4000"} : () -> i1
      "rail.send"(%24, %32) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : (i1, i1) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0"} : () -> ()
    }) {kAllowOOBRead = true, kArithSplit = true, kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kExplicitMemPort = 2 : i64, kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", kPacingWindow = 12 : i64, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1400:0", sym_name = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0"} : () -> ()
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 1 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 1 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 1 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64, i64, i64) -> i64
      %8 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64) -> i1
      %9 = "rail.ctxdone"(%8) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i1) -> i1
      %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 0 : i64} : () -> i64
      %11 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 1 : i64} : () -> i64
      %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 1 : i64} : () -> i64
      %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64, i64, i64) -> i64
      "rail.iterchain"(%3, %7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64, i64, i64) -> ()
      %14 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64) -> i1
      %15 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", kLanes = [], kPortName = "1000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kUnitName = "tbuf1a_0_0_74", sym_name = "1000"} : () -> i1
      "rail.send"(%14, %15) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i1, i1) -> ()
      %16 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", kLanes = [], kPortName = "label", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kUnitName = "tbuf1a_0_0_74", sym_name = "tbuf1a_0_0_74_tbuffer_LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar_scalar_in_label"} : () -> i64
      %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 10 : i64} : () -> i64
      %18 = "rail.less_than"(%16, %17) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64, i64) -> i1
      %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 0 : i64} : () -> i64
      %20 = "rail.ifelse"(%18, %16, %19) {kCtrMax = 10 : i64, kCtrMin = 0 : i64, kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i1, i64, i64) -> i64
      %21 = "rail.add"(%7, %13) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64, i64) -> i64
      %22 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = true} : () -> i1
      %23 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 0 : i64} : () -> i64
      %24 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%20, %21, %22, %23, %24) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64, i64, i1, i64, i64) -> ()
      %25 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64) -> i1
      %26 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", kKeepInDataPmu = true, kLanes = [], kPortName = "phase2_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kUnitName = "tbuf1a_0_0_74", sym_name = "phase2_strip_done"} : () -> i1
      "rail.inbuf"(%26, %25) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i1, i1) -> ()
      %27 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", kLanes = [], kPortName = "second_replay_done_0", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kUnitName = "tbuf1a_0_0_74", sym_name = "second_replay_done_0"} : () -> i1
      "rail.inbuf"(%27, %25) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i1, i1) -> ()
      %28 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", kLanes = [], kPortName = "scalar_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kUnitName = "tbuf1a_0_0_74", sym_name = "scalar_done"} : () -> i1
      "rail.send"(%25, %28) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i1, i1) -> ()
      %29 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", kLanes = [], kPortName = "frame_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", kUnitName = "tbuf1a_0_0_74", sym_name = "frame_done"} : () -> i1
      %30 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i64) -> i1
      "rail.send"(%30, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : (i1, i1) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0"} : () -> ()
    }) {kArithSplit = true, kConcurrencyGroup = 1 : i64, kContextType = "kRolled", kExplicitMemPort = 1 : i64, kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1466:0", sym_name = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar"} : () -> ()
    "rail.terminator"() {kSourceContext = "LogregTorchSamba.cpp:132:0"} : () -> ()
  }) {kCtxShares = ["LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0"], kExplicitSwapDsts = ["LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0", "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar"], kExplicitSwapSrcs = ["LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar", "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0"], kFIFOMode = false, kImplicitControl = false, kName = "tbuf1a_0_0_74", kSourceContext = "LogregTorchSamba.cpp:132:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 8 : i64, shape = [10, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 1 : i64}, sym_name = "tbuf1a_0_0_74"} : () -> ()
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:132:0"}
}