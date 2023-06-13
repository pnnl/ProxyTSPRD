module @logreg_schedule_0_2 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = false}  {
  plasma.symbol.Dram @ptconvlstm__conv_layer__weight() attributes {kDeviceLayout = !plasma.TL<256x136x3xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__weight", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @inp_window_slice_1() attributes {kDeviceLayout = !plasma.TL<3xi32:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = true, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "inp_window_slice_1", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @inp_window() attributes {kDeviceLayout = !plasma.TL<1x60x136xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = true, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "inp_window", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @group_3() attributes {kDeviceLayout = !plasma.TL<256xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_3", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @ptconvlstm__conv_layer__bias() attributes {kDeviceLayout = !plasma.TL<256x1xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__bias", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @group_12() attributes {kDeviceLayout = !plasma.TL<4096xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_12", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__bias() attributes {kDeviceLayout = !plasma.TL<4080x1xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__bias", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @group_4() attributes {kDeviceLayout = !plasma.TL<1048576xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_4", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__weight() attributes {kDeviceLayout = !plasma.TL<4080x256xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__weight", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @out_window() attributes {kDeviceLayout = !plasma.TL<1x30x136xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = true, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "out_window", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @ptconvlstm__criterion__mseloss__outputs__0__grad() attributes {kDeviceLayout = !plasma.TL<1xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__criterion__mseloss__outputs__0__grad", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @ptconvlstm__view__outputs__0__grad() attributes {kDeviceLayout = !plasma.TL<1x30x136xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__view__outputs__0__grad", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @group_13() attributes {kDeviceLayout = !plasma.TL<1048576xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_13", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__weight__sgd0__momentum() attributes {kDeviceLayout = !plasma.TL<4080x256xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__weight__sgd0__momentum", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @group_14() attributes {kDeviceLayout = !plasma.TL<1118464xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_14", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__bias__sgd0__momentum() attributes {kDeviceLayout = !plasma.TL<4080x1xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__bias__sgd0__momentum", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    plasma.symbol.Dram @ptconvlstm__conv_layer__bias__sgd0__momentum() attributes {kDeviceLayout = !plasma.TL<256x1xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__bias__sgd0__momentum", kOffset = 8192 : i64, kSymbolAnnotation = 0 : i64} {}
    plasma.symbol.Dram @ptconvlstm__conv_layer__weight__sgd0__momentum() attributes {kDeviceLayout = !plasma.TL<256x136x3xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__weight__sgd0__momentum", kOffset = 8704 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight() attributes {kDeviceLayout = !plasma.TL<1x256x1xbf16:CVCM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub() attributes {kDeviceLayout = !plasma.TL<1x4080xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @group_15() attributes {kDeviceLayout = !plasma.TL<1048576xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_15", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__weight__grad() attributes {kDeviceLayout = !plasma.TL<4080x256xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__weight__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @group_16() attributes {kDeviceLayout = !plasma.TL<4352xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_16", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__bias__grad() attributes {kDeviceLayout = !plasma.TL<4080x1xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__bias__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    plasma.symbol.Dram @ptconvlstm__conv_layer__bias__grad() attributes {kDeviceLayout = !plasma.TL<256x1xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__bias__grad", kOffset = 8192 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @ptconvlstm__conv_layer__weight__grad() attributes {kDeviceLayout = !plasma.TL<256x136x3xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__weight__grad", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list() attributes {kDeviceLayout = !plasma.TL<96xi32:RVRM:64>, kHasInitFunc = true, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @group_18() attributes {kDeviceLayout = !plasma.TL<112xi32:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_18", kSymbolAnnotation = 0 : i64}  {
    plasma.symbol.Dram @gather_gradient_output_reshape_id1__gather_list() attributes {kDeviceLayout = !plasma.TL<96xi32:RVRM:64>, kHasInitFunc = true, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "gather_gradient_output_reshape_id1__gather_list", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    plasma.symbol.Dram @ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list() attributes {kDeviceLayout = !plasma.TL<16xi32:RVRM:64>, kHasInitFunc = true, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list", kOffset = 384 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.symbol.Dram @ptconvlstm__view__outputs__0() attributes {kDeviceLayout = !plasma.TL<1x30x136xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "ptconvlstm__view__outputs__0", kSymbolAnnotation = 0 : i64} {}
  plasma.symbol.Dram @ptconvlstm__criterion__mseloss__outputs__0() attributes {kDeviceLayout = !plasma.TL<1xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "ptconvlstm__criterion__mseloss__outputs__0", kSymbolAnnotation = 0 : i64} {}
  func @main() {
    %0:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__conv_layer__weight} : () -> (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>)
    %1:2 = "plasma.MemoryAddr"() {kTargetSymbol = @inp_window_slice_1} : () -> (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,W>)
    %2:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_3::@ptconvlstm__conv_layer__bias} : () -> (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>)
    %3:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_4} : () -> (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>)
    %4:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_12} : () -> (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>)
    %5:2 = "plasma.MemoryAddr"() {kTargetSymbol = @inp_window} : () -> (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,W>)
    %6:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list} : () -> (!plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,W>)
    %7:2 = "plasma.MemoryAddr"() {kTargetSymbol = @out_window} : () -> (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>)
    %8:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight} : () -> (!plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>)
    %9:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub} : () -> (!plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>)
    %10:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__view__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>)
    %11:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__criterion__mseloss__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    "plasma.CallSection"(%0#0, %1#0, %2#0, %3#0, %4#0, %5#0, %6#0, %7#0, %8#1, %9#1, %10#1, %11#1) {kSection = @s0} : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()
    %12:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__criterion__mseloss__outputs__0__grad} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    %13:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__view__outputs__0__grad} : () -> (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>)
    %14:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_4::@ptconvlstm__dense_layer__weight} : () -> (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>)
    %15:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_18} : () -> (!plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,W>)
    %16:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_15::@ptconvlstm__dense_layer__weight__grad} : () -> (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>)
    %17:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_16::@ptconvlstm__dense_layer__bias__grad} : () -> (!plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>)
    %18:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_16::@ptconvlstm__conv_layer__bias__grad} : () -> (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>)
    %19:2 = "plasma.MemoryAddr"() {kTargetSymbol = @ptconvlstm__conv_layer__weight__grad} : () -> (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>)
    "plasma.CallSection"(%12#0, %1#0, %13#0, %7#0, %9#0, %14#0, %8#0, %5#0, %15#0, %16#1, %17#1, %18#1, %19#1) {kSection = @s1} : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>) -> ()
    %20:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_15} : () -> (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>)
    %21:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_13} : () -> (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>)
    %22:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_16} : () -> (!plasma.TLMemRef<!plasma.TL<4352xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4352xbf16:RVRM>,0,W>)
    %23:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_14} : () -> (!plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>)
    %24:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_3} : () -> (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>)
    "plasma.CallSection"(%3#0, %20#0, %21#0, %4#0, %22#0, %23#0, %24#0, %0#0, %19#0, %3#1, %21#1, %4#1, %23#1, %24#1, %0#1) {kSection = @s2} : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4352xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>) -> ()
    "plasma.Terminator"() : () -> ()
  }
}
