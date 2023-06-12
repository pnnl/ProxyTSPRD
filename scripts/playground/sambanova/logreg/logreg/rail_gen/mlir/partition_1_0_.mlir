module @partition_1_0_ attributes {rail.kChipId = 0 : i64, rail.kIsSectionModule = true, rail.kSectionId = 1 : i64}  {
  module @tbuf1a_1_0_99  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 500 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> ()
        %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %10, %11, %12, %13, %14) {kDim = 1 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kFrontDynamicWriteCtx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kFrontDynamicWriteCtx"} : () -> ()
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 12 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 500 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : (ui32, ui32, ui32) -> ui32
        %12 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : (i1) -> i1
        "rail.iterchain"(%11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : (ui32, ui32) -> ()
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%11, %14, %15, %16, %17, %18) {kDim = 1 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kVecDim = 0 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        %19 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : (ui32) -> i1
        %20 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY", kLanes = [], kPortName = "phase2_strip_done", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), kUnitName = "tbuf1a_1_0_99", sym_name = "phase2_strip_done"} : () -> i1
        "rail.inbuf"(%20, %19) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0)} : () -> ()
      }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1469:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":259:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf1a_1_0_99", kSourceContext = loc("LogregTorchSamba.cpp":259:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[0, 64]], base_address = 0 : i64, dim_order = [0], format = 3 : i64, shape = [500], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_99"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":259:0)}
  }
  module @tbuf1a_1_0_100  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 500 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> ()
        %8 = "rail.ctrdone"(%7) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %9 = "rail.ctxdone"(%8) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %11 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %12 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %10, %11, %12, %13, %14) {kDim = 1 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kFrontDynamicWriteCtx", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kFrontDynamicWriteCtx"} : () -> ()
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 12 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 500 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : (ui32, ui32, ui32) -> ui32
        %12 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : (i1) -> i1
        "rail.iterchain"(%11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : (ui32, ui32) -> ()
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%11, %14, %15, %16, %17, %18) {kDim = 1 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kVecDim = 0 : i64} : (ui32, i1, i1, ui32, ui32, ui32) -> ()
        %19 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : (ui32) -> i1
        %20 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss", kLanes = [], kPortName = "phase2_strip_done", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), kUnitName = "tbuf1a_1_0_100", sym_name = "phase2_strip_done"} : () -> i1
        "rail.inbuf"(%20, %19) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0)} : () -> ()
      }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1502:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":270:0)} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf1a_1_0_100", kSourceContext = loc("LogregTorchSamba.cpp":270:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[0, 64]], base_address = 0 : i64, dim_order = [0], format = 9 : i64, shape = [500], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_100"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":270:0)}
  }
  module @tbuf1a_1_0_101  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 10 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 500 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %11, %14, %15, %16, %17, %18) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultWrite", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kDefaultWrite"} : () -> ()
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 2 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 500 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32, ui32, ui32) -> ui32
        %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 0 : i64} : () -> ui32
        %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 1 : i64} : () -> ui32
        %14 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 12 : i64} : () -> ui32
        %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 2 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32, ui32, ui32) -> ui32
        %16 = "rail.ctrdone"(%7) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32) -> i1
        %17 = "rail.ctxdone"(%16) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (i1) -> i1
        "rail.iterchain"(%7, %11, %15) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32, ui32, ui32) -> ()
        %18 = "rail.ctrdone"(%7) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32) -> i1
        %19 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "1000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kUnitName = "tbuf1a_1_0_101", sym_name = "1000"} : () -> i1
        "rail.send"(%18, %19) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (i1, i1) -> ()
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = true} : () -> i1
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = true} : () -> i1
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 0 : i64} : () -> ui32
        %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 0 : i64} : () -> ui32
        %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 0 : i64} : () -> ui32
        %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kValue = 10 : i64} : () -> ui32
        %26 = "rail.less_than"(%15, %25) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32, ui32) -> i1
        "rail.addr"(%15, %11, %20, %26, %22, %23, %24) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        %27 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32) -> i1
        %28 = "rail.ctrdone"(%7) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32) -> i1
        %29 = "rail.ctrdone"(%7) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (ui32) -> i1
        %30 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "phase0_strip_done", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kUnitName = "tbuf1a_1_0_101", sym_name = "phase0_strip_done"} : () -> i1
        %31 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "phase1_strip_done", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kUnitName = "tbuf1a_1_0_101", sym_name = "phase1_strip_done"} : () -> i1
        %32 = "rail.or"(%30, %31) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (i1, i1) -> i1
        "rail.inbuf"(%32, %27) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (i1, i1) -> ()
        %33 = "rail.io.control_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "phase3_strip_done", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kUnitName = "tbuf1a_1_0_101", sym_name = "phase3_strip_done"} : () -> i1
        "rail.inbuf"(%33, %28) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (i1, i1) -> ()
        %34 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "kSecondReplayDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), kUnitName = "tbuf1a_1_0_101", sym_name = "kSecondReplayDone"} : () -> i1
        "rail.send"(%28, %34) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0)} : () -> ()
      }) {kArithSplit = true, kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kPacingWindow = 12 : i64, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1362:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":281:0)} : () -> ()
    }) {kBankByDuplication = true, kFIFOMode = false, kName = "tbuf1a_1_0_101", kSourceContext = loc("LogregTorchSamba.cpp":281:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [10, 500], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_101"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":281:0)}
  }
  module @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss attributes {rail.kMetapipeIterCounts = [1]}  {
    module @tcompute0  {
      "rail.tcompute"() ( {
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0 : i64} : () -> ui16
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 32 : i64} : () -> ui16
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 500 : i64} : () -> ui16
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16, ui16) -> ui16
          %15 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1) -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0 : i64} : () -> ui16
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 1 : i64} : () -> ui16
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 12 : i64} : () -> ui16
          %20 = "rail.iterator"(%17, %18, %19) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16, ui16) -> ui16
          %21 = "rail.io.vector_in"() {kCtxName = "phase0", kLanes = [], kPortName = "0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase0_vector_in_0"} : () -> vector<32xbf16>
          %22 = "rail.io.vector_out"() {kCtxName = "phase0", kLanes = [], kPortName = "2000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase0_vector_out_2000"} : () -> vector<32xbf16>
          "rail.for_loop"(%14) ( {
            %27:2 = "rail.accumulator"() {kInitValue = 0xFFF0000000000000 : f64, kNumStages = 1 : i64, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : () -> (vector<32xbf16>, vector<1x32xbf16>)
            "rail.for_loop"(%20) ( {
              %28 = "rail.pop"(%21) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
              %29 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = -9.984000e+04 : bf16} : () -> bf16
              %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 10 : i64} : () -> ui16
              %31 = "rail.less_than"(%20, %30) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16) -> i1
              %32 = "rail.ifelse"(%31, %28, %29) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, vector<32xbf16>, bf16) -> vector<32xbf16>
              %33 = "rail.max"(%32, %27#0) {kInstructionStageType = 2 : i64, kIsAccumulated = true, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> vector<32xbf16>
              "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":678:0)} : () -> ()
            }) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":678:0), type = none} : (ui16) -> ()
            "rail.send"(%27#0, %22) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> ()
            "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":680:0)} : () -> ()
          }) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":680:0), type = none} : (ui16) -> ()
          %23 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          %24 = "rail.io.control_in"() {kCtxName = "phase0", kLanes = [], kPortName = "kBegin", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase0_control_in_kBegin"} : () -> i1
          "rail.inbuf"(%24, %23) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          %25 = "rail.io.control_out"() {kCtxName = "phase0", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase0_control_out_kDone"} : () -> i1
          %26 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          "rail.send"(%26, %25) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : () -> ()
        }) {kContextTableEntry = {kNetwork = 0 : i64}, kName = "phase0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), sym_name = "phase0"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0 : i64} : () -> ui16
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 1 : i64} : () -> ui16
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 192 : i64} : () -> ui16
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16, ui16) -> ui16
          %15 = "rail.io.vector_in"() {kCtxName = "phase1", kLanes = [], kPortName = "9000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase1_vector_in_9000"} : () -> vector<32xbf16>
          %16 = "rail.io.vector_in"() {kCtxName = "phase1", kLanes = [], kPortName = "6000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase1_vector_in_6000"} : () -> vector<32xbf16>
          %17 = "rail.io.vector_out"() {kCtxName = "phase1", kLanes = [], kPortName = "10000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase1_vector_out_10000"} : () -> vector<32xbf16>
          "rail.for_loop"(%14) ( {
            %22 = "rail.pop"(%16) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
            %23 = "rail.pop"(%15) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
            %24 = "rail.sub"(%23, %22) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> vector<32xbf16>
            %25 = "rail.exp"(%24) {kInstructionStageType = 3 : i64, kIsDataPathOp = true, kIsTailComplexOp = true, kIsUnaryOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
            "rail.send"(%25, %17) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> ()
            "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":718:0)} : () -> ()
          }) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":718:0), type = none} : (ui16) -> ()
          %18 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          %19 = "rail.io.control_in"() {kCtxName = "phase1", kLanes = [], kPortName = "kBegin", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase1_control_in_kBegin"} : () -> i1
          "rail.inbuf"(%19, %18) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          %20 = "rail.io.control_out"() {kCtxName = "phase1", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase1_control_out_kDone"} : () -> i1
          %21 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          "rail.send"(%21, %20) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : () -> ()
        }) {kContextTableEntry = {kNetwork = 0 : i64}, kName = "phase1", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), sym_name = "phase1"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0 : i64} : () -> ui16
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 32 : i64} : () -> ui16
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 500 : i64} : () -> ui16
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16, ui16) -> ui16
          %15 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1) -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0 : i64} : () -> ui16
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 1 : i64} : () -> ui16
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 12 : i64} : () -> ui16
          %20 = "rail.iterator"(%17, %18, %19) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16, ui16) -> ui16
          %21 = "rail.io.vector_in"() {kCtxName = "phase2", kLanes = [], kPortName = "12000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase2_vector_in_12000"} : () -> vector<32xbf16>
          %22 = "rail.io.vector_out"() {kCtxName = "phase2", kLanes = [], kPortName = "7000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase2_vector_out_7000"} : () -> vector<32xbf16>
          "rail.for_loop"(%14) ( {
            %27:2 = "rail.accumulator"() {kInitValue = 0.000000e+00 : f32, kNumStages = 1 : i64, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : () -> (vector<32xbf16>, vector<1x32xbf16>)
            "rail.for_loop"(%20) ( {
              %29 = "rail.pop"(%21) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
              %30 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0.000000e+00 : bf16} : () -> bf16
              %31 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 10 : i64} : () -> ui16
              %32 = "rail.less_than"(%20, %31) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16) -> i1
              %33 = "rail.ifelse"(%32, %29, %30) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, vector<32xbf16>, bf16) -> vector<32xbf16>
              %34 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 1.000000e+00 : bf16} : () -> bf16
              "rail.tcompute_fma"(%33, %34, %27#0) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsDataPathOp = true, kOpRWPattern2 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, bf16, vector<32xbf16>) -> ()
              "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":748:0)} : () -> ()
            }) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":748:0), type = none} : (ui16) -> ()
            %28 = "rail.recip"(%27#0) {kInstructionStageType = 3 : i64, kIsDataPathOp = true, kIsTailComplexOp = true, kIsUnaryOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
            "rail.send"(%28, %22) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> ()
            "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":751:0)} : () -> ()
          }) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":751:0), type = none} : (ui16) -> ()
          %23 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          %24 = "rail.io.control_in"() {kCtxName = "phase2", kLanes = [], kPortName = "kBegin", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase2_control_in_kBegin"} : () -> i1
          "rail.inbuf"(%24, %23) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          %25 = "rail.io.control_out"() {kCtxName = "phase2", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase2_control_out_kDone"} : () -> i1
          %26 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          "rail.send"(%26, %25) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : () -> ()
        }) {kContextTableEntry = {kNetwork = 0 : i64}, kName = "phase2", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), sym_name = "phase2"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0 : i64} : () -> ui16
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 32 : i64} : () -> ui16
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 500 : i64} : () -> ui16
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16, ui16) -> ui16
          %15 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1) -> i1
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0 : i64} : () -> ui16
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 1 : i64} : () -> ui16
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 12 : i64} : () -> ui16
          %20 = "rail.iterator"(%17, %18, %19) {Par = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16, ui16, ui16) -> ui16
          %21 = "rail.io.vector_in"() {kCtxName = "phase3", kLanes = [], kPortName = "21000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase3_vector_in_21000"} : () -> vector<32xi16>
          %22 = "rail.io.vector_in"() {kCtxName = "phase3", kLanes = [], kPortName = "16000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase3_vector_in_16000"} : () -> vector<32xbf16>
          %23 = "rail.io.vector_in"() {kCtxName = "phase3", kLanes = [], kPortName = "17000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase3_vector_in_17000"} : () -> vector<32xbf16>
          %24 = "rail.io.vector_in"() {kCtxName = "phase3", kLanes = [], kPortName = "20000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase3_vector_in_20000"} : () -> vector<32xbf16>
          %25 = "rail.io.vector_out"() {kCtxName = "phase3", kLanes = [], kPortName = "15000", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase3_vector_out_15000"} : () -> vector<32xbf16>
          "rail.for_loop"(%14) ( {
            "rail.for_loop"(%20) ( {
              %30 = "rail.pop"(%21) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xi16>) -> vector<32xi16>
              %31 = "rail.equal"(%30, %20) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xi16>, ui16) -> vector<32xi1>
              %32 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 1.000000e+00 : bf16} : () -> bf16
              %33 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kValue = 0.000000e+00 : bf16} : () -> bf16
              %34 = "rail.ifelse"(%31, %32, %33) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xi1>, bf16, bf16) -> vector<32xbf16>
              %35 = "rail.pop"(%22) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
              %36 = "rail.pop"(%23) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
              %37 = "rail.mul"(%35, %36) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> vector<32xbf16>
              %38 = "rail.sub"(%37, %34) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> vector<32xbf16>
              %39 = "rail.pop"(%24) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>) -> vector<32xbf16>
              %40 = "rail.mul"(%38, %39) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> vector<32xbf16>
              "rail.send"(%40, %25) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (vector<32xbf16>, vector<32xbf16>) -> ()
              "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":849:0)} : () -> ()
            }) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":849:0), type = none} : (ui16) -> ()
            "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":850:0)} : () -> ()
          }) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":850:0), type = none} : (ui16) -> ()
          %26 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          %27 = "rail.io.control_in"() {kCtxName = "phase3", kLanes = [], kPortName = "kBegin", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_control_in_kBegin"} : () -> i1
          "rail.inbuf"(%27, %26) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          %28 = "rail.io.control_out"() {kCtxName = "phase3", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_control_out_kDone"} : () -> i1
          %29 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (ui16) -> i1
          "rail.send"(%29, %28) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : () -> ()
        }) {kContextTableEntry = {kNetwork = 1 : i64}, kName = "phase3", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), sym_name = "phase3"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)} : () -> ()
      }) {kDataFormat = "BF16", kDisableContextSplit = true, kName = "tcompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), sym_name = "tcompute0"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0)}
    }
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_control_in_kBegin, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kSrc = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_in_kBegin, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kSrc = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_in_kBegin, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kSrc = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_in_kBegin, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1865:0), kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_kDone} : () -> ()
    module @tbuf_tmp0  {
      "rail.buffer"() ( {
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 500 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32) -> i1
          %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (i1) -> i1
          "rail.iterchain"(%14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 13 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = true} : () -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%17, %14, %18, %19, %20, %21, %22) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %23 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32) -> i1
          %24 = "rail.io.control_in"() {kCtxName = "phaseW0", kLanes = [], kPortName = "kBeginFromTCompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute0"} : () -> i1
          "rail.inbuf"(%24, %23) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (i1, i1) -> ()
          %25 = "rail.io.control_out"() {kCtxName = "phaseW0", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kDone"} : () -> i1
          "rail.send"(%16, %25) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %26 = "rail.io.control_in"() {kCtxName = "phaseW0", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%26, %16) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : () -> ()
        }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kDisableFullStall = true, kName = "phaseW0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), sym_name = "phaseW0"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 12 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 32 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 500 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1) -> i1
          "rail.iterchain"(%18, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 13 : i64} : () -> ui32
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = true} : () -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = true} : () -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%21, %18, %22, %23, %24, %25, %26) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32) -> i1
          %28 = "rail.io.control_in"() {kCtxName = "phaseRMax", kLanes = [], kPortName = "kBeginFromTCompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute0"} : () -> i1
          "rail.inbuf"(%28, %27) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %29 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32) -> i1
          %30 = "rail.io.control_in"() {kCtxName = "phaseRMax", kLanes = [], kPortName = "kBeginFromTCompute1", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute1"} : () -> i1
          "rail.inbuf"(%30, %29) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %31 = "rail.io.control_in"() {kCtxName = "phaseRMax", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%31, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : () -> ()
        }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitCtxSwitch = ["phaseRExp0"], kExplicitMemPort = 1 : i64, kName = "phaseRMax", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), sym_name = "phaseRMax"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 12 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 32 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 500 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0)} : (ui32, ui32, ui32) -> ui32
          "rail.iterchain"(%18, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0)} : (ui32, ui32) -> ()
          %19 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0)} : (i1) -> i1
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 0 : i64} : () -> ui32
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = true} : () -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = true} : () -> i1
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 0 : i64} : () -> ui32
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 0 : i64} : () -> ui32
          %27 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = 0 : i64} : () -> ui32
          %28 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kValue = false} : () -> i1
          "rail.addr"(%21, %22, %28, %24, %25, %26, %27) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %29 = "rail.io.control_in"() {kCtxName = "phase_rd_dummy", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%29, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %30 = "rail.io.control_out"() {kCtxName = "phase_rd_dummy", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kDone"} : () -> i1
          "rail.send"(%20, %30) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0)} : () -> ()
        }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitCtxSwitch = ["phaseRSumRecip"], kExplicitMemPort = 2 : i64, kName = "phase_rd_dummy", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1010:0), sym_name = "phase_rd_dummy"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 12 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 32 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 500 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : (i1) -> i1
          "rail.iterchain"(%18, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : (ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = true} : () -> i1
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = true} : () -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%14, %18, %21, %22, %23, %24, %25) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %26 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : (ui32) -> i1
          %27 = "rail.io.control_in"() {kCtxName = "phaseW1", kLanes = [], kPortName = "kBeginFromTCompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute0"} : () -> i1
          "rail.inbuf"(%27, %26) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : (i1, i1) -> ()
          %28 = "rail.io.control_in"() {kCtxName = "phaseW1", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%28, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %29 = "rail.io.control_out"() {kCtxName = "phaseW1", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kDone"} : () -> i1
          "rail.send"(%20, %29) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0)} : () -> ()
        }) {kConcurrencyGroup = 1 : i64, kContextType = "kRolled", kDisableFullStall = true, kName = "phaseW1", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":902:0), sym_name = "phaseW1"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 500 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 12 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (i1) -> i1
          "rail.iterchain"(%14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = true} : () -> i1
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = true} : () -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%18, %14, %21, %22, %23, %24, %25) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %26 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32) -> i1
          %27 = "rail.io.control_in"() {kCtxName = "phaseRExp0", kLanes = [], kPortName = "kBeginFromTCompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute0"} : () -> i1
          "rail.inbuf"(%27, %26) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (i1, i1) -> ()
          %28 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32) -> i1
          %29 = "rail.io.control_in"() {kCtxName = "phaseRExp0", kLanes = [], kPortName = "kBeginFromTCompute1", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute1"} : () -> i1
          "rail.inbuf"(%29, %28) {kInit = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (i1, i1) -> ()
          %30 = "rail.io.control_in"() {kCtxName = "phaseRExp0", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%30, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %31 = "rail.io.control_out"() {kCtxName = "phaseRExp0", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kDone"} : () -> i1
          "rail.send"(%20, %31) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : () -> ()
        }) {kConcurrencyGroup = 1 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitCtxSwitch = ["phaseRSumRecip"], kExplicitMemPort = 1 : i64, kName = "phaseRExp0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), sym_name = "phaseRExp0"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 500 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32) -> i1
          %16 = "rail.ctxdone"(%15) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (i1) -> i1
          "rail.iterchain"(%14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32) -> ()
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 12 : i64} : () -> ui32
          %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = true} : () -> i1
          %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = true} : () -> i1
          %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%17, %14, %18, %19, %20, %21, %22) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %23 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (ui32) -> i1
          %24 = "rail.io.control_in"() {kCtxName = "phaseW2", kLanes = [], kPortName = "kBeginFromTCompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute0"} : () -> i1
          "rail.inbuf"(%24, %23) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : (i1, i1) -> ()
          %25 = "rail.io.control_in"() {kCtxName = "phaseW2", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%25, %16) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %26 = "rail.io.control_out"() {kCtxName = "phaseW2", kLanes = [], kPortName = "kDone", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kDone"} : () -> i1
          "rail.send"(%16, %26) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0)} : () -> ()
        }) {kConcurrencyGroup = 2 : i64, kContextType = "kRolled", kDisableFullStall = true, kExplicitCtxSwitch = ["phaseW0"], kName = "phaseW2", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":871:0), sym_name = "phaseW2"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 32 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 500 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 1 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 12 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (i1) -> i1
          "rail.iterchain"(%14, %18) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = true} : () -> i1
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = true} : () -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%18, %14, %21, %22, %23, %24, %25) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %26 = "rail.ctrdone"(%14) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (ui32) -> i1
          %27 = "rail.io.control_in"() {kCtxName = "phaseRExp1", kLanes = [], kPortName = "kBeginFromTCompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute0"} : () -> i1
          "rail.inbuf"(%27, %26) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : (i1, i1) -> ()
          %28 = "rail.io.control_in"() {kCtxName = "phaseRExp1", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%28, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %29 = "rail.io.control_in"() {kCtxName = "phaseRExp1", kLanes = [], kName = "kBegin1", kPortName = "kBegin1", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin1"} : () -> i1
          "rail.inbuf"(%29, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0)} : () -> ()
        }) {kConcurrencyGroup = 2 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitCtxSwitch = ["phaseRMax"], kExplicitMemPort = 1 : i64, kName = "phaseRExp1", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":969:0), sym_name = "phaseRExp1"} : () -> ()
        "rail.context"() ( {
          %11 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %12 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 1 : i64} : () -> ui32
          %13 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 12 : i64} : () -> ui32
          %14 = "rail.iterator"(%11, %12, %13) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32, ui32, ui32) -> ui32
          %15 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 32 : i64} : () -> ui32
          %17 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 500 : i64} : () -> ui32
          %18 = "rail.iterator"(%15, %16, %17) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32, ui32, ui32) -> ui32
          %19 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32) -> i1
          %20 = "rail.ctxdone"(%19) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1) -> i1
          "rail.iterchain"(%18, %14) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32, ui32) -> ()
          %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 12 : i64} : () -> ui32
          %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = true} : () -> i1
          %23 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = true} : () -> i1
          %24 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %25 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          %26 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kValue = 0 : i64} : () -> ui32
          "rail.addr"(%21, %18, %22, %23, %24, %25, %26) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
          %27 = "rail.ctrdone"(%18) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (ui32) -> i1
          %28 = "rail.io.control_in"() {kCtxName = "phaseRSumRecip", kLanes = [], kPortName = "kBeginFromTCompute0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBeginFromTCompute0"} : () -> i1
          "rail.inbuf"(%28, %27) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %29 = "rail.io.control_in"() {kCtxName = "phaseRSumRecip", kLanes = [], kName = "kBegin0", kPortName = "kBegin0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin0"} : () -> i1
          "rail.inbuf"(%29, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          %30 = "rail.io.control_in"() {kCtxName = "phaseRSumRecip", kLanes = [], kName = "kBegin1", kPortName = "kBegin1", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", sym_name = "kBegin1"} : () -> i1
          "rail.inbuf"(%30, %20) {kInit = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : (i1, i1) -> ()
          "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0)} : () -> ()
        }) {kConcurrencyGroup = 2 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kDisableEmptyStallEarly = false, kExplicitCtxSwitch = ["phase_rd_dummy"], kExplicitMemPort = 2 : i64, kName = "phaseRSumRecip", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), sym_name = "phaseRSumRecip"} : () -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1761:0)} : () -> ()
      }) {kFIFOMode = false, kImplicitControl = false, kName = "tbuf_tmp0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1761:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [14, 500], vector_transpose = 1 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf_tmp0"} : () -> ()
      module_terminator {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1761:0)}
    }
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseW1::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW0::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRMax::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW0::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phase_rd_dummy::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW0::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseW2::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW1::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRExp0::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW1::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRExp1::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW2::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRExp1::@kBegin1, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseRExp0::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRSumRecip::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW2::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRSumRecip::@kBegin1, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phase_rd_dummy::@kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseW0::@kBegin0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0::@tbuf_tmp0::@phaseW2::@kDone} : () -> ()
    %4 = "rail.io.vector_in"() {kCtxName = "phaseW0", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp0_tbuffer_phaseW0_vector_in_8"} : () -> vector<32xbf16>
    "rail.TConnect"() {kDst = @tbuf_tmp0_tbuffer_phaseW0_vector_in_8, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_vector_out_2000} : () -> ()
    %5 = "rail.io.vector_out"() {kCtxName = "phaseRMax", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp0_tbuffer_phaseRMax_vector_out_1001"} : () -> vector<32xbf16>
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRMax::@kBeginFromTCompute0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRMax::@kBeginFromTCompute1, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseW1::@kBeginFromTCompute0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_vector_in_6000, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0_tbuffer_phaseRMax_vector_out_1001} : () -> ()
    %6 = "rail.io.vector_in"() {kCtxName = "phaseW1", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp0_tbuffer_phaseW1_vector_in_8"} : () -> vector<32xbf16>
    "rail.TConnect"() {kDst = @tbuf_tmp0_tbuffer_phaseW1_vector_in_8, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_vector_out_10000} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRExp0::@kBeginFromTCompute0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRExp0::@kBeginFromTCompute1, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseW2::@kBeginFromTCompute0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_out_kDone} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRSumRecip::@kBeginFromTCompute0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_kDone} : () -> ()
    %7 = "rail.io.vector_out"() {kCtxName = "phaseRExp0", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp0_tbuffer_phaseRExp0_vector_out_1001"} : () -> vector<32xbf16>
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_vector_in_12000, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0_tbuffer_phaseRExp0_vector_out_1001} : () -> ()
    %8 = "rail.io.vector_in"() {kCtxName = "phaseW2", kLanes = [], kPortName = "8", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp0_tbuffer_phaseW2_vector_in_8"} : () -> vector<32xbf16>
    "rail.TConnect"() {kDst = @tbuf_tmp0_tbuffer_phaseW2_vector_in_8, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_vector_out_7000} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseRExp1::@kBeginFromTCompute0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_kDone} : () -> ()
    %9 = "rail.io.vector_out"() {kCtxName = "phaseRExp1", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp0_tbuffer_phaseRExp1_vector_out_1001"} : () -> vector<32xbf16>
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_vector_in_16000, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0_tbuffer_phaseRExp1_vector_out_1001} : () -> ()
    %10 = "rail.io.vector_out"() {kCtxName = "phaseRSumRecip", kLanes = [], kPortName = "1001", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kUnitName = "tbuf_tmp0", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp0_tbuffer_phaseRSumRecip_vector_out_1001"} : () -> vector<32xbf16>
    "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_vector_in_17000, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tbuf_tmp0_tbuffer_phaseRSumRecip_vector_out_1001} : () -> ()
    "rail.TConnect"() {kDst = @tbuf_tmp0::@tbuf_tmp0::@phaseW0::@kBeginFromTCompute0, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1039:0), kSrc = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_kDone} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":296:0)}
  }
  module @tbuf1a_1_0_114  {
    "rail.buffer"() ( {
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 12 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 500 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (ui32, ui32, ui32) -> ui32
        %12 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (i1) -> i1
        "rail.iterchain"(%11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (ui32, ui32) -> ()
        %14 = "rail.io.control_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0", kLanes = [], kPortName = "done", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kUnitName = "tbuf1a_1_0_114", sym_name = "done"} : () -> i1
        %15 = "rail.ctrdone"(%11) {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (ui32) -> i1
        "rail.send"(%15, %14) {kOpRWPattern1 = "kWriteOperand", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (i1, i1) -> ()
        %16 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 10 : i64} : () -> ui32
        %17 = "rail.less_than"(%7, %16) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : (ui32, ui32) -> i1
        %18 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = true} : () -> i1
        %20 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 0 : i64} : () -> ui32
        %21 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 0 : i64} : () -> ui32
        %22 = "rail.const"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %11, %17, %19, %20, %21, %22) {kDim = 2 : i8, kMemOp = true, kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), kVecDim = 1 : i64} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0)} : () -> ()
      }) {kArithSplit = true, kContextType = "kRolled", kDispatchIds = {data = [[0 : i32]], dims = [1]}, kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0", kSourceContext = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp":1418:0), rail.kMetapipeIterCounts = [1], sym_name = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0"} : () -> ()
      "rail.context"() ( {
        %4 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %5 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 1 : i64} : () -> ui32
        %6 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 10 : i64} : () -> ui32
        %7 = "rail.iterator"(%4, %5, %6) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        %8 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %9 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 32 : i64} : () -> ui32
        %10 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 500 : i64} : () -> ui32
        %11 = "rail.iterator"(%8, %9, %10) {Par = -1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, ui32) -> ui32
        "rail.iterchain"(%11, %7) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32) -> ()
        %12 = "rail.ctrdone"(%11) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %17 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        %18 = "rail.const"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kValue = 0 : i64} : () -> ui32
        "rail.addr"(%7, %11, %14, %15, %16, %17, %18) {kDim = 2 : i8, kMemOp = false, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : (ui32, ui32, i1, i1, ui32, ui32, ui32) -> ()
        "rail.terminator"() {kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0)} : () -> ()
      }) {kContextType = "kRolled", kName = "kDefaultRead1", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), rail.kMetapipeIterCounts = [1], sym_name = "kDefaultRead1"} : () -> ()
      "rail.terminator"() {kSourceContext = loc("LogregTorchSamba.cpp":307:0)} : () -> ()
    }) {kBankByDuplication = true, kFIFOMode = false, kName = "tbuf1a_1_0_114", kSourceContext = loc("LogregTorchSamba.cpp":307:0), params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [0, 1], format = 9 : i64, shape = [10, 500], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf1a_1_0_114"} : () -> ()
    module_terminator {kSourceContext = loc("LogregTorchSamba.cpp":307:0)}
  }
  %0 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf1a_1_0_99", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf1a_1_0_99_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY_vector_out_1001"} : () -> vector<32xi16>
  "rail.TConnect"() {kDst = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_vector_in_21000, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @"tbuf1a_1_0_99_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf1a_1_0_99::@tbuf1a_1_0_99::@"LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputY"::@phase2_strip_done, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_kDone} : () -> ()
  %1 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf1a_1_0_100", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf1a_1_0_100_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss_vector_out_1001"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_vector_in_20000, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @"tbuf1a_1_0_100_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf1a_1_0_100::@tbuf1a_1_0_100::@"LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss"::@phase2_strip_done, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_kDone} : () -> ()
  %2 = "rail.io.vector_out"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0", kLanes = [], kPortName = "1001", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf1a_1_0_101", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf1a_1_0_101_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0_vector_out_1001"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_vector_in_0, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @"tbuf1a_1_0_101_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_vector_in_9000, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @"tbuf1a_1_0_101_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0_vector_out_1001"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf1a_1_0_101::@tbuf1a_1_0_101::@"LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0"::@phase0_strip_done, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_control_out_kDone} : () -> ()
  "rail.TConnect"() {kDst = @tbuf1a_1_0_101::@tbuf1a_1_0_101::@"LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0"::@phase1_strip_done, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_out_kDone} : () -> ()
  "rail.TConnect"() {kDst = @tbuf1a_1_0_101::@tbuf1a_1_0_101::@"LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0"::@phase3_strip_done, kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_kDone} : () -> ()
  %3 = "rail.io.vector_in"() {kCtxName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0", kLanes = [], kPortName = "8", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kUnitName = "tbuf1a_1_0_114", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf1a_1_0_114_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @"tbuf1a_1_0_114_tbuffer_LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_vector_in_8", kSourceContext = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp":469:0), kSrc = @LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss::@tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_vector_out_15000} : () -> ()
  module_terminator {kSourceContext = loc(unknown)}
}