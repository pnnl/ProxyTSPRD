module @partition_0_0_ attributes {rail.kChipId = 0 : i64, rail.kIsSectionModule = true, rail.kSectionId = 0 : i64}  {
  module @LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute attributes {rail.kMetapipeIterCount = 1 : i64}  {
    module @tbuf  {
      "rail.buffer"() ( {
        "rail.memory_context"() ( {
          %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %7 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 256 : i64} : () -> ui32
          %9 = "rail.iterator"(%6, %7, %8) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 136 : i64} : () -> ui32
          %13 = "rail.iterator"(%10, %11, %12) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 3 : i64} : () -> ui32
          %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (ui32, ui32, ui32) -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 0 : i64} : () -> ui32
          %19 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 32 : i64} : () -> ui32
          %20 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kValue = 1 : i64} : () -> ui32
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
          "rail.addr"(%31, %24, %10, %17, %34, %39, %37, %38, %40) {kDim = 4 : i8, kMemOp = false, kPredicateType = "kPredicateDrop", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : (ui32, ui32, ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0)} : () -> ()
        }) {kArithSplit = true, kContextType = "kRolled", kName = "R", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), sym_name = "R"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0)} : () -> ()
      }) {kFIFOMode = false, kName = "tbuf", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[3, 64]], base_address = 0 : i64, dim_order = [0, 1, 2, 3], format = 8 : i64, shape = [256, 136, 3, 1], vector_transpose = 3 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf"} : () -> ()
      module_terminator {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":69:0)}
    }
    %4 = "rail.io.vector_in"() {kCtxName = "W", kLanes = [], kPortName = "8", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tbuffer_W_vector_in_8"} : () -> vector<32xbf16>
    %5 = "rail.io.vector_out"() {kCtxName = "R", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":73:0), kUnitName = "tbuf", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tbuffer_R_vector_out_1001"} : () -> vector<32xbf16>
    module_terminator {kSourceContext = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp":26:0)}
  }
  module @tbuf2u_0_0_189  {
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
        %4 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kUnitName = "tbuf2u_0_0_189", sym_name = "tbuf2u_0_0_189_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd_scalar_in_idx"} : () -> ui32
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
        %23 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kUnitName = "tbuf2u_0_0_189", sym_name = "0"} : () -> i1
        "rail.inbuf"(%23, %14) {kInit = 1 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (i1, i1) -> ()
        %24 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), kUnitName = "tbuf2u_0_0_189", sym_name = "1"} : () -> i1
        "rail.inbuf"(%24, %14) {kInit = 2 : i32, kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":137:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":122:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_0_0_189", kSourceContext = loc("LogregTorchSamba.cpp":122:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 8 : i64, shape = [60, 136], vector_transpose = 1 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_0_0_189"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":122:0)}
  }
  module @tbuf1u_0_0_190  {
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
      }) {kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kIndexRd", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":124:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kIndexRd"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":131:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf1u_0_0_190", kSourceContext = loc("LogregTorchSamba.cpp":131:0), params = {kDepth = 1 : i64, kLayout = {alignments = [], base_address = 0 : i64, dim_order = [0], format = 4 : i64, shape = [3], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1u_0_0_190"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":131:0)}
  }
  module @LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect attributes {rail.kMetapipeIterCount = 1 : i64}  {
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":142:0)}
  }
  module @tbuf2u_0_0_194  {
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
        %19 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr", kLanes = [], kPortName = "1000", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_0_0_194", sym_name = "1000"} : () -> i1
        "rail.send"(%13, %19) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr", kSourceContext = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp":161:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr"} : () -> ()
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
        %19 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "0", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_0_0_194", sym_name = "0"} : () -> i1
        "rail.inbuf"(%19, %13) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1, i1) -> ()
        %20 = "rail.io.control_in"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_0_0_194", sym_name = "1"} : () -> i1
        "rail.inbuf"(%20, %13) {kInit = 2 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1, i1) -> ()
        %21 = "rail.io.control_out"() {kCtxName = "kDefaultRead1", kLanes = [], kPortName = "1000", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_0_0_194", sym_name = "1000"} : () -> i1
        "rail.send"(%13, %21) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultRead1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), rail.kMetapipeIterCount = 1 : i64, sym_name = "kDefaultRead1"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":152:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf2u_0_0_194", kSourceContext = loc("LogregTorchSamba.cpp":152:0), params = {kDepth = 2 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [136, 3], vector_transpose = 1 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf2u_0_0_194"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":152:0)}
  }
  %0 = "rail.io.scalar_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd", kLanes = [], kPortName = "idx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_0_0_189", sym_name = "tbuf2u_0_0_189_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd_scalar_in_idx"} : () -> ui32
  %1 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_0_0_189", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_0_0_189_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd_vector_out_1001"} : () -> vector<32xbf16>
  %2 = "rail.io.scalar_out"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kIndexRd", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf1u_0_0_190", sym_name = "tbuf1u_0_0_190_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kIndexRd_scalar_out_1001"} : () -> ui32
  %3 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr", kLanes = [], kPortName = "8", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kUnitName = "tbuf2u_0_0_194", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf2u_0_0_194_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @"tbuf2u_0_0_189_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd_scalar_in_idx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kSrc = @"tbuf1u_0_0_190_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kIndexRd_scalar_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @"tbuf2u_0_0_194_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr_vector_in_8", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kSrc = @"tbuf2u_0_0_189_tbuffer_LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_0_0_189::@tbuf2u_0_0_189::@"LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd"::@"0", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kSrc = @tbuf2u_0_0_194::@tbuf2u_0_0_194::@"LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr"::@"1000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf2u_0_0_189::@tbuf2u_0_0_189::@"LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kLutRd"::@"1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":436:0), kSrc = @tbuf2u_0_0_194::@tbuf2u_0_0_194::@kDefaultRead1::@"1000"} : () -> ()
  module_terminator {kSourceContext = loc(unknown)}
}