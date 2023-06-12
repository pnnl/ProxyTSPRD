module @LogregTorchSamba.partition_1_0_.ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1  {
  module @tbuf  {
    "rail.buffer"() ( {
      "rail.tbuffer_context"() ( {
        %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 0 : i64} : () -> i64
        %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 1 : i64} : () -> i64
        %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 1 : i64} : () -> i64
        %3 = "rail.iterator"(%0, %1, %2) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64, i64, i64) -> i64
        %4 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 0 : i64} : () -> i64
        %5 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 32 : i64} : () -> i64
        %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 256 : i64} : () -> i64
        %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64, i64, i64) -> i64
        %8 = "rail.ctrdone"(%7) {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64) -> i1
        %9 = "rail.ctxdone"(%8) {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i1) -> i1
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 0 : i64} : () -> i64
        %11 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 1 : i64} : () -> i64
        %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 1 : i64} : () -> i64
        %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64, i64, i64) -> i64
        "rail.iterchain"(%3, %7, %13) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64, i64, i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 0 : i64} : () -> i64
        %15 = "rail.greater_than_equal"(%7, %14) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64, i64) -> i1
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 256 : i64} : () -> i64
        %17 = "rail.less_than"(%7, %16) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64, i64) -> i1
        %18 = "rail.and"(%15, %17) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i1, i1) -> i1
        %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 0 : i64} : () -> i64
        %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%7, %13, %18, %19, %20) {kDim = 2 : i8, kMemOp = true, kPredicateType = "kPredicateDrop", kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : (i64, i64, i1, i64, i64) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0"} : () -> ()
      }) {kContextType = "kRolled", kDisableFullStall = true, kName = "w_loop_0_0", kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:342:0", sym_name = "w_loop_0_0"} : () -> ()
      "rail.tbuffer_context"() ( {
        %0 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 0 : i64} : () -> i64
        %1 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 32 : i64} : () -> i64
        %2 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 256 : i64} : () -> i64
        %3 = "rail.iterator"(%0, %1, %2) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i64, i64, i64) -> i64
        %4 = "rail.ctrdone"(%3) {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i64) -> i1
        %5 = "rail.ctxdone"(%4) {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i1) -> i1
        %6 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 0 : i64} : () -> i64
        %7 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 1 : i64} : () -> i64
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 1 : i64} : () -> i64
        %9 = "rail.iterator"(%6, %7, %8) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i64, i64, i64) -> i64
        "rail.iterchain"(%3, %9) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i64, i64) -> ()
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = true} : () -> i1
        %11 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 0 : i64} : () -> i64
        %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%3, %9, %10, %11, %12) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i64, i64, i1, i64, i64) -> ()
        %13 = "rail.pacing_done_expr"(%3) {kPacingWindow = 8 : i64, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i64) -> i1
        %14 = "rail.io.control_in"() {kCtxName = "kBackReadCtx", kLanes = [], kPortName = "pacing_in", kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", kUnitName = "tbuf", sym_name = "pacing_in"} : () -> i1
        "rail.inbuf"(%14, %13) {kInit = 4 : i32, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0"} : () -> ()
      }) {kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "kBackReadCtx", kPacingWindow = 8 : i64, kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:487:0", sym_name = "kBackReadCtx"} : () -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:442:0"} : () -> ()
    }) {kAllowTrimWithMinMax = true, kFIFOMode = false, kName = "tbuf", kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:442:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [256, 1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
    module_terminator {kSourceContext = "software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp:442:0"}
  }
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:1854:0"}
}