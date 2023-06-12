module @logreg_09_03_28_schedule_0_2 attributes {plasma.kVerbose = false}  {
  plasma.symbol.Dram @group_2 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_2", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<25088xbf16:RVRM>}  {
    plasma.symbol.Dram @logreg__lin_layer__weight attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "logreg__lin_layer__weight", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<10x784xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_0 attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_0", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<800xbf16:RVRM>}  {
    plasma.symbol.Dram @image attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "image", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<784x1xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @group_3 attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_3", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<32xbf16:RVRM>}  {
    plasma.symbol.Dram @logreg__criterion__crossentropyloss__outputs__0__grad attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "logreg__criterion__crossentropyloss__outputs__0__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1xbf16:RVRM:64>} {}
  }
  plasma.symbol.Dram @group_4 attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_4", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<32xsi16:RVRM>}  {
    plasma.symbol.Dram @label attributes {kIsInputOnly = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "label", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1xsi16:RVRM:64>} {}
  }
  plasma.symbol.Dram @group_5 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_5", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<25088xbf16:RVRM>}  {
    plasma.symbol.Dram @logreg__lin_layer__weight__sgd0__momentum attributes {kIsInputOnly = false, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "logreg__lin_layer__weight__sgd0__momentum", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<10x784xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @logreg__lin_layer__linear__outputs__0 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "logreg__lin_layer__linear__outputs__0", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1x10xbf16:RVRM:64>} {}
  plasma.symbol.Dram @group_6 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_6", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<25088xbf16:RVRM>}  {
    plasma.symbol.Dram @logreg__lin_layer__weight__grad attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "logreg__lin_layer__weight__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<10x784xbf16:CVRM:64>} {}
  }
  plasma.symbol.Dram @logreg__criterion__crossentropyloss__outputs__0 attributes {kIsInputOnly = false, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "logreg__criterion__crossentropyloss__outputs__0", kSymbolAnnotation = 0 : i64, kTensorLayout = !plasma.TL<1xbf16:RVRM:64>} {}
  func @main() {
    %0:2 = "plasma.DramAddr"() {kTargetSymbol = @logreg__criterion__crossentropyloss__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    %1:2 = "plasma.DramAddr"() {kTargetSymbol = @group_4::@label} : () -> (!plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,W>)
    %2:2 = "plasma.DramAddr"() {kTargetSymbol = @group_2} : () -> (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>)
    %3:2 = "plasma.DramAddr"() {kTargetSymbol = @logreg__lin_layer__linear__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>)
    %4:2 = "plasma.DramAddr"() {kTargetSymbol = @group_0::@image} : () -> (!plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,W>)
    "plasma.CallSection"(%2#0, %4#0, %1#0, %3#1, %0#1) {kSection = @s0} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()
    %5:2 = "plasma.DramAddr"() {kTargetSymbol = @group_3::@logreg__criterion__crossentropyloss__outputs__0__grad} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    %6:2 = "plasma.DramAddr"() {kTargetSymbol = @group_6::@logreg__lin_layer__weight__grad} : () -> (!plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>)
    "plasma.CallSection"(%3#0, %1#0, %5#0, %4#0, %6#1) {kSection = @s1} : (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> ()
    %7:2 = "plasma.DramAddr"() {kTargetSymbol = @group_5} : () -> (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>)
    %8:2 = "plasma.DramAddr"() {kTargetSymbol = @group_6} : () -> (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>)
    "plasma.CallSection"(%2#0, %8#0, %7#0) {kSection = @s2} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> ()
    "plasma.Terminator"() : () -> ()
  }
}
