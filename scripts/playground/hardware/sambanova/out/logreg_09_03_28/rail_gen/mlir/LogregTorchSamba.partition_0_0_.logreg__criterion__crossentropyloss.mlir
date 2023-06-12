module @LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss  {
  module @tcompute0  {
    "rail.tcompute"() ( {
      "rail.tcompute_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 32 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1 : i64} : () -> i64
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 12 : i64} : () -> i64
        %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, i64, i64) -> i64
        %18 = "rail.io.vector_in"() {kCtxName = "phase0", kLanes = [], kPortName = "4000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase0_vector_in_4000"} : () -> vector<32xbf16>
        %19 = "rail.io.vector_out"() {kCtxName = "phase0", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase0_vector_out_3000"} : () -> vector<32xbf16>
        "rail.for_loop"(%11) ( {
          %24:2 = "rail.accumulator"() {kInitValue = 0xFFF0000000000000 : f64, kNumStages = 1 : i64, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : () -> (vector<32xbf16>, vector<1x32xbf16>)
          "rail.for_loop"(%17) ( {
            %25 = "rail.pop"(%18) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>) -> vector<32xbf16>
            %26 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 10 : si16} : () -> si16
            %27 = "rail.less_than"(%17, %26) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, si16) -> i1
            %28 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = -9.984000e+04 : bf16} : () -> bf16
            %29 = "rail.ifelse"(%27, %25, %28) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, vector<32xbf16>, bf16) -> vector<32xbf16>
            %30 = "rail.max"(%29, %24#0) {kInstructionStageType = 2 : i64, kIsAccumulated = true, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>, vector<32xbf16>) -> vector<32xbf16>
            "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:614:0"} : () -> ()
          }) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:614:0", type = none} : (i64) -> ()
          "rail.send"(%24#0, %19) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>, vector<32xbf16>) -> ()
          "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:616:0"} : () -> ()
        }) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:616:0", type = none} : (i64) -> ()
        %20 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        %21 = "rail.io.control_in"() {kCtxName = "phase0", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase0_control_in_3000"} : () -> i1
        "rail.inbuf"(%21, %20) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "phase0", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase0_control_out_2000"} : () -> i1
        %23 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        "rail.send"(%23, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : () -> ()
      }) {kContextTableEntry = {kNetwork = 0 : i64}, kName = "phase0", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", sym_name = "phase0"} : () -> ()
      "rail.tcompute_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 12 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, i64, i64) -> i64
        %12 = "rail.io.vector_in"() {kCtxName = "phase1", kLanes = [], kPortName = "8000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase1_vector_in_8000"} : () -> vector<32xbf16>
        %13 = "rail.io.vector_in"() {kCtxName = "phase1", kLanes = [], kPortName = "9000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase1_vector_in_9000"} : () -> vector<32xbf16>
        %14 = "rail.io.vector_out"() {kCtxName = "phase1", kLanes = [], kPortName = "13000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase1_vector_out_13000"} : () -> vector<32xbf16>
        "rail.for_loop"(%11) ( {
          %19 = "rail.pop"(%13) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>) -> vector<32xbf16>
          %20 = "rail.pop"(%12) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>) -> vector<32xbf16>
          %21 = "rail.sub"(%20, %19) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>, vector<32xbf16>) -> vector<32xbf16>
          %22 = "rail.exp"(%21) {kInstructionStageType = 3 : i64, kIsDataPathOp = true, kIsTailComplexOp = true, kIsUnaryOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>) -> vector<32xbf16>
          "rail.send"(%22, %14) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>, vector<32xbf16>) -> ()
          "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:653:0"} : () -> ()
        }) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:653:0", type = none} : (i64) -> ()
        %15 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        %16 = "rail.io.control_in"() {kCtxName = "phase1", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase1_control_in_3000"} : () -> i1
        "rail.inbuf"(%16, %15) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        %17 = "rail.io.control_out"() {kCtxName = "phase1", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase1_control_out_2000"} : () -> i1
        %18 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        "rail.send"(%18, %17) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : () -> ()
      }) {kContextTableEntry = {kNetwork = 0 : i64}, kName = "phase1", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", sym_name = "phase1"} : () -> ()
      "rail.tcompute_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 32 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1 : i64} : () -> i64
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 10 : i64} : () -> i64
        %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, i64, i64) -> i64
        %18 = "rail.io.vector_in"() {kCtxName = "phase2", kLanes = [], kPortName = "15000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase2_vector_in_15000"} : () -> vector<32xbf16>
        %19 = "rail.io.vector_out"() {kCtxName = "phase2", kLanes = [], kPortName = "17000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", kVectorLengthInBytes = 64 : i64, sym_name = "tcompute0_tcompute_phase2_vector_out_17000"} : () -> vector<32xbf16>
        "rail.for_loop"(%11) ( {
          %24:2 = "rail.accumulator"() {kInitValue = 0.000000e+00 : f32, kNumStages = 1 : i64, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : () -> (vector<32xbf16>, vector<1x32xbf16>)
          "rail.for_loop"(%17) ( {
            %26 = "rail.pop"(%18) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>) -> vector<32xbf16>
            %27 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 10 : si16} : () -> si16
            %28 = "rail.less_than"(%17, %27) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, si16) -> i1
            %29 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0.000000e+00 : bf16} : () -> bf16
            %30 = "rail.ifelse"(%28, %26, %29) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, vector<32xbf16>, bf16) -> vector<32xbf16>
            %31 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1.000000e+00 : bf16} : () -> bf16
            "rail.tcompute_fma"(%30, %31, %24#0) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsDataPathOp = true, kOpRWPattern2 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>, bf16, vector<32xbf16>) -> ()
            "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:686:0"} : () -> ()
          }) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:686:0", type = none} : (i64) -> ()
          %25 = "rail.ln"(%24#0) {kInstructionStageType = 3 : i64, kIsDataPathOp = true, kIsTailComplexOp = true, kIsUnaryOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>) -> vector<32xbf16>
          "rail.send"(%25, %19) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (vector<32xbf16>, vector<32xbf16>) -> ()
          "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:689:0"} : () -> ()
        }) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:689:0", type = none} : (i64) -> ()
        %20 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        %21 = "rail.io.control_in"() {kCtxName = "phase2", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase2_control_in_3000"} : () -> i1
        "rail.inbuf"(%21, %20) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "phase2", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase2_control_out_2000"} : () -> i1
        %23 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        "rail.send"(%23, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : () -> ()
      }) {kContextTableEntry = {kNetwork = 0 : i64}, kName = "phase2", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", sym_name = "phase2"} : () -> ()
      "rail.tcompute_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64, i64, i64) -> i64
        %12 = "rail.io.scalar_in"() {kCtxName = "phase3", kLanes = [], kPortName = "21000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_scalar_in_21000"} : () -> bf16
        %13 = "rail.io.scalar_in"() {kCtxName = "phase3", kLanes = [], kPortName = "25000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_scalar_in_25000"} : () -> bf16
        %14 = "rail.io.scalar_in"() {kCtxName = "phase3", kLanes = [], kPortName = "10000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_scalar_in_10000"} : () -> bf16
        %15 = "rail.io.scalar_in"() {kCtxName = "phase3", kLanes = [], kPortName = "23000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_scalar_in_23000"} : () -> si16
        %16 = "rail.io.scalar_out"() {kCtxName = "phase3", kLanes = [], kPortName = "31000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_scalar_out_31000"} : () -> bf16
        "rail.for_loop"(%11) ( {
          %21 = "rail.pop"(%12) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (bf16) -> bf16
          %22 = "rail.pop"(%13) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (bf16) -> bf16
          %23 = "rail.pop"(%15) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (si16) -> si16
          %24 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = -1 : si16} : () -> si16
          %25 = "rail.equal"(%23, %24) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (si16, si16) -> i1
          %26 = "rail.pop"(%14) {kInstructionStageType = 1 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (bf16) -> bf16
          %27 = "rail.sub"(%22, %26) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (bf16, bf16) -> bf16
          %28 = "rail.sub"(%21, %27) {kInstructionStageType = 2 : i64, kIsArithmetic = true, kIsBinaryOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (bf16, bf16) -> bf16
          %29 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kValue = 0.000000e+00 : bf16} : () -> bf16
          %30 = "rail.ifelse"(%25, %29, %28) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, bf16, bf16) -> bf16
          "rail.send"(%30, %16) {kInstructionStageType = 0 : i64, kIsDataPathOp = true, kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (bf16, bf16) -> ()
          "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:755:0"} : () -> ()
        }) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:755:0", type = none} : (i64) -> ()
        %17 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        %18 = "rail.io.control_in"() {kCtxName = "phase3", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_control_in_3000"} : () -> i1
        "rail.inbuf"(%18, %17) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        %19 = "rail.io.control_out"() {kCtxName = "phase3", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kUnitName = "tcompute0", sym_name = "tcompute0_tcompute_phase3_control_out_2000"} : () -> i1
        %20 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i64) -> i1
        "rail.send"(%20, %19) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : () -> ()
      }) {kContextTableEntry = {kNetwork = 1 : i64}, kName = "phase3", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", sym_name = "phase3"} : () -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"} : () -> ()
    }) {kDataFormat = "BF16", kName = "tcompute0", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", sym_name = "tcompute0"} : () -> ()
    module_terminator {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0"}
  }
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_control_in_3000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kSrc = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_2000} : () -> ()
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_in_3000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kSrc = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_control_out_2000} : () -> ()
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_in_3000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kSrc = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_out_2000} : () -> ()
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_in_3000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2086:0", kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_2000} : () -> ()
  module @tbuf_tmp  {
    "rail.buffer"() ( {
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 32 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i1) -> i1
        "rail.iterchain"(%11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 12 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 0 : i64} : () -> i64
        %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%14, %11, %15, %16, %17) {kDim = 2 : i8, kMemOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
        %18 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i64) -> i1
        %19 = "rail.io.control_in"() {kCtxName = "phase_w0", kLanes = [], kPortName = "6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kUnitName = "tbuf_tmp", sym_name = "6000"} : () -> i1
        "rail.inbuf"(%19, %18) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i1, i1) -> ()
        %20 = "rail.io.control_in"() {kCtxName = "phase_w0", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%20, %13) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %21 = "rail.io.control_in"() {kCtxName = "phase_w0", kLanes = [], kPortName = "3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3001"} : () -> i1
        "rail.inbuf"(%21, %13) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "phase_w0", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : () -> ()
      }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kDisableFullStall = true, kName = "phase_w0", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", sym_name = "phase_w0"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 12 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : (i64, i64, i64) -> i64
        %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 0 : i64} : () -> i64
        %13 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 32 : i64} : () -> i64
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 1 : i64} : () -> i64
        %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : (i64, i64, i64) -> i64
        %16 = "rail.ctrdone"(%15) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : (i64) -> i1
        %17 = "rail.ctxdone"(%16) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : (i1) -> i1
        "rail.iterchain"(%15, %11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : (i64, i64) -> ()
        %18 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 12 : i64} : () -> i64
        %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = true} : () -> i1
        %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 0 : i64} : () -> i64
        %21 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%18, %15, %19, %20, %21) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
        %22 = "rail.ctrdone"(%15) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : (i64) -> i1
        %23 = "rail.io.control_in"() {kCtxName = "phase1_R_max", kLanes = [], kPortName = "6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", kUnitName = "tbuf_tmp", sym_name = "6000"} : () -> i1
        "rail.inbuf"(%23, %22) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : (i1, i1) -> ()
        %24 = "rail.io.control_in"() {kCtxName = "phase1_R_max", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%24, %17) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %25 = "rail.io.control_out"() {kCtxName = "phase1_R_max", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%17, %25) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0"} : () -> ()
      }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "phase1_R_max", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:947:0", sym_name = "phase1_R_max"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0"} : (i1) -> i1
        "rail.iterchain"(%11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0"} : (i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = 0 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = 0 : i64} : () -> i64
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = false} : () -> i1
        %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = 0 : i64} : () -> i64
        %18 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%14, %15, %16, %17, %18) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
        %19 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0"} : (i64) -> i1
        %20 = "rail.io.control_in"() {kCtxName = "phase_rd_dummy", kLanes = [], kPortName = "dummy_wire", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", kUnitName = "tbuf_tmp", sym_name = "dummy_wire"} : () -> i1
        "rail.inbuf"(%20, %19) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0"} : (i1, i1) -> ()
        %21 = "rail.io.control_in"() {kCtxName = "phase_rd_dummy", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%21, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "phase_rd_dummy", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0"} : () -> ()
      }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 2 : i64, kName = "phase_rd_dummy", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:985:0", sym_name = "phase_rd_dummy"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 12 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0"} : (i64, i64, i64) -> i64
        %12 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 0 : i64} : () -> i64
        %13 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 32 : i64} : () -> i64
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 1 : i64} : () -> i64
        %15 = "rail.iterator"(%12, %13, %14) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0"} : (i64, i64, i64) -> i64
        %16 = "rail.ctrdone"(%15) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0"} : (i64) -> i1
        %17 = "rail.ctxdone"(%16) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0"} : (i1) -> i1
        "rail.iterchain"(%15, %11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0"} : (i64, i64) -> ()
        %18 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 0 : i64} : () -> i64
        %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%11, %15, %18, %19, %20) {kDim = 2 : i8, kMemOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
        %21 = "rail.io.control_in"() {kCtxName = "phase_w1", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%21, %17) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "phase_w1", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%17, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0"} : () -> ()
      }) {kConcurrencyGroup = 1 : i64, kContextType = "kRolled", kDisableFullStall = true, kName = "phase_w1", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:928:0", sym_name = "phase_w1"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 32 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : (i1) -> i1
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 0 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 1 : i64} : () -> i64
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 10 : i64} : () -> i64
        %17 = "rail.iterator"(%14, %15, %16) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : (i64, i64, i64) -> i64
        "rail.iterchain"(%11, %17) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : (i64, i64) -> ()
        %18 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 0 : i64} : () -> i64
        %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%17, %11, %18, %19, %20) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
        %21 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : (i64) -> i1
        %22 = "rail.io.control_in"() {kCtxName = "phase2_R_exp", kLanes = [], kPortName = "6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", kUnitName = "tbuf_tmp", sym_name = "6000"} : () -> i1
        "rail.inbuf"(%22, %21) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : (i1, i1) -> ()
        %23 = "rail.io.control_in"() {kCtxName = "phase2_R_exp", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%23, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %24 = "rail.io.control_in"() {kCtxName = "phase2_R_exp", kLanes = [], kPortName = "3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3001"} : () -> i1
        "rail.inbuf"(%24, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %25 = "rail.io.control_in"() {kCtxName = "phase2_R_exp", kLanes = [], kPortName = "3002", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3002"} : () -> i1
        "rail.inbuf"(%25, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %26 = "rail.io.control_out"() {kCtxName = "phase2_R_exp", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %26) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0"} : () -> ()
      }) {kConcurrencyGroup = 1 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "phase2_R_exp", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1011:0", sym_name = "phase2_R_exp"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 32 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i1) -> i1
        "rail.iterchain"(%11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : (i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 13 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 0 : i64} : () -> i64
        %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%14, %11, %15, %16, %17) {kDim = 2 : i8, kMemOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", kVecDim = 1 : i64} : (i64, i64, i1, i64, i64) -> ()
        %18 = "rail.io.control_in"() {kCtxName = "phase_w2", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%18, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %19 = "rail.io.control_in"() {kCtxName = "phase_w2", kLanes = [], kPortName = "3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3001"} : () -> i1
        "rail.inbuf"(%19, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %20 = "rail.io.control_in"() {kCtxName = "phase_w2", kLanes = [], kPortName = "3002", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3002"} : () -> i1
        "rail.inbuf"(%20, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %21 = "rail.io.control_out"() {kCtxName = "phase_w2", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %21) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0"} : () -> ()
      }) {kConcurrencyGroup = 2 : i64, kContextType = "kRolled", kDisableFullStall = true, kName = "phase_w2", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:881:0", sym_name = "phase_w2"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1) -> i1
        "rail.iterchain"(%11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 12 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 0 : i64} : () -> i64
        %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%14, %11, %15, %16, %17) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64, i64, i1, i64, i64) -> ()
        %18 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64) -> i1
        %19 = "rail.io.control_in"() {kCtxName = "phase3_R_max", kLanes = [], kPortName = "6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "6000"} : () -> i1
        "rail.inbuf"(%19, %18) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %20 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64) -> i1
        %21 = "rail.io.control_in"() {kCtxName = "phase3_R_max", kLanes = [], kPortName = "dummy_wire", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "dummy_wire"} : () -> i1
        "rail.inbuf"(%21, %20) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %22 = "rail.io.control_out"() {kCtxName = "phase3_R_max", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %22) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %23 = "rail.io.control_in"() {kCtxName = "phase3_R_max", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%23, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %24 = "rail.io.control_in"() {kCtxName = "phase3_R_max", kLanes = [], kPortName = "3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3001"} : () -> i1
        "rail.inbuf"(%24, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : () -> ()
      }) {kConcurrencyGroup = 2 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 2 : i64, kName = "phase3_R_max", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", sym_name = "phase3_R_max"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1) -> i1
        "rail.iterchain"(%11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 13 : i64} : () -> i64
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = true} : () -> i1
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 0 : i64} : () -> i64
        %17 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%14, %11, %15, %16, %17) {kDim = 2 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64, i64, i1, i64, i64) -> ()
        %18 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i64) -> i1
        %19 = "rail.io.control_in"() {kCtxName = "phase3_R_logsum", kLanes = [], kPortName = "6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "6000"} : () -> i1
        "rail.inbuf"(%19, %18) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %20 = "rail.io.control_out"() {kCtxName = "phase3_R_logsum", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %20) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %21 = "rail.io.control_in"() {kCtxName = "phase3_R_logsum", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%21, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        %22 = "rail.io.control_in"() {kCtxName = "phase3_R_logsum", kLanes = [], kPortName = "3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kUnitName = "tbuf_tmp", sym_name = "3001"} : () -> i1
        "rail.inbuf"(%22, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0"} : () -> ()
      }) {kConcurrencyGroup = 2 : i64, kContextType = "kRolled", kDisableEmptyStall = true, kExplicitMemPort = 1 : i64, kName = "phase3_R_logsum", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", sym_name = "phase3_R_logsum"} : () -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2000:0"} : () -> ()
    }) {kAllowMultiScalarOut = true, kExplicitSwapDsts = ["phase_w0", "phase1_R_max"], kExplicitSwapSrcs = ["phase_w2", "phase3_R_logsum"], kFIFOMode = false, kImplicitControl = false, kName = "tbuf_tmp", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2000:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[1, 64]], base_address = 0 : i64, dim_order = [1, 0], format = 8 : i64, shape = [14, 1], vector_transpose = 1 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf_tmp"} : () -> ()
    module_terminator {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2000:0"}
  }
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_w0::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase3_R_max::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_w0::@"3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase3_R_logsum::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase1_R_max::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_w0::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_rd_dummy::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_w0::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_w1::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_w0::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase2_R_exp::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase1_R_max::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_w2::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase1_R_max::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase2_R_exp::@"3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_rd_dummy::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_w2::@"3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_rd_dummy::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase2_R_exp::@"3002", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_w1::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_w2::@"3002", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_w1::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase3_R_max::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase2_R_exp::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase3_R_logsum::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase2_R_exp::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase3_R_max::@"3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_w2::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase3_R_logsum::@"3001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1039:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_w2::@"2000"} : () -> ()
  module @tbuf_y_copy  {
    "rail.buffer"() ( {
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", kValue = 32 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0"} : (i1) -> i1
        "rail.iterchain"(%11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0"} : (i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", kValue = true} : () -> i1
        %15 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", kValue = 0 : i64} : () -> i64
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%11, %14, %15, %16) {kDim = 1 : i8, kMemOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", kVecDim = 0 : i64} : (i64, i1, i64, i64) -> ()
        %17 = "rail.io.control_in"() {kCtxName = "phase_y_copy_write", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_y_copy", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%17, %13) {kInit = 1 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1, i1) -> ()
        %18 = "rail.io.control_out"() {kCtxName = "phase_y_copy_write", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_y_copy", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %18) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0"} : () -> ()
      }) {kContextType = "kRolled", kName = "phase_y_copy_write", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1068:0", sym_name = "phase_y_copy_write"} : () -> ()
      "rail.tbuffer_context"() ( {
        %8 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = 0 : i64} : () -> i64
        %9 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = 1 : i64} : () -> i64
        %10 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = 1 : i64} : () -> i64
        %11 = "rail.iterator"(%8, %9, %10) {Par = 1 : i32, kChainID = 0 : i64, kIterPos = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i64, i64, i64) -> i64
        %12 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i64) -> i1
        %13 = "rail.ctxdone"(%12) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1) -> i1
        "rail.iterchain"(%11) {kChainID = 0 : i64, kName = "addr_chain", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i64) -> ()
        %14 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = 1 : i64} : () -> i64
        %15 = "rail.less_than"(%11, %14) {kInstructionStageType = 2 : i64, kIsBinaryOp = true, kIsBooleanOp = true, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i64, i64) -> i1
        %16 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = 0 : i64} : () -> i64
        %17 = "rail.ifelse"(%15, %11, %16) {kInstructionStageType = 2 : i64, kIsDataPathOp = true, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1, i64, i64) -> i64
        %18 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = true} : () -> i1
        %19 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = 0 : i64} : () -> i64
        %20 = "rail.const"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kValue = 0 : i64} : () -> i64
        "rail.addr"(%17, %18, %19, %20) {kDim = 1 : i8, kMemOp = false, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i64, i1, i64, i64) -> ()
        %21 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i64) -> i1
        %22 = "rail.io.control_in"() {kCtxName = "phase_y_copy_read", kLanes = [], kPortName = "phase2_strip_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_y_copy", sym_name = "phase2_strip_done"} : () -> i1
        "rail.inbuf"(%22, %21) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1, i1) -> ()
        %23 = "rail.io.control_out"() {kCtxName = "phase_y_copy_read", kLanes = [], kPortName = "y_copy_rd_done", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_y_copy", sym_name = "y_copy_rd_done"} : () -> i1
        %24 = "rail.ctrdone"(%11) {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i64) -> i1
        "rail.send"(%24, %23) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1, i1) -> ()
        %25 = "rail.io.control_out"() {kCtxName = "phase_y_copy_read", kLanes = [], kPortName = "2000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_y_copy", sym_name = "2000"} : () -> i1
        "rail.send"(%13, %25) {kOpRWPattern1 = "kWriteOperand", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1, i1) -> ()
        %26 = "rail.io.control_in"() {kCtxName = "phase_y_copy_read", kLanes = [], kPortName = "3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_y_copy", sym_name = "3000"} : () -> i1
        "rail.inbuf"(%26, %13) {kInit = 0 : i32, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : (i1, i1) -> ()
        "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0"} : () -> ()
      }) {kConcurrencyGroup = 0 : i64, kContextType = "kRolled", kName = "phase_y_copy_read", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", sym_name = "phase_y_copy_read"} : () -> ()
      "rail.terminator"() {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2063:0"} : () -> ()
    }) {kFIFOMode = false, kName = "tbuf_y_copy", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2063:0", params = {kDepth = 1 : i64, kLayout = {alignments = [[0, 64]], base_address = 0 : i64, dim_order = [0], format = 2 : i64, shape = [1], vector_transpose = 0 : i64}, kMinMaxCapacitySplit = true, kMinPmus = -1 : i64, kPacingWindow = -1 : i64, kSplitAlgorithm = 0 : i64}, sym_name = "tbuf_y_copy"} : () -> ()
    module_terminator {kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:2063:0"}
  }
  "rail.TConnect"() {kDst = @tbuf_y_copy::@tbuf_y_copy::@phase_y_copy_write::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_y_copy::@tbuf_y_copy::@phase_y_copy_read::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_y_copy::@tbuf_y_copy::@phase_y_copy_read::@"3000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_y_copy::@tbuf_y_copy::@phase_y_copy_write::@"2000"} : () -> ()
  %0 = "rail.io.vector_in"() {kCtxName = "phase_w0", kLanes = [], kPortName = "8", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_tmp", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp_tbuffer_phase_w0_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @tbuf_tmp_tbuffer_phase_w0_vector_in_8, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_vector_out_3000} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase1_R_max::@"6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase0::@tcompute0_tcompute_phase0_control_out_2000} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase3_R_max::@dummy_wire, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase_rd_dummy::@"2000"} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_rd_dummy::@dummy_wire, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_tmp::@tbuf_tmp::@phase3_R_max::@"2000"} : () -> ()
  %1 = "rail.io.vector_out"() {kCtxName = "phase1_R_max", kLanes = [], kPortName = "1001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_tmp", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp_tbuffer_phase1_R_max_vector_out_1001"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_vector_in_9000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_tmp_tbuffer_phase1_R_max_vector_out_1001} : () -> ()
  %2 = "rail.io.vector_in"() {kCtxName = "phase_w1", kLanes = [], kPortName = "8", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_tmp", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp_tbuffer_phase_w1_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @tbuf_tmp_tbuffer_phase_w1_vector_in_8, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_vector_out_13000} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase2_R_exp::@"6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase1::@tcompute0_tcompute_phase1_control_out_2000} : () -> ()
  %3 = "rail.io.vector_out"() {kCtxName = "phase2_R_exp", kLanes = [], kPortName = "1001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_tmp", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp_tbuffer_phase2_R_exp_vector_out_1001"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_vector_in_15000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_tmp_tbuffer_phase2_R_exp_vector_out_1001} : () -> ()
  %4 = "rail.io.vector_in"() {kCtxName = "phase_w2", kLanes = [], kPortName = "8", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_tmp", kVectorLengthInBytes = 64 : i64, sym_name = "tbuf_tmp_tbuffer_phase_w2_vector_in_8"} : () -> vector<32xbf16>
  "rail.TConnect"() {kDst = @tbuf_tmp_tbuffer_phase_w2_vector_in_8, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_vector_out_17000} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase3_R_logsum::@"6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_2000} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase3_R_max::@"6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_2000} : () -> ()
  %5 = "rail.io.scalar_out"() {kCtxName = "phase3_R_logsum", kLanes = [0], kPortName = "1001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_tmp", sym_name = "tbuf_tmp_tbuffer_phase3_R_logsum_scalar_out_1001_0"} : () -> i64
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_scalar_in_21000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_tmp_tbuffer_phase3_R_logsum_scalar_out_1001_0} : () -> ()
  %6 = "rail.io.scalar_out"() {kCtxName = "phase3_R_max", kLanes = [0], kPortName = "1001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_tmp", sym_name = "tbuf_tmp_tbuffer_phase3_R_max_scalar_out_1001_0"} : () -> i64
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_scalar_in_10000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_tmp_tbuffer_phase3_R_max_scalar_out_1001_0} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_tmp::@tbuf_tmp::@phase_w0::@"6000", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_control_out_2000} : () -> ()
  "rail.TConnect"() {kDst = @tbuf_y_copy::@tbuf_y_copy::@phase_y_copy_read::@phase2_strip_done, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tcompute0::@tcompute0::@phase2::@tcompute0_tcompute_phase2_control_out_2000} : () -> ()
  %7 = "rail.io.scalar_out"() {kCtxName = "phase_y_copy_read", kLanes = [0], kPortName = "1001", kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kUnitName = "tbuf_y_copy", sym_name = "tbuf_y_copy_tbuffer_phase_y_copy_read_scalar_out_1001_0"} : () -> i64
  "rail.TConnect"() {kDst = @tcompute0::@tcompute0::@phase3::@tcompute0_tcompute_phase3_scalar_in_23000, kSourceContext = "software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp:1085:0", kSrc = @tbuf_y_copy_tbuffer_phase_y_copy_read_scalar_out_1001_0} : () -> ()
  module_terminator {kSourceContext = "LogregTorchSamba.cpp:149:0"}
}