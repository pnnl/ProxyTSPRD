module @tbuf1a_0_0_75  {
  "rail.buffer"() ( {
    "rail.tbuffer_context"() ( {
      %0 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput", kLanes = [], kPortName = "8", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kUnitName = "tbuf1a_0_0_75", sym_name = "tbuf1a_0_0_75_tbuffer_LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput_scalar_in_8"} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 0 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 1 : i64} : () -> i64
      %4 = "rail.iterator"(%1, %2, %3) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i64, i64, i64) -> i64
      %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 0 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 1 : i64} : () -> i64
      %7 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 1 : i64} : () -> i64
      %8 = "rail.iterator"(%5, %6, %7) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i64, i64, i64) -> i64
      %9 = "rail.ctrdone"(%8) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i64) -> i1
      %10 = "rail.ctxdone"(%9) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i1) -> i1
      "rail.iterchain"(%4, %8) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i64, i64) -> ()
      %11 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput", kLanes = [], kPortName = "done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kUnitName = "tbuf1a_0_0_75", sym_name = "done"} : () -> i1
      %12 = "rail.ctrdone"(%8) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i64) -> i1
      "rail.send"(%12, %11) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i1, i1) -> ()
      %13 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = true} : () -> i1
      %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 0 : i64} : () -> i64
      %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%8, %13, %14, %15, %0) {kDim = 1 : i8, kMemOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : (i64, i1, i64, i64, i64) -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0"} : () -> ()
    }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1663:0", sym_name = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput"} : () -> ()
    "rail.tbuffer_context"() ( {
      %0 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 0 : i64} : () -> i64
      %1 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 32 : i64} : () -> i64
      %2 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 1 : i64} : () -> i64
      %3 = "rail.iterator"(%0, %1, %2) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i64, i64, i64) -> i64
      %4 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 0 : i64} : () -> i64
      %5 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 1 : i64} : () -> i64
      %6 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 1 : i64} : () -> i64
      %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIsMaster = true, kIterPos = 0 : i32, kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i64, i64, i64) -> i64
      "rail.reset"(%7) {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i64) -> ()
      "rail.iterchain"(%7, %3) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i64, i64) -> ()
      %8 = "rail.ctrdone"(%3) {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i64) -> i1
      %9 = "rail.ctxdone"(%8) {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i1) -> i1
      %10 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = true} : () -> i1
      %11 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 0 : i64} : () -> i64
      %12 = "rail.const"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kValue = 0 : i64} : () -> i64
      "rail.addr"(%3, %10, %11, %12) {kDim = 1 : i8, kMemOp = false, kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i64, i1, i64, i64) -> ()
      %13 = "rail.pacing_done_expr"(%3) {kPacingWindow = 1 : i64, kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i64) -> i1
      %14 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "0", kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", kUnitName = "tbuf1a_0_0_75", sym_name = "0"} : () -> i1
      "rail.inbuf"(%14, %13) {kInit = 4 : i32, kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : (i1, i1) -> ()
      "rail.terminator"() {kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0"} : () -> ()
    }) {kContextType = "kRolled", kName = "kBackReadCtx", kSourceContext = "software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp:131:0", sym_name = "kBackReadCtx"} : () -> ()
    "rail.terminator"() {kSourceContext = "LogregTorchSamba.cpp:156:0"} : () -> ()
  }) {kFIFOMode = false, kName = "tbuf1a_0_0_75", kSourceContext = "LogregTorchSamba.cpp:156:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[0, 64]], base_address = 0 : i64, dim_order = [0], format = 8 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = 1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_0_0_75"} : () -> ()
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:156:0"}
}