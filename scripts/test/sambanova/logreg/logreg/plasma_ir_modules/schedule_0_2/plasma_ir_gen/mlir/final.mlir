module @schedule_0_2 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = false}  {
  plasma.Segment @segment_3() attributes {kChipId = 0 : i64, kIsInputOnly = false, kMemoryLocation = 2 : i64, kSegmentSize = 576 : i64}  {
    plasma.symbol.Dram @logreg__lin_layer__linear__outputs__0() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<1x10xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "logreg__lin_layer__linear__outputs__0", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    plasma.symbol.Dram @logreg__criterion__crossentropyloss__outputs__0() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<1xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "logreg__criterion__crossentropyloss__outputs__0", kOffset = 512 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.Segment @segment_2() attributes {kChipId = 0 : i64, kIsInputOnly = true, kMemoryLocation = 2 : i64, kSegmentSize = 2112 : i64}  {
    plasma.symbol.Dram @image() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<784x1xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = true, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "image", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    plasma.symbol.Dram @label() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<1xi16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = true, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 2 : i64, kName = "label", kOffset = 2048 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  plasma.Segment @segment_1() attributes {kChipId = 0 : i64, kIsInputOnly = false, kMemoryLocation = 0 : i64, kSegmentSize = 151040 : i64}  {
    plasma.symbol.Dram @group_4() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<25088xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_4", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64}  {
      plasma.symbol.Dram @logreg__lin_layer__weight() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<10x784xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "logreg__lin_layer__weight", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    }
    plasma.symbol.Dram @logreg__lin_layer__linear__outputs__0__grad() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<1x10xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "logreg__lin_layer__linear__outputs__0__grad", kOffset = 50176 : i64, kSymbolAnnotation = 0 : i64} {}
    plasma.symbol.Dram @group_7() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<25088xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_7", kOffset = 50688 : i64, kSymbolAnnotation = 0 : i64}  {
      plasma.symbol.Dram @logreg__lin_layer__weight__sgd0__momentum() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<10x784xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = true, kMemoryLocation = 0 : i64, kName = "logreg__lin_layer__weight__sgd0__momentum", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    }
    plasma.symbol.Dram @group_8() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<25088xbf16:RVRM>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = false, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "group_8", kOffset = 100864 : i64, kSymbolAnnotation = 0 : i64}  {
      plasma.symbol.Dram @logreg__lin_layer__weight__grad() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<10x784xbf16:CVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = false, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "logreg__lin_layer__weight__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
    }
  }
  plasma.Segment @segment_0() attributes {kChipId = 0 : i64, kIsInputOnly = true, kMemoryLocation = 0 : i64, kSegmentSize = 64 : i64}  {
    plasma.symbol.Dram @logreg__criterion__crossentropyloss__outputs__0__grad() attributes {kChipId = 0 : i64, kDeviceLayout = !plasma.TL<1xbf16:RVRM:64>, kHasInitFunc = false, kIsAdminMode = false, kIsInputOnly = true, kIsUserFacing = true, kIsWeight = false, kMemoryLocation = 0 : i64, kName = "logreg__criterion__crossentropyloss__outputs__0__grad", kOffset = 0 : i64, kSymbolAnnotation = 0 : i64} {}
  }
  func @main() {
    %0:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_4} : () -> (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>)
    %1:2 = "plasma.MemoryAddr"() {kTargetSymbol = @image} : () -> (!plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,W>)
    %2:2 = "plasma.MemoryAddr"() {kTargetSymbol = @label} : () -> (!plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,W>)
    %3:2 = "plasma.MemoryAddr"() {kTargetSymbol = @logreg__lin_layer__linear__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>)
    %4:2 = "plasma.MemoryAddr"() {kTargetSymbol = @logreg__criterion__crossentropyloss__outputs__0} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    "plasma.CallSection"(%0#0, %1#0, %2#0, %3#1, %4#1) {kSection = @s0} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()
    %5:2 = "plasma.MemoryAddr"() {kTargetSymbol = @logreg__criterion__crossentropyloss__outputs__0__grad} : () -> (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>)
    %6:2 = "plasma.MemoryAddr"() {kTargetSymbol = @logreg__lin_layer__linear__outputs__0__grad} : () -> (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>)
    %7:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_8::@logreg__lin_layer__weight__grad} : () -> (!plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>)
    "plasma.CallSection"(%3#0, %2#0, %5#0, %6#0, %1#0, %7#1) {kSection = @s1} : (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> ()
    %8:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_8} : () -> (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>)
    %9:2 = "plasma.MemoryAddr"() {kTargetSymbol = @group_7} : () -> (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>)
    "plasma.CallSection"(%0#0, %8#0, %9#0, %0#1, %9#1) {kSection = @s2} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>) -> ()
    "plasma.Terminator"() : () -> ()
  }
}
