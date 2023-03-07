module @cnn_schedule_0_2 attributes {plasma.kVerbose = false}  {
  plasma.symbol.Dram @inp_window_slice_1 attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "inp_window_slice_1", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<3xi32:RVRM>} {}
  plasma.symbol.Dram @inp_window attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "inp_window", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1x60x136xbf16:RVRM:64>} {}
  plasma.symbol.Dram @group_0 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_0", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<256xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__conv_layer__bias attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__bias", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<256x1xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_1 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_1", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<106496xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__conv_layer__weight attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__weight", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<408x256xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_5 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_5", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4096xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__bias attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__bias", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4080x1xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_2 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_2", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1048576xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__weight attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__weight", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4080x256xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @out_window attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "out_window", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1x30x136xbf16:RVRM>} {}
  plasma.symbol.Dram @ptconvlstm__criterion__mseloss__outputs__0__grad attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__criterion__mseloss__outputs__0__grad", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1xbf16:RVRM:64>} {}
  plasma.symbol.Dram @ptconvlstm__view__outputs__0__grad attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__view__outputs__0__grad", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1x30x136xbf16:RVRM>} {}
  plasma.symbol.Dram @group_6 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_6", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1159424xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__conv_layer__bias__sgd0__momentum attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__bias__sgd0__momentum", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<256x1xbf16:CVRM:64>} {}
    plasma.symbol.Dram @ptconvlstm__conv_layer__weight__sgd0__momentum attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__weight__sgd0__momentum", kOffset = 512 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<408x256xbf16:CVRM:64>} {}
    plasma.symbol.Dram @ptconvlstm__dense_layer__bias__sgd0__momentum attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__bias__sgd0__momentum", kOffset = 213504 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4080x1xbf16:CVRM:64>} {}
    plasma.symbol.Dram @ptconvlstm__dense_layer__weight__sgd0__momentum attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__weight__sgd0__momentum", kOffset = 221696 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4080x256xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_4 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_4", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<256xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1x256x1xbf16:CVCM:64>} {}
  }
  plasma.symbol.Dram @ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1x4080xbf16:RVRM:64>} {}
  plasma.symbol.Dram @group_7 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_7", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1155328xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__conv_layer__weight__grad attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__weight__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<408x256xbf16:CVRM:64>} {}
    plasma.symbol.Dram @ptconvlstm__conv_layer__bias__grad attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__bias__grad", kOffset = 212992 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<256x1xbf16:CVRM:64>} {}
    plasma.symbol.Dram @ptconvlstm__dense_layer__weight__grad attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__weight__grad", kOffset = 213504 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4080x256xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_8 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_8", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4096xbf16:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__dense_layer__bias__grad attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__dense_layer__bias__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<4080x1xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_9 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_9", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<96xi32:RVRM>}  {
    plasma.symbol.Dram @ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<96xi32:RVRM:64>} {}
  }
  plasma.symbol.Dram @group_10 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_10", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<112xi32:RVRM>}  {
    plasma.symbol.Dram @gather_gradient_output_reshape_id1__gather_list attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "gather_gradient_output_reshape_id1__gather_list", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<96xi32:RVRM:64>} {}
    plasma.symbol.Dram @ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list", kOffset = 384 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<16xi32:RVRM:64>} {}
  }
  plasma.symbol.Dram @ptconvlstm__criterion__mseloss__outputs__0 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "ptconvlstm__criterion__mseloss__outputs__0", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1xbf16:RVRM:64>} {}
  plasma.symbol.Dram @ptconvlstm__view__outputs__0 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "ptconvlstm__view__outputs__0", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1x30x136xbf16:RVRM>} {}
  func @main() {
    %0:2 = "plasma.DramAddr"() {kTargetSymbol = @ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub} : () -> (!plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>)
    %1:2 = "plasma.DramAddr"() {kTargetSymbol = @group_4::@ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight} : () -> (!plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>)
    %2:2 = "plasma.DramAddr"() {kTargetSymbol = @group_9::@ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list} : () -> (!plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,W>)
    %3:2 = "plasma.DramAddr"() {kTargetSymbol = @group_1::@ptconvlstm__conv_layer__weight} : () -> (!plasma.TLMemRef<!plasma.TL<408x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<408x256xbf16:CVRM:64>,0,W>)
    %4:2 = "plasma.DramAddr"() {kTargetSymbol = @group_5} : () -> (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>)
    %5:2 = "plasma.DramAddr"() {kTargetSymbol = @out_window} : () -> (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>)
    %6:2 = "plasma.DramAddr"() {kTargetSymbol = @inp_window_slice_1} : () -> (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,W>)
    %7:2 = "plasma.DramAddr"() {kTargetSymbol = @group_0::@ptconvlstm__conv_layer__bias} : () -> (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>)
    %8:2 = "plasma.DramAddr"() {kTargetSymbol = @group_2} : () -> (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>)
    %9:2 = "plasma.DramAddr"() {kTargetSymbol = @ptconvlstm__view__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>)
    %10:2 = "plasma.DramAddr"() {kTargetSymbol = @ptconvlstm__criterion__mseloss__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    %11:2 = "plasma.DramAddr"() {kTargetSymbol = @inp_window} : () -> (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,W>)
    "plasma.CallSection"(%6#0, %3#0, %7#0, %8#0, %4#0, %11#0, %2#0, %5#0, %1#1, %0#1, %10#1, %9#1) {kSection = @s0} : (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<408x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>) -> ()
    %12:2 = "plasma.DramAddr"() {kTargetSymbol = @group_8::@ptconvlstm__dense_layer__bias__grad} : () -> (!plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>)
    %13:2 = "plasma.DramAddr"() {kTargetSymbol = @group_7::@ptconvlstm__conv_layer__bias__grad} : () -> (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>)
    %14:2 = "plasma.DramAddr"() {kTargetSymbol = @group_7::@ptconvlstm__conv_layer__weight__grad} : () -> (!plasma.TLMemRef<!plasma.TL<408x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<408x256xbf16:CVRM:64>,0,W>)
    %15:2 = "plasma.DramAddr"() {kTargetSymbol = @group_10} : () -> (!plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,W>)
    %16:2 = "plasma.DramAddr"() {kTargetSymbol = @group_2::@ptconvlstm__dense_layer__weight} : () -> (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>)
    %17:2 = "plasma.DramAddr"() {kTargetSymbol = @ptconvlstm__criterion__mseloss__outputs__0__grad} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    %18:2 = "plasma.DramAddr"() {kTargetSymbol = @group_7::@ptconvlstm__dense_layer__weight__grad} : () -> (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>)
    %19:2 = "plasma.DramAddr"() {kTargetSymbol = @ptconvlstm__view__outputs__0__grad} : () -> (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>)
    "plasma.CallSection"(%6#0, %5#0, %17#0, %0#0, %19#0, %16#0, %11#0, %15#0, %1#0, %14#1, %13#1, %18#1, %12#1) {kSection = @s1} : (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<408x256xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>) -> ()
    %20:2 = "plasma.DramAddr"() {kTargetSymbol = @group_7} : () -> (!plasma.TLMemRef<!plasma.TL<1155328xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1155328xbf16:RVRM>,0,W>)
    %21:2 = "plasma.DramAddr"() {kTargetSymbol = @group_0} : () -> (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>)
    %22:2 = "plasma.DramAddr"() {kTargetSymbol = @group_6} : () -> (!plasma.TLMemRef<!plasma.TL<1159424xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1159424xbf16:RVRM>,0,W>)
    %23:2 = "plasma.DramAddr"() {kTargetSymbol = @group_1} : () -> (!plasma.TLMemRef<!plasma.TL<106496xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<106496xbf16:RVRM>,0,W>)
    %24:2 = "plasma.DramAddr"() {kTargetSymbol = @group_8} : () -> (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>)
    "plasma.CallSection"(%21#0, %20#0, %22#0, %23#0, %4#0, %24#0, %8#0) {kSection = @s2} : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1155328xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1159424xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<106496xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> ()
    "plasma.Terminator"() : () -> ()
  }
}