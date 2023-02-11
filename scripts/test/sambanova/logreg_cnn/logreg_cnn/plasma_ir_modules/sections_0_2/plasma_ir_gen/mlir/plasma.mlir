module @sections_0_2 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = false}  {
  plasma.Section @s0() attributes {kControlBlockId = 0 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>, %arg9: !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>, %arg10: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>, %arg11: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>):  // no predecessors
      %u0r, %u0s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_430_head1_neck0_data_pmu0", kUnitId = 0 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u1r, %u1s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_430_head1_neck0_data_pmu1", kUnitId = 1 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u2r, %u2s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_430_head1_neck0_data_pmu2", kUnitId = 2 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u3r, %u3s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_430_head1_neck0_data_pmu3", kUnitId = 3 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u4r, %u4s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_430_head1_neck0_data_pmu4", kUnitId = 4 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u5r, %u5s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_430_head1_neck0_rob_pmu", kUnitId = 5 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u6r, %u6s:3 = plasma.unit.Pmu() attributes {kName = "realign_0_0_412.gbuffer_head1_neck0_data_pmu0", kUnitId = 6 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u7r, %u7s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_395_head1_neck0_data_pmu0", kUnitId = 7 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u8r, %u8s:2 = plasma.unit.Pmu() attributes {kName = "realign_0_0_413.gbuffer_head1_neck0_data_pmu0", kUnitId = 8 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u9r, %u9s:2 = plasma.unit.Pmu() attributes {kName = "vector_transpose_0_0_414.buffer_head1_neck0_data_pmu0", kUnitId = 9 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u10r, %u10s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_437_head1_neck0_data_pmu0", kUnitId = 10 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u11r, %u11s:3 = plasma.unit.Pmu() attributes {kName = "sbuf2u_0_0_295_head1_neck0_data_pmu0", kUnitId = 11 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u12r, %u12s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r0_r1_pmu0", kUnitId = 12 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u13r, %u13s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r2_r3_pmu1", kUnitId = 13 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u14r, %u14s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r4_r5_pmu2", kUnitId = 14 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u15r, %u15s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r6_r7_pmu3", kUnitId = 15 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u16r, %u16s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r8_r9_pmu4", kUnitId = 16 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u17r, %u17s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r10_r11_pmu5", kUnitId = 17 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u18r, %u18s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r12_r13_pmu6", kUnitId = 18 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u19r, %u19s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r14_r15_pmu7", kUnitId = 19 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u20r, %u20s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r16_r17_pmu8", kUnitId = 20 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u21r, %u21s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r18_r19_pmu9", kUnitId = 21 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u22r, %u22s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_296_head1_neck0_data_r20_r21_pmu10", kUnitId = 22 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u23r, %u23s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_297_gemm_0_0_0_PCU", kUnitId = 23 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u24r, %u24s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_297_gemm_0_0_0_PMU", kUnitId = 24 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u25r, %u25s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_297_gemm_0_0_1_PCU", kUnitId = 25 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u26r, %u26s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_298_gemm_0_0_0_PCU", kUnitId = 26 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u27r, %u27s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_298_gemm_0_0_0_PMU", kUnitId = 27 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u28r, %u28s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_298_gemm_0_0_1_PCU", kUnitId = 28 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u29r, %u29s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_299_gemm_0_0_0_PCU", kUnitId = 29 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u30r, %u30s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_299_gemm_0_0_0_PMU", kUnitId = 30 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u31r, %u31s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_299_gemm_0_0_1_PCU", kUnitId = 31 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u32r, %u32s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_300_gemm_0_0_0_PCU", kUnitId = 32 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u33r, %u33s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_300_gemm_0_0_0_PMU", kUnitId = 33 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u34r, %u34s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_300_gemm_0_0_1_PCU", kUnitId = 34 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u35r, %u35s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_301_gemm_0_0_0_PCU", kUnitId = 35 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u36r, %u36s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_301_gemm_0_0_0_PMU", kUnitId = 36 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u37r, %u37s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_301_gemm_0_0_1_PCU", kUnitId = 37 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u38r, %u38s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_302_gemm_0_0_0_PCU", kUnitId = 38 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u39r, %u39s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_302_gemm_0_0_0_PMU", kUnitId = 39 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u40r, %u40s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_302_gemm_0_0_1_PCU", kUnitId = 40 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u41r, %u41s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_303_gemm_0_0_0_PCU", kUnitId = 41 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u42r, %u42s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_303_gemm_0_0_0_PMU", kUnitId = 42 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u43r, %u43s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_303_gemm_0_0_1_PCU", kUnitId = 43 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u44r, %u44s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_304_gemm_0_0_0_PCU", kUnitId = 44 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u45r, %u45s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_304_gemm_0_0_0_PMU", kUnitId = 45 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u46r, %u46s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_304_gemm_0_0_1_PCU", kUnitId = 46 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u47r, %u47s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_305_gemm_0_0_0_PCU", kUnitId = 47 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u48r, %u48s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_305_gemm_0_0_0_PMU", kUnitId = 48 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u49r, %u49s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_305_gemm_0_0_1_PCU", kUnitId = 49 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u50r, %u50s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_306_gemm_0_0_0_PCU", kUnitId = 50 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u51r, %u51s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_306_gemm_0_0_0_PMU", kUnitId = 51 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u52r, %u52s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_306_gemm_0_0_1_PCU", kUnitId = 52 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u53r, %u53s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_307_gemm_0_0_0_PCU", kUnitId = 53 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u54r, %u54s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_307_gemm_0_0_0_PMU", kUnitId = 54 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u55r, %u55s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_307_gemm_0_0_1_PCU", kUnitId = 55 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u56r, %u56s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_308_gemm_0_0_0_PCU", kUnitId = 56 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u57r, %u57s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_308_gemm_0_0_0_PMU", kUnitId = 57 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u58r, %u58s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_308_gemm_0_0_1_PCU", kUnitId = 58 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u59r, %u59s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_309_gemm_0_0_0_PCU", kUnitId = 59 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u60r, %u60s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_309_gemm_0_0_0_PMU", kUnitId = 60 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u61r, %u61s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_309_gemm_0_0_1_PCU", kUnitId = 61 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u62r, %u62s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_310_gemm_0_0_0_PCU", kUnitId = 62 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u63r, %u63s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_310_gemm_0_0_0_PMU", kUnitId = 63 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u64r, %u64s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_310_gemm_0_0_1_PCU", kUnitId = 64 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u65r, %u65s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_311_gemm_0_0_0_PCU", kUnitId = 65 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u66r, %u66s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_311_gemm_0_0_0_PMU", kUnitId = 66 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u67r, %u67s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_311_gemm_0_0_1_PCU", kUnitId = 67 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u68r, %u68s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_312_gemm_0_0_0_PCU", kUnitId = 68 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u69r, %u69s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_312_gemm_0_0_0_PMU", kUnitId = 69 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u70r, %u70s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_312_gemm_0_0_1_PCU", kUnitId = 70 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u71r, %u71s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_313_gemm_0_0_0_PCU", kUnitId = 71 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u72r, %u72s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_313_gemm_0_0_0_PMU", kUnitId = 72 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u73r, %u73s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_313_gemm_0_0_1_PCU", kUnitId = 73 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u74r, %u74s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_314_gemm_0_0_0_PCU", kUnitId = 74 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u75r, %u75s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_314_gemm_0_0_0_PMU", kUnitId = 75 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u76r, %u76s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_314_gemm_0_0_1_PCU", kUnitId = 76 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u77r, %u77s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_315_gemm_0_0_0_PCU", kUnitId = 77 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u78r, %u78s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_315_gemm_0_0_0_PMU", kUnitId = 78 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u79r, %u79s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_315_gemm_0_0_1_PCU", kUnitId = 79 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u80r, %u80s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_316_gemm_0_0_0_PCU", kUnitId = 80 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u81r, %u81s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_316_gemm_0_0_0_PMU", kUnitId = 81 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u82r, %u82s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_316_gemm_0_0_1_PCU", kUnitId = 82 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u83r, %u83s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_317_gemm_0_0_0_PCU", kUnitId = 83 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u84r, %u84s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_317_gemm_0_0_0_PMU", kUnitId = 84 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u85r, %u85s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_317_gemm_0_0_1_PCU", kUnitId = 85 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u86r, %u86s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_318_gemm_0_0_0_PCU", kUnitId = 86 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u87r, %u87s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_318_gemm_0_0_0_PMU", kUnitId = 87 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u88r, %u88s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_318_gemm_0_0_1_PCU", kUnitId = 88 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u89r, %u89s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_data_w0_pmu0", kUnitId = 89 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u90r, %u90s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_data_w1_pmu1", kUnitId = 90 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u91r, %u91s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_data_w2_pmu2", kUnitId = 91 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u92r, %u92s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_data_w3_pmu3", kUnitId = 92 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u93r, %u93s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_data_w4_pmu4", kUnitId = 93 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u94r, %u94s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_data_w5_pmu5", kUnitId = 94 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u95r, %u95s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0", kUnitId = 95 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u96r, %u96s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1", kUnitId = 96 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u97r, %u97s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2", kUnitId = 97 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u98r, %u98s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3", kUnitId = 98 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u99r, %u99s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4", kUnitId = 99 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u100r, %u100s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5", kUnitId = 100 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u101r, %u101s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_321_head1_neck0_rob_pmu", kUnitId = 101 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u102r, %u102s:3 = plasma.unit.Pcu() attributes {kName = "bias_transpose_add_0_0_322_bias_add_pcu", kUnitId = 102 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSink, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSink, !plasma.VectorSink)
      %u103r, %u103s:3 = plasma.unit.Pmu() attributes {kName = "bias_transpose_add_0_0_322_bias_add_pmu", kUnitId = 103 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u104r, %u104s:2 = plasma.unit.Pmu() attributes {kName = "streaming_transpose_0_0_323_transpose_pmu", kUnitId = 104 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u105r, %u105s:8 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_206_head1_neck0_data_pmu0", kUnitId = 105 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u106r, %u106s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_0_0_PCU", kUnitId = 106 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u107r, %u107s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_0_0_PMU", kUnitId = 107 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u108r, %u108s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_1_0_PCU", kUnitId = 108 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u109r, %u109s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_1_0_PMU", kUnitId = 109 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u110r, %u110s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_2_0_PCU", kUnitId = 110 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u111r, %u111s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_2_0_PMU", kUnitId = 111 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u112r, %u112s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_3_0_PCU", kUnitId = 112 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u113r, %u113s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_3_0_PMU", kUnitId = 113 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u114r, %u114s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_4_0_PCU", kUnitId = 114 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u115r, %u115s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_4_0_PMU", kUnitId = 115 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u116r, %u116s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_5_0_PCU", kUnitId = 116 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u117r, %u117s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_5_0_PMU", kUnitId = 117 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u118r, %u118s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_6_0_PCU", kUnitId = 118 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u119r, %u119s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_6_0_PMU", kUnitId = 119 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u120r, %u120s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_7_0_PCU", kUnitId = 120 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u121r, %u121s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_7_0_PMU", kUnitId = 121 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u122r, %u122s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_8_0_PCU", kUnitId = 122 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u123r, %u123s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_8_0_PMU", kUnitId = 123 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u124r, %u124s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_9_0_PCU", kUnitId = 124 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u125r, %u125s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_9_0_PMU", kUnitId = 125 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u126r, %u126s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_10_0_PCU", kUnitId = 126 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u127r, %u127s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_10_0_PMU", kUnitId = 127 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u128r, %u128s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_11_0_PCU", kUnitId = 128 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u129r, %u129s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_11_0_PMU", kUnitId = 129 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u130r, %u130s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_12_0_PCU", kUnitId = 130 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u131r, %u131s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_12_0_PMU", kUnitId = 131 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u132r, %u132s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_13_0_PCU", kUnitId = 132 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u133r, %u133s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_13_0_PMU", kUnitId = 133 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u134r, %u134s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_14_0_PCU", kUnitId = 134 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u135r, %u135s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_14_0_PMU", kUnitId = 135 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u136r, %u136s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_15_0_PCU", kUnitId = 136 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u137r, %u137s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_15_0_PMU", kUnitId = 137 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u138r, %u138s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_16_0_PCU", kUnitId = 138 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u139r, %u139s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_16_0_PMU", kUnitId = 139 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u140r, %u140s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_17_0_PCU", kUnitId = 140 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u141r, %u141s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_17_0_PMU", kUnitId = 141 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u142r, %u142s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_18_0_PCU", kUnitId = 142 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u143r, %u143s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_18_0_PMU", kUnitId = 143 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u144r, %u144s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_19_0_PCU", kUnitId = 144 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u145r, %u145s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_19_0_PMU", kUnitId = 145 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u146r, %u146s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_20_0_PCU", kUnitId = 146 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u147r, %u147s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_20_0_PMU", kUnitId = 147 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u148r, %u148s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_21_0_PCU", kUnitId = 148 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u149r, %u149s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_21_0_PMU", kUnitId = 149 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u150r, %u150s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_22_0_PCU", kUnitId = 150 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u151r, %u151s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_22_0_PMU", kUnitId = 151 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u152r, %u152s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_23_0_PCU", kUnitId = 152 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u153r, %u153s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_23_0_PMU", kUnitId = 153 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u154r, %u154s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_24_0_PCU", kUnitId = 154 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u155r, %u155s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_24_0_PMU", kUnitId = 155 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u156r, %u156s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_25_0_PCU", kUnitId = 156 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u157r, %u157s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_25_0_PMU", kUnitId = 157 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u158r, %u158s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_26_0_PCU", kUnitId = 158 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u159r, %u159s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_26_0_PMU", kUnitId = 159 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u160r, %u160s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_27_0_PCU", kUnitId = 160 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u161r, %u161s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_27_0_PMU", kUnitId = 161 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u162r, %u162s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_28_0_PCU", kUnitId = 162 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u163r, %u163s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_28_0_PMU", kUnitId = 163 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u164r, %u164s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_29_0_PCU", kUnitId = 164 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u165r, %u165s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_29_0_PMU", kUnitId = 165 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u166r, %u166s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_30_0_PCU", kUnitId = 166 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u167r, %u167s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_30_0_PMU", kUnitId = 167 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u168r, %u168s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_31_0_PCU", kUnitId = 168 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u169r, %u169s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_0_31_0_PMU", kUnitId = 169 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u170r, %u170s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_0_0_PCU", kUnitId = 170 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u171r, %u171s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_0_0_PMU", kUnitId = 171 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u172r, %u172s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_1_0_PCU", kUnitId = 172 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u173r, %u173s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_1_0_PMU", kUnitId = 173 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u174r, %u174s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_2_0_PCU", kUnitId = 174 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u175r, %u175s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_2_0_PMU", kUnitId = 175 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u176r, %u176s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_3_0_PCU", kUnitId = 176 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u177r, %u177s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_3_0_PMU", kUnitId = 177 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u178r, %u178s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_4_0_PCU", kUnitId = 178 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u179r, %u179s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_4_0_PMU", kUnitId = 179 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u180r, %u180s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_5_0_PCU", kUnitId = 180 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u181r, %u181s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_5_0_PMU", kUnitId = 181 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u182r, %u182s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_6_0_PCU", kUnitId = 182 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u183r, %u183s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_6_0_PMU", kUnitId = 183 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u184r, %u184s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_7_0_PCU", kUnitId = 184 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u185r, %u185s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_7_0_PMU", kUnitId = 185 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u186r, %u186s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_8_0_PCU", kUnitId = 186 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u187r, %u187s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_8_0_PMU", kUnitId = 187 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u188r, %u188s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_9_0_PCU", kUnitId = 188 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u189r, %u189s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_9_0_PMU", kUnitId = 189 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u190r, %u190s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_10_0_PCU", kUnitId = 190 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u191r, %u191s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_10_0_PMU", kUnitId = 191 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u192r, %u192s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_11_0_PCU", kUnitId = 192 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u193r, %u193s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_11_0_PMU", kUnitId = 193 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u194r, %u194s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_12_0_PCU", kUnitId = 194 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u195r, %u195s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_12_0_PMU", kUnitId = 195 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u196r, %u196s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_13_0_PCU", kUnitId = 196 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u197r, %u197s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_13_0_PMU", kUnitId = 197 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u198r, %u198s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_14_0_PCU", kUnitId = 198 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u199r, %u199s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_14_0_PMU", kUnitId = 199 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u200r, %u200s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_15_0_PCU", kUnitId = 200 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u201r, %u201s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_15_0_PMU", kUnitId = 201 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u202r, %u202s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_16_0_PCU", kUnitId = 202 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u203r, %u203s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_16_0_PMU", kUnitId = 203 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u204r, %u204s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_17_0_PCU", kUnitId = 204 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u205r, %u205s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_17_0_PMU", kUnitId = 205 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u206r, %u206s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_18_0_PCU", kUnitId = 206 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u207r, %u207s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_18_0_PMU", kUnitId = 207 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u208r, %u208s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_19_0_PCU", kUnitId = 208 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u209r, %u209s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_19_0_PMU", kUnitId = 209 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u210r, %u210s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_20_0_PCU", kUnitId = 210 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u211r, %u211s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_20_0_PMU", kUnitId = 211 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u212r, %u212s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_21_0_PCU", kUnitId = 212 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u213r, %u213s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_21_0_PMU", kUnitId = 213 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u214r, %u214s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_22_0_PCU", kUnitId = 214 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u215r, %u215s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_22_0_PMU", kUnitId = 215 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u216r, %u216s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_23_0_PCU", kUnitId = 216 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u217r, %u217s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_23_0_PMU", kUnitId = 217 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u218r, %u218s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_24_0_PCU", kUnitId = 218 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u219r, %u219s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_24_0_PMU", kUnitId = 219 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u220r, %u220s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_25_0_PCU", kUnitId = 220 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u221r, %u221s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_25_0_PMU", kUnitId = 221 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u222r, %u222s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_26_0_PCU", kUnitId = 222 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u223r, %u223s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_26_0_PMU", kUnitId = 223 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u224r, %u224s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_27_0_PCU", kUnitId = 224 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u225r, %u225s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_27_0_PMU", kUnitId = 225 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u226r, %u226s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_28_0_PCU", kUnitId = 226 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u227r, %u227s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_28_0_PMU", kUnitId = 227 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u228r, %u228s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_29_0_PCU", kUnitId = 228 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u229r, %u229s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_29_0_PMU", kUnitId = 229 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u230r, %u230s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_30_0_PCU", kUnitId = 230 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u231r, %u231s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_30_0_PMU", kUnitId = 231 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u232r, %u232s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_31_0_PCU", kUnitId = 232 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u233r, %u233s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_1_31_0_PMU", kUnitId = 233 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u234r, %u234s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_0_0_PCU", kUnitId = 234 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u235r, %u235s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_0_0_PMU", kUnitId = 235 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u236r, %u236s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_1_0_PCU", kUnitId = 236 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u237r, %u237s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_1_0_PMU", kUnitId = 237 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u238r, %u238s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_2_0_PCU", kUnitId = 238 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u239r, %u239s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_2_0_PMU", kUnitId = 239 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u240r, %u240s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_3_0_PCU", kUnitId = 240 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u241r, %u241s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_3_0_PMU", kUnitId = 241 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u242r, %u242s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_4_0_PCU", kUnitId = 242 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u243r, %u243s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_4_0_PMU", kUnitId = 243 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u244r, %u244s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_5_0_PCU", kUnitId = 244 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u245r, %u245s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_5_0_PMU", kUnitId = 245 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u246r, %u246s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_6_0_PCU", kUnitId = 246 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u247r, %u247s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_6_0_PMU", kUnitId = 247 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u248r, %u248s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_7_0_PCU", kUnitId = 248 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u249r, %u249s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_7_0_PMU", kUnitId = 249 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u250r, %u250s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_8_0_PCU", kUnitId = 250 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u251r, %u251s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_8_0_PMU", kUnitId = 251 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u252r, %u252s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_9_0_PCU", kUnitId = 252 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u253r, %u253s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_9_0_PMU", kUnitId = 253 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u254r, %u254s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_10_0_PCU", kUnitId = 254 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u255r, %u255s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_10_0_PMU", kUnitId = 255 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u256r, %u256s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_11_0_PCU", kUnitId = 256 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u257r, %u257s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_11_0_PMU", kUnitId = 257 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u258r, %u258s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_12_0_PCU", kUnitId = 258 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u259r, %u259s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_12_0_PMU", kUnitId = 259 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u260r, %u260s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_13_0_PCU", kUnitId = 260 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u261r, %u261s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_13_0_PMU", kUnitId = 261 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u262r, %u262s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_14_0_PCU", kUnitId = 262 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u263r, %u263s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_14_0_PMU", kUnitId = 263 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u264r, %u264s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_15_0_PCU", kUnitId = 264 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u265r, %u265s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_15_0_PMU", kUnitId = 265 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u266r, %u266s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_16_0_PCU", kUnitId = 266 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u267r, %u267s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_16_0_PMU", kUnitId = 267 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u268r, %u268s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_17_0_PCU", kUnitId = 268 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u269r, %u269s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_17_0_PMU", kUnitId = 269 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u270r, %u270s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_18_0_PCU", kUnitId = 270 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u271r, %u271s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_18_0_PMU", kUnitId = 271 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u272r, %u272s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_19_0_PCU", kUnitId = 272 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u273r, %u273s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_19_0_PMU", kUnitId = 273 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u274r, %u274s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_20_0_PCU", kUnitId = 274 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u275r, %u275s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_20_0_PMU", kUnitId = 275 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u276r, %u276s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_21_0_PCU", kUnitId = 276 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u277r, %u277s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_21_0_PMU", kUnitId = 277 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u278r, %u278s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_22_0_PCU", kUnitId = 278 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u279r, %u279s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_22_0_PMU", kUnitId = 279 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u280r, %u280s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_23_0_PCU", kUnitId = 280 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u281r, %u281s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_23_0_PMU", kUnitId = 281 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u282r, %u282s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_24_0_PCU", kUnitId = 282 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u283r, %u283s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_24_0_PMU", kUnitId = 283 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u284r, %u284s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_25_0_PCU", kUnitId = 284 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u285r, %u285s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_25_0_PMU", kUnitId = 285 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u286r, %u286s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_26_0_PCU", kUnitId = 286 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u287r, %u287s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_26_0_PMU", kUnitId = 287 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u288r, %u288s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_27_0_PCU", kUnitId = 288 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u289r, %u289s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_27_0_PMU", kUnitId = 289 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u290r, %u290s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_28_0_PCU", kUnitId = 290 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u291r, %u291s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_28_0_PMU", kUnitId = 291 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u292r, %u292s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_29_0_PCU", kUnitId = 292 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u293r, %u293s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_29_0_PMU", kUnitId = 293 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u294r, %u294s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_30_0_PCU", kUnitId = 294 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u295r, %u295s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_30_0_PMU", kUnitId = 295 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u296r, %u296s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_31_0_PCU", kUnitId = 296 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u297r, %u297s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_2_31_0_PMU", kUnitId = 297 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u298r, %u298s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_0_0_PCU", kUnitId = 298 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u299r, %u299s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_0_0_PMU", kUnitId = 299 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u300r, %u300s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_1_0_PCU", kUnitId = 300 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u301r, %u301s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_1_0_PMU", kUnitId = 301 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u302r, %u302s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_2_0_PCU", kUnitId = 302 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u303r, %u303s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_2_0_PMU", kUnitId = 303 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u304r, %u304s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_3_0_PCU", kUnitId = 304 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u305r, %u305s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_3_0_PMU", kUnitId = 305 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u306r, %u306s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_4_0_PCU", kUnitId = 306 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u307r, %u307s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_4_0_PMU", kUnitId = 307 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u308r, %u308s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_5_0_PCU", kUnitId = 308 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u309r, %u309s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_5_0_PMU", kUnitId = 309 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u310r, %u310s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_6_0_PCU", kUnitId = 310 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u311r, %u311s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_6_0_PMU", kUnitId = 311 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u312r, %u312s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_7_0_PCU", kUnitId = 312 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u313r, %u313s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_7_0_PMU", kUnitId = 313 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u314r, %u314s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_8_0_PCU", kUnitId = 314 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u315r, %u315s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_8_0_PMU", kUnitId = 315 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u316r, %u316s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_9_0_PCU", kUnitId = 316 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u317r, %u317s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_9_0_PMU", kUnitId = 317 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u318r, %u318s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_10_0_PCU", kUnitId = 318 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u319r, %u319s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_10_0_PMU", kUnitId = 319 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u320r, %u320s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_11_0_PCU", kUnitId = 320 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u321r, %u321s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_11_0_PMU", kUnitId = 321 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u322r, %u322s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_12_0_PCU", kUnitId = 322 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u323r, %u323s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_12_0_PMU", kUnitId = 323 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u324r, %u324s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_13_0_PCU", kUnitId = 324 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u325r, %u325s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_13_0_PMU", kUnitId = 325 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u326r, %u326s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_14_0_PCU", kUnitId = 326 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u327r, %u327s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_14_0_PMU", kUnitId = 327 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u328r, %u328s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_15_0_PCU", kUnitId = 328 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u329r, %u329s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_15_0_PMU", kUnitId = 329 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u330r, %u330s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_16_0_PCU", kUnitId = 330 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u331r, %u331s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_16_0_PMU", kUnitId = 331 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u332r, %u332s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_17_0_PCU", kUnitId = 332 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u333r, %u333s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_17_0_PMU", kUnitId = 333 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u334r, %u334s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_18_0_PCU", kUnitId = 334 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u335r, %u335s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_18_0_PMU", kUnitId = 335 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u336r, %u336s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_19_0_PCU", kUnitId = 336 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u337r, %u337s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_19_0_PMU", kUnitId = 337 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u338r, %u338s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_20_0_PCU", kUnitId = 338 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u339r, %u339s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_20_0_PMU", kUnitId = 339 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u340r, %u340s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_21_0_PCU", kUnitId = 340 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u341r, %u341s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_21_0_PMU", kUnitId = 341 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u342r, %u342s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_22_0_PCU", kUnitId = 342 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u343r, %u343s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_22_0_PMU", kUnitId = 343 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u344r, %u344s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_23_0_PCU", kUnitId = 344 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u345r, %u345s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_23_0_PMU", kUnitId = 345 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u346r, %u346s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_24_0_PCU", kUnitId = 346 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u347r, %u347s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_24_0_PMU", kUnitId = 347 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u348r, %u348s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_25_0_PCU", kUnitId = 348 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u349r, %u349s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_25_0_PMU", kUnitId = 349 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u350r, %u350s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_26_0_PCU", kUnitId = 350 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u351r, %u351s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_26_0_PMU", kUnitId = 351 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u352r, %u352s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_27_0_PCU", kUnitId = 352 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u353r, %u353s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_27_0_PMU", kUnitId = 353 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u354r, %u354s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_28_0_PCU", kUnitId = 354 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u355r, %u355s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_28_0_PMU", kUnitId = 355 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u356r, %u356s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_29_0_PCU", kUnitId = 356 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u357r, %u357s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_29_0_PMU", kUnitId = 357 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u358r, %u358s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_30_0_PCU", kUnitId = 358 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u359r, %u359s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_3_30_0_PMU", kUnitId = 359 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u360r, %u360s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_4_0_0_PCU", kUnitId = 360 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u361r, %u361s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_gemm_4_0_0_PMU", kUnitId = 361 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u362r, %u362s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_393_head1_neck0_data_w0_pmu0", kUnitId = 362 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u363r, %u363s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_393_head1_neck0_data_w1_pmu1", kUnitId = 363 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u364r, %u364s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_393_head1_neck0_data_w2_pmu2", kUnitId = 364 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u365r, %u365s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_393_head1_neck0_data_w3_pmu3", kUnitId = 365 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u366r, %u366s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_393_head1_neck0_data_w4_pmu4", kUnitId = 366 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u367r, %u367s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_393_head1_neck0_rob_pmu", kUnitId = 367 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u368r, %u368s:2 = plasma.unit.Pmu() attributes {kName = "bias_add_0_0_390.wbufpmu0", kUnitId = 368 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u369r, %u369s:5 = plasma.unit.Pcu() attributes {kName = "bias_add_0_0_390.add0_output", kUnitId = 369 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u370r, %u370s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_210_head1_neck0_data_pmu0", kUnitId = 370 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u371r, %u371s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_440_head0_head1_neck0_data_pmu0", kUnitId = 371 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u372r, %u372s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_397_head1_neck0_data_pmu0", kUnitId = 372 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u373r, %u373s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_441_head0_head1_neck0_data_pmu0", kUnitId = 373 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u374r, %u374s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_399_head1_neck0_data_pmu0", kUnitId = 374 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u375r, %u375s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_432_head1_neck0_data_pmu0", kUnitId = 375 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u376r, %u376s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_431_head1_neck0_data_pmu0", kUnitId = 376 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u377r, %u377s:3 = plasma.unit.Pmu() attributes {kName = "realign_0_0_418.gbuffer_head1_neck0_data_pmu0", kUnitId = 377 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u378r, %u378s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_400_head1_neck0_data_pmu0", kUnitId = 378 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u379r, %u379s:5 = plasma.unit.Pcu() attributes {kName = "sub_0_0_330_output", kUnitId = 379 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u380r, %u380s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_442_head0_head1_neck0_data_pmu0", kUnitId = 380 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u381r, %u381s:5 = plasma.unit.Pcu() attributes {kName = "mul_0_0_331_output", kUnitId = 381 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u382r, %u382s:8 = plasma.unit.Pcu() attributes {kName = "mean_unalign_0_0_332_output", kUnitId = 382 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u383r, %u383s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_401_head1_neck0_data_pmu0", kUnitId = 383 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u384r, %u384s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_204_head1_neck0_data_pmu0", kUnitId = 384 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ScalarSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink)
      %u385r, %u385s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_208_head1_neck0_data_pmu0", kUnitId = 385 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u386r, %u386s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_208_head1_neck0_hydra0_pmu", kUnitId = 386 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u387r, %u387s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_208_head1_neck0_hydra1_pmu", kUnitId = 387 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u388r, %u388s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_208_head1_neck0_hydra2_pmu", kUnitId = 388 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u389r, %u389s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_208_head1_neck0_hydra3_pmu", kUnitId = 389 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u390r, %u390s:3 = plasma.unit.Pmu() attributes {kName = "lbuf1a_0_0_396_head1_neck0_data_pmu0", kUnitId = 390 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u391r, %u391s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_0_max_417792", kUnitId = 391 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u392r, %u392s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_417792_max_835584", kUnitId = 392 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u393r, %u393s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_835584_max_1253376", kUnitId = 393 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u394r, %u394s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_1253376_max_1671168", kUnitId = 394 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u395r, %u395s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_1671168_max_2088960", kUnitId = 395 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u396r, %u396s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_2088960_max_2506752", kUnitId = 396 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u397r, %u397s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_2506752_max_2924544", kUnitId = 397 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u398r, %u398s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_2924544_max_3342336", kUnitId = 398 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u399r, %u399s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_3342336_max_3760128", kUnitId = 399 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u400r, %u400s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_3760128_max_4177920", kUnitId = 400 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u401r, %u401s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_4177920_max_4595712", kUnitId = 401 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u402r, %u402s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_4595712_max_5013504", kUnitId = 402 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u403r, %u403s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_5013504_max_5431296", kUnitId = 403 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u404r, %u404s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_5431296_max_5849088", kUnitId = 404 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u405r, %u405s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_5849088_max_6266880", kUnitId = 405 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u406r, %u406s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_6266880_max_6684672", kUnitId = 406 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u407r, %u407s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvcnn__conv_layer__conv2d_weight_permute.tbuf_ROB_R_0_0_0_0", kUnitId = 407 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u408r, %u408s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_197_D_0_0", kUnitId = 408 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u409r, %u409s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1u_0_0_198_D_0_0", kUnitId = 409 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u410r, %u410s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_202_D_0_0", kUnitId = 410 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u411r, %u411s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_10", kUnitId = 411 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u412r, %u412s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_3", kUnitId = 412 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u413r, %u413s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_11", kUnitId = 413 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u414r, %u414s:4 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_23", kUnitId = 414 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u415r, %u415s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_20_ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_0_0_274", kUnitId = 415 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u416r, %u416s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_1", kOnChipLayout = !plasma.TL<30x136x3xbf16:RVRM:64>, kUnitId = 416 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u417r, %u417s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_2", kOnChipLayout = !plasma.TL<3xi32:RVRM>, kUnitId = 417 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u418r, %u418s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_3", kOnChipLayout = !plasma.TL<256x1xbf16:CVRM:64>, kUnitId = 418 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u419r, %u419s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_4", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 419 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u420r, %u420s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 420 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u421r, %u421s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_6", kOnChipLayout = !plasma.TL<60x136xbf16:RVRM:64>, kUnitId = 421 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u422r, %u422s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_7", kOnChipLayout = !plasma.TL<96xi32:RVRM:64>, kUnitId = 422 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u423r, %u423s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_8", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM>, kUnitId = 423 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u424r, %u424s = plasma.unit.Vag(%arg8) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_1", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 424 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u425r, %u425s = plasma.unit.Vag(%arg9) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_2", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 425 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u426r, %u426s = plasma.unit.Vag(%arg10) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_3", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 426 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u427r, %u427s = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_4", kOnChipLayout = !plasma.TL<1x64xui8:RVRM>, kUnitId = 427 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u0s#0, %u5s#3) [gbuf1a_0_0_430_head1_neck0_data_pmu0 >> gbuf1a_0_0_430_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u1s#0, %u5s#3) [gbuf1a_0_0_430_head1_neck0_data_pmu1 >> gbuf1a_0_0_430_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#0, %u5s#3) [gbuf1a_0_0_430_head1_neck0_data_pmu2 >> gbuf1a_0_0_430_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u5s#3) [gbuf1a_0_0_430_head1_neck0_data_pmu3 >> gbuf1a_0_0_430_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u5s#3) [gbuf1a_0_0_430_head1_neck0_data_pmu4 >> gbuf1a_0_0_430_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u5s#0, %u0s#1) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#1, %u0s#2) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#0, %u1s#1) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#1, %u1s#2) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#0, %u2s#1) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#1, %u2s#2) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#0, %u3s#1) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#1, %u3s#2) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#0, %u4s#1) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#1, %u4s#2) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> gbuf1a_0_0_430_head1_neck0_data_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#2, %u6s#2) [gbuf1a_0_0_430_head1_neck0_rob_pmu >> realign_0_0_412_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u6s#0, %u7s#1) [realign_0_0_412_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_395_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u6s#1, %u5s#4) [realign_0_0_412_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_430_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u7s#0, %u8s#1) [gbuf1a_0_0_395_head1_neck0_data_pmu0 >> realign_0_0_413_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u8s#0, %u391s#3) [realign_0_0_413_gbuffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#0, %u10s#1) [vector_transpose_0_0_414_buffer_head1_neck0_data_pmu0 >> gbuf2a_0_0_437_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#0, %u12s#2) [gbuf2a_0_0_437_head1_neck0_data_pmu0 >> split_kernel_gbuf_0_0_296_head1_neck0_data_r0_r1_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u24s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_297_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u27s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_298_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u30s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_299_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u33s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_300_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u36s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_301_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u39s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_302_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u42s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_303_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u45s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_304_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u48s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_305_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u51s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_306_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u54s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_307_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u57s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_308_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u60s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_309_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u63s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_310_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u66s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_311_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u69s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_312_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u72s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_313_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u75s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_314_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u78s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_315_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u81s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_316_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u84s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_317_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u87s#1) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> biggemm_0_0_318_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#1, %u384s#5) [sbuf2u_0_0_295_head1_neck0_data_pmu0 >> gbuf2u_0_0_204_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u12s#0, %u23s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r0_r1_pmu0 >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u12s#1, %u26s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r0_r1_pmu0 >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#0, %u29s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r2_r3_pmu1 >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#1, %u32s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r2_r3_pmu1 >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#0, %u35s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r4_r5_pmu2 >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#1, %u38s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r4_r5_pmu2 >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#0, %u41s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r6_r7_pmu3 >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#1, %u44s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r6_r7_pmu3 >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#0, %u47s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r8_r9_pmu4 >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#1, %u50s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r8_r9_pmu4 >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u17s#0, %u53s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r10_r11_pmu5 >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u17s#1, %u56s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r10_r11_pmu5 >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u18s#0, %u59s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r12_r13_pmu6 >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u18s#1, %u62s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r12_r13_pmu6 >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u19s#0, %u65s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r14_r15_pmu7 >> biggemm_0_0_311_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u19s#1, %u68s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r14_r15_pmu7 >> biggemm_0_0_312_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u20s#0, %u71s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r16_r17_pmu8 >> biggemm_0_0_313_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u20s#1, %u74s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r16_r17_pmu8 >> biggemm_0_0_314_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#0, %u77s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r18_r19_pmu9 >> biggemm_0_0_315_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#1, %u80s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r18_r19_pmu9 >> biggemm_0_0_316_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u22s#0, %u83s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r20_r21_pmu10 >> biggemm_0_0_317_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u22s#1, %u86s#2) [split_kernel_gbuf_0_0_296_head1_neck0_data_r20_r21_pmu10 >> biggemm_0_0_318_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#0, %u95s#3) [biggemm_0_0_297_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u24s#0, %u23s#1) [biggemm_0_0_297_gemm_0_0_0_PMU >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u24s#0, %u25s#1) [biggemm_0_0_297_gemm_0_0_0_PMU >> biggemm_0_0_297_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#0, %u95s#3) [biggemm_0_0_298_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u27s#0, %u26s#1) [biggemm_0_0_298_gemm_0_0_0_PMU >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u27s#0, %u28s#1) [biggemm_0_0_298_gemm_0_0_0_PMU >> biggemm_0_0_298_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u29s#0, %u95s#3) [biggemm_0_0_299_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u30s#0, %u29s#1) [biggemm_0_0_299_gemm_0_0_0_PMU >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u30s#0, %u31s#1) [biggemm_0_0_299_gemm_0_0_0_PMU >> biggemm_0_0_299_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u95s#3) [biggemm_0_0_300_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#0, %u32s#1) [biggemm_0_0_300_gemm_0_0_0_PMU >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#0, %u34s#1) [biggemm_0_0_300_gemm_0_0_0_PMU >> biggemm_0_0_300_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u35s#0, %u96s#3) [biggemm_0_0_301_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u36s#0, %u35s#1) [biggemm_0_0_301_gemm_0_0_0_PMU >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u36s#0, %u37s#1) [biggemm_0_0_301_gemm_0_0_0_PMU >> biggemm_0_0_301_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u38s#0, %u96s#3) [biggemm_0_0_302_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u39s#0, %u38s#1) [biggemm_0_0_302_gemm_0_0_0_PMU >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u39s#0, %u40s#1) [biggemm_0_0_302_gemm_0_0_0_PMU >> biggemm_0_0_302_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u41s#0, %u96s#3) [biggemm_0_0_303_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u42s#0, %u41s#1) [biggemm_0_0_303_gemm_0_0_0_PMU >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u42s#0, %u43s#1) [biggemm_0_0_303_gemm_0_0_0_PMU >> biggemm_0_0_303_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u44s#0, %u96s#3) [biggemm_0_0_304_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u45s#0, %u44s#1) [biggemm_0_0_304_gemm_0_0_0_PMU >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u45s#0, %u46s#1) [biggemm_0_0_304_gemm_0_0_0_PMU >> biggemm_0_0_304_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#0, %u97s#3) [biggemm_0_0_305_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u48s#0, %u47s#1) [biggemm_0_0_305_gemm_0_0_0_PMU >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u48s#0, %u49s#1) [biggemm_0_0_305_gemm_0_0_0_PMU >> biggemm_0_0_305_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u50s#0, %u97s#3) [biggemm_0_0_306_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u51s#0, %u50s#1) [biggemm_0_0_306_gemm_0_0_0_PMU >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u51s#0, %u52s#1) [biggemm_0_0_306_gemm_0_0_0_PMU >> biggemm_0_0_306_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u53s#0, %u97s#3) [biggemm_0_0_307_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u54s#0, %u53s#1) [biggemm_0_0_307_gemm_0_0_0_PMU >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u54s#0, %u55s#1) [biggemm_0_0_307_gemm_0_0_0_PMU >> biggemm_0_0_307_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#0, %u97s#3) [biggemm_0_0_308_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u57s#0, %u56s#1) [biggemm_0_0_308_gemm_0_0_0_PMU >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u57s#0, %u58s#1) [biggemm_0_0_308_gemm_0_0_0_PMU >> biggemm_0_0_308_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u59s#0, %u98s#3) [biggemm_0_0_309_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#0, %u59s#1) [biggemm_0_0_309_gemm_0_0_0_PMU >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#0, %u61s#1) [biggemm_0_0_309_gemm_0_0_0_PMU >> biggemm_0_0_309_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#0, %u98s#3) [biggemm_0_0_310_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u63s#0, %u62s#1) [biggemm_0_0_310_gemm_0_0_0_PMU >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u63s#0, %u64s#1) [biggemm_0_0_310_gemm_0_0_0_PMU >> biggemm_0_0_310_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u65s#0, %u98s#3) [biggemm_0_0_311_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u66s#0, %u65s#1) [biggemm_0_0_311_gemm_0_0_0_PMU >> biggemm_0_0_311_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u66s#0, %u67s#1) [biggemm_0_0_311_gemm_0_0_0_PMU >> biggemm_0_0_311_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u68s#0, %u98s#3) [biggemm_0_0_312_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u69s#0, %u68s#1) [biggemm_0_0_312_gemm_0_0_0_PMU >> biggemm_0_0_312_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u69s#0, %u70s#1) [biggemm_0_0_312_gemm_0_0_0_PMU >> biggemm_0_0_312_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u71s#0, %u99s#3) [biggemm_0_0_313_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u72s#0, %u71s#1) [biggemm_0_0_313_gemm_0_0_0_PMU >> biggemm_0_0_313_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u72s#0, %u73s#1) [biggemm_0_0_313_gemm_0_0_0_PMU >> biggemm_0_0_313_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u74s#0, %u99s#3) [biggemm_0_0_314_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u75s#0, %u74s#1) [biggemm_0_0_314_gemm_0_0_0_PMU >> biggemm_0_0_314_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u75s#0, %u76s#1) [biggemm_0_0_314_gemm_0_0_0_PMU >> biggemm_0_0_314_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u77s#0, %u99s#3) [biggemm_0_0_315_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u78s#0, %u77s#1) [biggemm_0_0_315_gemm_0_0_0_PMU >> biggemm_0_0_315_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u78s#0, %u79s#1) [biggemm_0_0_315_gemm_0_0_0_PMU >> biggemm_0_0_315_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u80s#0, %u99s#3) [biggemm_0_0_316_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u81s#0, %u80s#1) [biggemm_0_0_316_gemm_0_0_0_PMU >> biggemm_0_0_316_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u81s#0, %u82s#1) [biggemm_0_0_316_gemm_0_0_0_PMU >> biggemm_0_0_316_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u83s#0, %u100s#3) [biggemm_0_0_317_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u84s#0, %u83s#1) [biggemm_0_0_317_gemm_0_0_0_PMU >> biggemm_0_0_317_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u84s#0, %u85s#1) [biggemm_0_0_317_gemm_0_0_0_PMU >> biggemm_0_0_317_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u86s#0, %u100s#3) [biggemm_0_0_318_gemm_0_0_0_PCU >> gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u87s#0, %u86s#1) [biggemm_0_0_318_gemm_0_0_0_PMU >> biggemm_0_0_318_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u87s#0, %u88s#1) [biggemm_0_0_318_gemm_0_0_0_PMU >> biggemm_0_0_318_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u89s#0, %u101s#3) [gbuf2u_0_0_321_head1_neck0_data_w0_pmu0 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u90s#0, %u101s#3) [gbuf2u_0_0_321_head1_neck0_data_w1_pmu1 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u91s#0, %u101s#3) [gbuf2u_0_0_321_head1_neck0_data_w2_pmu2 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u92s#0, %u101s#3) [gbuf2u_0_0_321_head1_neck0_data_w3_pmu3 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u93s#0, %u101s#3) [gbuf2u_0_0_321_head1_neck0_data_w4_pmu4 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u94s#0, %u101s#3) [gbuf2u_0_0_321_head1_neck0_data_w5_pmu5 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u95s#0, %u89s#1) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> gbuf2u_0_0_321_head1_neck0_data_w0_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u95s#1, %u23s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#1, %u25s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_297_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u23s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u25s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_297_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#1, %u26s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#1, %u28s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_298_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u26s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u28s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_298_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#1, %u29s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#1, %u31s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_299_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u29s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u31s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_299_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#1, %u32s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#1, %u34s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_300_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u32s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#2, %u34s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_300_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#0, %u90s#1) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> gbuf2u_0_0_321_head1_neck0_data_w1_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u96s#1, %u35s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#1, %u37s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_301_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u35s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u37s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_301_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#1, %u38s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#1, %u40s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_302_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u38s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u40s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_302_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#1, %u41s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#1, %u43s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_303_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u41s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u43s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_303_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#1, %u44s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#1, %u46s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_304_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u44s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u96s#2, %u46s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_304_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#0, %u91s#1) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> gbuf2u_0_0_321_head1_neck0_data_w2_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u97s#1, %u47s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#1, %u49s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_305_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u47s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u49s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_305_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#1, %u50s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#1, %u52s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_306_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u50s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u52s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_306_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#1, %u53s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#1, %u55s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_307_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u53s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u55s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_307_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#1, %u56s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#1, %u58s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_308_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u56s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#2, %u58s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_308_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#0, %u92s#1) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> gbuf2u_0_0_321_head1_neck0_data_w3_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u98s#1, %u59s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#1, %u61s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_309_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u59s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u61s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_309_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#1, %u62s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#1, %u64s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_310_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u62s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u64s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_310_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#1, %u65s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_311_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#1, %u67s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_311_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u65s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_311_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u67s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_311_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#1, %u68s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_312_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#1, %u70s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_312_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u68s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_312_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u70s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_312_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#0, %u93s#1) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> gbuf2u_0_0_321_head1_neck0_data_w4_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u99s#1, %u71s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_313_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u73s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_313_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u71s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_313_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u73s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_313_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u74s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_314_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u76s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_314_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u74s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_314_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u76s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_314_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u77s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_315_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u79s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_315_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u77s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_315_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u79s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_315_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u80s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_316_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u82s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_316_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u80s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_316_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#2, %u82s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_316_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#0, %u94s#1) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> gbuf2u_0_0_321_head1_neck0_data_w5_pmu5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u100s#1, %u83s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_317_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#1, %u85s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_317_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#2, %u83s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_317_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#2, %u85s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_317_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#1, %u86s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_318_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#1, %u88s#3) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_318_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#2, %u86s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_318_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#2, %u88s#4) [gbuf2u_0_0_321_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_318_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u89s#2) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#1, %u89s#3) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u90s#2) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#1, %u90s#3) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u91s#2) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#1, %u91s#3) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u92s#2) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#1, %u92s#3) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u93s#2) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#1, %u93s#3) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u94s#2) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w5_pmu5] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#1, %u94s#3) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> gbuf2u_0_0_321_head1_neck0_data_w5_pmu5] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#2, %u102s#2) [gbuf2u_0_0_321_head1_neck0_rob_pmu >> bias_transpose_add_0_0_322_bias_add_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u102s#0, %u104s#1) [bias_transpose_add_0_0_322_bias_add_pcu >> streaming_transpose_0_0_323_transpose_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u103s#1, %u102s#1) [bias_transpose_add_0_0_322_bias_add_pmu >> bias_transpose_add_0_0_322_bias_add_pcu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u104s#0, %u105s#3) [streaming_transpose_0_0_323_transpose_pmu >> gbuf2u_0_0_206_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u105s#0, %u385s#3) [gbuf2u_0_0_206_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u105s#0, %u372s#3) [gbuf2u_0_0_206_head1_neck0_data_pmu0 >> gbuf2a_0_0_397_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u105s#1, %u101s#4) [gbuf2u_0_0_206_head1_neck0_data_pmu0 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#2, %u101s#5) [gbuf2u_0_0_206_head1_neck0_data_pmu0 >> gbuf2u_0_0_321_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u106s#0, %u106s#2) [ptconvcnn__dense_layer__linear_gemm_0_0_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u106s#1, %u362s#4) [ptconvcnn__dense_layer__linear_gemm_0_0_0_PCU >> gbuf1a_0_0_393_head1_neck0_data_w0_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u107s#0, %u106s#3) [ptconvcnn__dense_layer__linear_gemm_0_0_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u108s#0, %u108s#2) [ptconvcnn__dense_layer__linear_gemm_0_1_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u109s#0, %u108s#3) [ptconvcnn__dense_layer__linear_gemm_0_1_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u110s#0, %u110s#2) [ptconvcnn__dense_layer__linear_gemm_0_2_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u111s#0, %u110s#3) [ptconvcnn__dense_layer__linear_gemm_0_2_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u112s#0, %u112s#2) [ptconvcnn__dense_layer__linear_gemm_0_3_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#0, %u112s#3) [ptconvcnn__dense_layer__linear_gemm_0_3_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u114s#0, %u114s#2) [ptconvcnn__dense_layer__linear_gemm_0_4_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u115s#0, %u114s#3) [ptconvcnn__dense_layer__linear_gemm_0_4_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u116s#0, %u116s#2) [ptconvcnn__dense_layer__linear_gemm_0_5_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u117s#0, %u116s#3) [ptconvcnn__dense_layer__linear_gemm_0_5_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u118s#0, %u118s#2) [ptconvcnn__dense_layer__linear_gemm_0_6_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u119s#0, %u118s#3) [ptconvcnn__dense_layer__linear_gemm_0_6_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u120s#0, %u120s#2) [ptconvcnn__dense_layer__linear_gemm_0_7_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u121s#0, %u120s#3) [ptconvcnn__dense_layer__linear_gemm_0_7_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u122s#0, %u122s#2) [ptconvcnn__dense_layer__linear_gemm_0_8_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u123s#0, %u122s#3) [ptconvcnn__dense_layer__linear_gemm_0_8_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u124s#0, %u124s#2) [ptconvcnn__dense_layer__linear_gemm_0_9_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u125s#0, %u124s#3) [ptconvcnn__dense_layer__linear_gemm_0_9_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u126s#0, %u126s#2) [ptconvcnn__dense_layer__linear_gemm_0_10_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u127s#0, %u126s#3) [ptconvcnn__dense_layer__linear_gemm_0_10_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u128s#0, %u128s#2) [ptconvcnn__dense_layer__linear_gemm_0_11_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u129s#0, %u128s#3) [ptconvcnn__dense_layer__linear_gemm_0_11_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u130s#0, %u130s#2) [ptconvcnn__dense_layer__linear_gemm_0_12_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u131s#0, %u130s#3) [ptconvcnn__dense_layer__linear_gemm_0_12_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u132s#0, %u132s#2) [ptconvcnn__dense_layer__linear_gemm_0_13_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u133s#0, %u132s#3) [ptconvcnn__dense_layer__linear_gemm_0_13_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u134s#0, %u134s#2) [ptconvcnn__dense_layer__linear_gemm_0_14_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u135s#0, %u134s#3) [ptconvcnn__dense_layer__linear_gemm_0_14_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u136s#0, %u136s#2) [ptconvcnn__dense_layer__linear_gemm_0_15_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u137s#0, %u136s#3) [ptconvcnn__dense_layer__linear_gemm_0_15_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u138s#0, %u138s#2) [ptconvcnn__dense_layer__linear_gemm_0_16_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u139s#0, %u138s#3) [ptconvcnn__dense_layer__linear_gemm_0_16_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u140s#0, %u140s#2) [ptconvcnn__dense_layer__linear_gemm_0_17_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u141s#0, %u140s#3) [ptconvcnn__dense_layer__linear_gemm_0_17_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u142s#0, %u142s#2) [ptconvcnn__dense_layer__linear_gemm_0_18_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u143s#0, %u142s#3) [ptconvcnn__dense_layer__linear_gemm_0_18_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u144s#0, %u144s#2) [ptconvcnn__dense_layer__linear_gemm_0_19_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u145s#0, %u144s#3) [ptconvcnn__dense_layer__linear_gemm_0_19_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u146s#0, %u146s#2) [ptconvcnn__dense_layer__linear_gemm_0_20_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u147s#0, %u146s#3) [ptconvcnn__dense_layer__linear_gemm_0_20_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u148s#0, %u148s#2) [ptconvcnn__dense_layer__linear_gemm_0_21_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u149s#0, %u148s#3) [ptconvcnn__dense_layer__linear_gemm_0_21_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u150s#0, %u150s#2) [ptconvcnn__dense_layer__linear_gemm_0_22_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u151s#0, %u150s#3) [ptconvcnn__dense_layer__linear_gemm_0_22_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u152s#0, %u152s#2) [ptconvcnn__dense_layer__linear_gemm_0_23_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u153s#0, %u152s#3) [ptconvcnn__dense_layer__linear_gemm_0_23_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u154s#0, %u154s#2) [ptconvcnn__dense_layer__linear_gemm_0_24_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u155s#0, %u154s#3) [ptconvcnn__dense_layer__linear_gemm_0_24_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u156s#0, %u156s#2) [ptconvcnn__dense_layer__linear_gemm_0_25_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u157s#0, %u156s#3) [ptconvcnn__dense_layer__linear_gemm_0_25_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u158s#0, %u158s#2) [ptconvcnn__dense_layer__linear_gemm_0_26_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u159s#0, %u158s#3) [ptconvcnn__dense_layer__linear_gemm_0_26_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u160s#0, %u160s#2) [ptconvcnn__dense_layer__linear_gemm_0_27_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u161s#0, %u160s#3) [ptconvcnn__dense_layer__linear_gemm_0_27_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u162s#0, %u162s#2) [ptconvcnn__dense_layer__linear_gemm_0_28_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u163s#0, %u162s#3) [ptconvcnn__dense_layer__linear_gemm_0_28_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u164s#0, %u164s#2) [ptconvcnn__dense_layer__linear_gemm_0_29_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u165s#0, %u164s#3) [ptconvcnn__dense_layer__linear_gemm_0_29_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u166s#0, %u166s#2) [ptconvcnn__dense_layer__linear_gemm_0_30_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u167s#0, %u166s#3) [ptconvcnn__dense_layer__linear_gemm_0_30_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u168s#0, %u168s#2) [ptconvcnn__dense_layer__linear_gemm_0_31_0_PCU >> ptconvcnn__dense_layer__linear_gemm_0_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u169s#0, %u168s#3) [ptconvcnn__dense_layer__linear_gemm_0_31_0_PMU >> ptconvcnn__dense_layer__linear_gemm_0_31_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u170s#0, %u170s#2) [ptconvcnn__dense_layer__linear_gemm_1_0_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u170s#1, %u363s#4) [ptconvcnn__dense_layer__linear_gemm_1_0_0_PCU >> gbuf1a_0_0_393_head1_neck0_data_w1_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u171s#0, %u170s#3) [ptconvcnn__dense_layer__linear_gemm_1_0_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u172s#0, %u172s#2) [ptconvcnn__dense_layer__linear_gemm_1_1_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u173s#0, %u172s#3) [ptconvcnn__dense_layer__linear_gemm_1_1_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u174s#0, %u174s#2) [ptconvcnn__dense_layer__linear_gemm_1_2_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u175s#0, %u174s#3) [ptconvcnn__dense_layer__linear_gemm_1_2_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u176s#0, %u176s#2) [ptconvcnn__dense_layer__linear_gemm_1_3_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u177s#0, %u176s#3) [ptconvcnn__dense_layer__linear_gemm_1_3_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u178s#0, %u178s#2) [ptconvcnn__dense_layer__linear_gemm_1_4_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u179s#0, %u178s#3) [ptconvcnn__dense_layer__linear_gemm_1_4_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u180s#0, %u180s#2) [ptconvcnn__dense_layer__linear_gemm_1_5_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u181s#0, %u180s#3) [ptconvcnn__dense_layer__linear_gemm_1_5_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u182s#0, %u182s#2) [ptconvcnn__dense_layer__linear_gemm_1_6_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u183s#0, %u182s#3) [ptconvcnn__dense_layer__linear_gemm_1_6_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u184s#0, %u184s#2) [ptconvcnn__dense_layer__linear_gemm_1_7_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u185s#0, %u184s#3) [ptconvcnn__dense_layer__linear_gemm_1_7_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u186s#0, %u186s#2) [ptconvcnn__dense_layer__linear_gemm_1_8_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u187s#0, %u186s#3) [ptconvcnn__dense_layer__linear_gemm_1_8_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u188s#0, %u188s#2) [ptconvcnn__dense_layer__linear_gemm_1_9_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u189s#0, %u188s#3) [ptconvcnn__dense_layer__linear_gemm_1_9_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u190s#0, %u190s#2) [ptconvcnn__dense_layer__linear_gemm_1_10_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u191s#0, %u190s#3) [ptconvcnn__dense_layer__linear_gemm_1_10_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u192s#0, %u192s#2) [ptconvcnn__dense_layer__linear_gemm_1_11_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u193s#0, %u192s#3) [ptconvcnn__dense_layer__linear_gemm_1_11_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u194s#0, %u194s#2) [ptconvcnn__dense_layer__linear_gemm_1_12_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u195s#0, %u194s#3) [ptconvcnn__dense_layer__linear_gemm_1_12_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u196s#0, %u196s#2) [ptconvcnn__dense_layer__linear_gemm_1_13_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u197s#0, %u196s#3) [ptconvcnn__dense_layer__linear_gemm_1_13_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u198s#0, %u198s#2) [ptconvcnn__dense_layer__linear_gemm_1_14_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u199s#0, %u198s#3) [ptconvcnn__dense_layer__linear_gemm_1_14_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u200s#0, %u200s#2) [ptconvcnn__dense_layer__linear_gemm_1_15_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u201s#0, %u200s#3) [ptconvcnn__dense_layer__linear_gemm_1_15_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u202s#0, %u202s#2) [ptconvcnn__dense_layer__linear_gemm_1_16_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u203s#0, %u202s#3) [ptconvcnn__dense_layer__linear_gemm_1_16_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u204s#0, %u204s#2) [ptconvcnn__dense_layer__linear_gemm_1_17_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u205s#0, %u204s#3) [ptconvcnn__dense_layer__linear_gemm_1_17_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u206s#0, %u206s#2) [ptconvcnn__dense_layer__linear_gemm_1_18_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u207s#0, %u206s#3) [ptconvcnn__dense_layer__linear_gemm_1_18_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u208s#0, %u208s#2) [ptconvcnn__dense_layer__linear_gemm_1_19_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u209s#0, %u208s#3) [ptconvcnn__dense_layer__linear_gemm_1_19_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u210s#0, %u210s#2) [ptconvcnn__dense_layer__linear_gemm_1_20_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u211s#0, %u210s#3) [ptconvcnn__dense_layer__linear_gemm_1_20_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u212s#0, %u212s#2) [ptconvcnn__dense_layer__linear_gemm_1_21_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u213s#0, %u212s#3) [ptconvcnn__dense_layer__linear_gemm_1_21_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u214s#0, %u214s#2) [ptconvcnn__dense_layer__linear_gemm_1_22_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u215s#0, %u214s#3) [ptconvcnn__dense_layer__linear_gemm_1_22_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u216s#0, %u216s#2) [ptconvcnn__dense_layer__linear_gemm_1_23_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u217s#0, %u216s#3) [ptconvcnn__dense_layer__linear_gemm_1_23_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u218s#0, %u218s#2) [ptconvcnn__dense_layer__linear_gemm_1_24_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u219s#0, %u218s#3) [ptconvcnn__dense_layer__linear_gemm_1_24_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u220s#0, %u220s#2) [ptconvcnn__dense_layer__linear_gemm_1_25_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u221s#0, %u220s#3) [ptconvcnn__dense_layer__linear_gemm_1_25_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u222s#0, %u222s#2) [ptconvcnn__dense_layer__linear_gemm_1_26_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u223s#0, %u222s#3) [ptconvcnn__dense_layer__linear_gemm_1_26_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u224s#0, %u224s#2) [ptconvcnn__dense_layer__linear_gemm_1_27_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u225s#0, %u224s#3) [ptconvcnn__dense_layer__linear_gemm_1_27_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u226s#0, %u226s#2) [ptconvcnn__dense_layer__linear_gemm_1_28_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u227s#0, %u226s#3) [ptconvcnn__dense_layer__linear_gemm_1_28_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u228s#0, %u228s#2) [ptconvcnn__dense_layer__linear_gemm_1_29_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u229s#0, %u228s#3) [ptconvcnn__dense_layer__linear_gemm_1_29_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u230s#0, %u230s#2) [ptconvcnn__dense_layer__linear_gemm_1_30_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u231s#0, %u230s#3) [ptconvcnn__dense_layer__linear_gemm_1_30_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u232s#0, %u232s#2) [ptconvcnn__dense_layer__linear_gemm_1_31_0_PCU >> ptconvcnn__dense_layer__linear_gemm_1_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u233s#0, %u232s#3) [ptconvcnn__dense_layer__linear_gemm_1_31_0_PMU >> ptconvcnn__dense_layer__linear_gemm_1_31_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u234s#0, %u234s#2) [ptconvcnn__dense_layer__linear_gemm_2_0_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u234s#1, %u364s#4) [ptconvcnn__dense_layer__linear_gemm_2_0_0_PCU >> gbuf1a_0_0_393_head1_neck0_data_w2_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u235s#0, %u234s#3) [ptconvcnn__dense_layer__linear_gemm_2_0_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u236s#0, %u236s#2) [ptconvcnn__dense_layer__linear_gemm_2_1_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u237s#0, %u236s#3) [ptconvcnn__dense_layer__linear_gemm_2_1_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u238s#0, %u238s#2) [ptconvcnn__dense_layer__linear_gemm_2_2_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u239s#0, %u238s#3) [ptconvcnn__dense_layer__linear_gemm_2_2_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u240s#0, %u240s#2) [ptconvcnn__dense_layer__linear_gemm_2_3_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u241s#0, %u240s#3) [ptconvcnn__dense_layer__linear_gemm_2_3_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u242s#0, %u242s#2) [ptconvcnn__dense_layer__linear_gemm_2_4_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u243s#0, %u242s#3) [ptconvcnn__dense_layer__linear_gemm_2_4_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u244s#0, %u244s#2) [ptconvcnn__dense_layer__linear_gemm_2_5_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u245s#0, %u244s#3) [ptconvcnn__dense_layer__linear_gemm_2_5_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u246s#0, %u246s#2) [ptconvcnn__dense_layer__linear_gemm_2_6_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u247s#0, %u246s#3) [ptconvcnn__dense_layer__linear_gemm_2_6_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u248s#0, %u248s#2) [ptconvcnn__dense_layer__linear_gemm_2_7_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u249s#0, %u248s#3) [ptconvcnn__dense_layer__linear_gemm_2_7_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u250s#0, %u250s#2) [ptconvcnn__dense_layer__linear_gemm_2_8_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u251s#0, %u250s#3) [ptconvcnn__dense_layer__linear_gemm_2_8_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u252s#0, %u252s#2) [ptconvcnn__dense_layer__linear_gemm_2_9_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u253s#0, %u252s#3) [ptconvcnn__dense_layer__linear_gemm_2_9_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u254s#0, %u254s#2) [ptconvcnn__dense_layer__linear_gemm_2_10_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u255s#0, %u254s#3) [ptconvcnn__dense_layer__linear_gemm_2_10_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u256s#0, %u256s#2) [ptconvcnn__dense_layer__linear_gemm_2_11_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u257s#0, %u256s#3) [ptconvcnn__dense_layer__linear_gemm_2_11_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u258s#0, %u258s#2) [ptconvcnn__dense_layer__linear_gemm_2_12_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u259s#0, %u258s#3) [ptconvcnn__dense_layer__linear_gemm_2_12_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u260s#0, %u260s#2) [ptconvcnn__dense_layer__linear_gemm_2_13_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u261s#0, %u260s#3) [ptconvcnn__dense_layer__linear_gemm_2_13_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u262s#0, %u262s#2) [ptconvcnn__dense_layer__linear_gemm_2_14_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u263s#0, %u262s#3) [ptconvcnn__dense_layer__linear_gemm_2_14_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u264s#0, %u264s#2) [ptconvcnn__dense_layer__linear_gemm_2_15_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u265s#0, %u264s#3) [ptconvcnn__dense_layer__linear_gemm_2_15_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u266s#0, %u266s#2) [ptconvcnn__dense_layer__linear_gemm_2_16_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u267s#0, %u266s#3) [ptconvcnn__dense_layer__linear_gemm_2_16_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u268s#0, %u268s#2) [ptconvcnn__dense_layer__linear_gemm_2_17_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u269s#0, %u268s#3) [ptconvcnn__dense_layer__linear_gemm_2_17_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u270s#0, %u270s#2) [ptconvcnn__dense_layer__linear_gemm_2_18_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u271s#0, %u270s#3) [ptconvcnn__dense_layer__linear_gemm_2_18_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u272s#0, %u272s#2) [ptconvcnn__dense_layer__linear_gemm_2_19_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u273s#0, %u272s#3) [ptconvcnn__dense_layer__linear_gemm_2_19_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u274s#0, %u274s#2) [ptconvcnn__dense_layer__linear_gemm_2_20_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u275s#0, %u274s#3) [ptconvcnn__dense_layer__linear_gemm_2_20_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u276s#0, %u276s#2) [ptconvcnn__dense_layer__linear_gemm_2_21_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u277s#0, %u276s#3) [ptconvcnn__dense_layer__linear_gemm_2_21_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u278s#0, %u278s#2) [ptconvcnn__dense_layer__linear_gemm_2_22_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u279s#0, %u278s#3) [ptconvcnn__dense_layer__linear_gemm_2_22_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u280s#0, %u280s#2) [ptconvcnn__dense_layer__linear_gemm_2_23_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u281s#0, %u280s#3) [ptconvcnn__dense_layer__linear_gemm_2_23_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u282s#0, %u282s#2) [ptconvcnn__dense_layer__linear_gemm_2_24_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u283s#0, %u282s#3) [ptconvcnn__dense_layer__linear_gemm_2_24_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u284s#0, %u284s#2) [ptconvcnn__dense_layer__linear_gemm_2_25_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u285s#0, %u284s#3) [ptconvcnn__dense_layer__linear_gemm_2_25_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u286s#0, %u286s#2) [ptconvcnn__dense_layer__linear_gemm_2_26_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u287s#0, %u286s#3) [ptconvcnn__dense_layer__linear_gemm_2_26_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u288s#0, %u288s#2) [ptconvcnn__dense_layer__linear_gemm_2_27_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u289s#0, %u288s#3) [ptconvcnn__dense_layer__linear_gemm_2_27_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u290s#0, %u290s#2) [ptconvcnn__dense_layer__linear_gemm_2_28_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u291s#0, %u290s#3) [ptconvcnn__dense_layer__linear_gemm_2_28_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u292s#0, %u292s#2) [ptconvcnn__dense_layer__linear_gemm_2_29_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u293s#0, %u292s#3) [ptconvcnn__dense_layer__linear_gemm_2_29_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u294s#0, %u294s#2) [ptconvcnn__dense_layer__linear_gemm_2_30_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u295s#0, %u294s#3) [ptconvcnn__dense_layer__linear_gemm_2_30_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u296s#0, %u296s#2) [ptconvcnn__dense_layer__linear_gemm_2_31_0_PCU >> ptconvcnn__dense_layer__linear_gemm_2_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u297s#0, %u296s#3) [ptconvcnn__dense_layer__linear_gemm_2_31_0_PMU >> ptconvcnn__dense_layer__linear_gemm_2_31_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u298s#0, %u298s#2) [ptconvcnn__dense_layer__linear_gemm_3_0_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u298s#1, %u365s#4) [ptconvcnn__dense_layer__linear_gemm_3_0_0_PCU >> gbuf1a_0_0_393_head1_neck0_data_w3_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u299s#0, %u298s#3) [ptconvcnn__dense_layer__linear_gemm_3_0_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u300s#0, %u300s#2) [ptconvcnn__dense_layer__linear_gemm_3_1_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u301s#0, %u300s#3) [ptconvcnn__dense_layer__linear_gemm_3_1_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u302s#0, %u302s#2) [ptconvcnn__dense_layer__linear_gemm_3_2_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u303s#0, %u302s#3) [ptconvcnn__dense_layer__linear_gemm_3_2_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u304s#0, %u304s#2) [ptconvcnn__dense_layer__linear_gemm_3_3_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u305s#0, %u304s#3) [ptconvcnn__dense_layer__linear_gemm_3_3_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u306s#0, %u306s#2) [ptconvcnn__dense_layer__linear_gemm_3_4_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u307s#0, %u306s#3) [ptconvcnn__dense_layer__linear_gemm_3_4_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u308s#0, %u308s#2) [ptconvcnn__dense_layer__linear_gemm_3_5_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u309s#0, %u308s#3) [ptconvcnn__dense_layer__linear_gemm_3_5_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u310s#0, %u310s#2) [ptconvcnn__dense_layer__linear_gemm_3_6_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u311s#0, %u310s#3) [ptconvcnn__dense_layer__linear_gemm_3_6_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u312s#0, %u312s#2) [ptconvcnn__dense_layer__linear_gemm_3_7_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u313s#0, %u312s#3) [ptconvcnn__dense_layer__linear_gemm_3_7_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u314s#0, %u314s#2) [ptconvcnn__dense_layer__linear_gemm_3_8_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u315s#0, %u314s#3) [ptconvcnn__dense_layer__linear_gemm_3_8_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u316s#0, %u316s#2) [ptconvcnn__dense_layer__linear_gemm_3_9_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u317s#0, %u316s#3) [ptconvcnn__dense_layer__linear_gemm_3_9_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u318s#0, %u318s#2) [ptconvcnn__dense_layer__linear_gemm_3_10_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u319s#0, %u318s#3) [ptconvcnn__dense_layer__linear_gemm_3_10_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u320s#0, %u320s#2) [ptconvcnn__dense_layer__linear_gemm_3_11_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u321s#0, %u320s#3) [ptconvcnn__dense_layer__linear_gemm_3_11_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u322s#0, %u322s#2) [ptconvcnn__dense_layer__linear_gemm_3_12_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u323s#0, %u322s#3) [ptconvcnn__dense_layer__linear_gemm_3_12_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u324s#0, %u324s#2) [ptconvcnn__dense_layer__linear_gemm_3_13_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u325s#0, %u324s#3) [ptconvcnn__dense_layer__linear_gemm_3_13_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u326s#0, %u326s#2) [ptconvcnn__dense_layer__linear_gemm_3_14_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u327s#0, %u326s#3) [ptconvcnn__dense_layer__linear_gemm_3_14_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u328s#0, %u328s#2) [ptconvcnn__dense_layer__linear_gemm_3_15_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u329s#0, %u328s#3) [ptconvcnn__dense_layer__linear_gemm_3_15_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u330s#0, %u330s#2) [ptconvcnn__dense_layer__linear_gemm_3_16_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u331s#0, %u330s#3) [ptconvcnn__dense_layer__linear_gemm_3_16_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u332s#0, %u332s#2) [ptconvcnn__dense_layer__linear_gemm_3_17_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u333s#0, %u332s#3) [ptconvcnn__dense_layer__linear_gemm_3_17_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u334s#0, %u334s#2) [ptconvcnn__dense_layer__linear_gemm_3_18_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u335s#0, %u334s#3) [ptconvcnn__dense_layer__linear_gemm_3_18_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u336s#0, %u336s#2) [ptconvcnn__dense_layer__linear_gemm_3_19_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u337s#0, %u336s#3) [ptconvcnn__dense_layer__linear_gemm_3_19_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u338s#0, %u338s#2) [ptconvcnn__dense_layer__linear_gemm_3_20_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u339s#0, %u338s#3) [ptconvcnn__dense_layer__linear_gemm_3_20_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u340s#0, %u340s#2) [ptconvcnn__dense_layer__linear_gemm_3_21_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u341s#0, %u340s#3) [ptconvcnn__dense_layer__linear_gemm_3_21_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u342s#0, %u342s#2) [ptconvcnn__dense_layer__linear_gemm_3_22_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u343s#0, %u342s#3) [ptconvcnn__dense_layer__linear_gemm_3_22_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u344s#0, %u344s#2) [ptconvcnn__dense_layer__linear_gemm_3_23_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u345s#0, %u344s#3) [ptconvcnn__dense_layer__linear_gemm_3_23_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u346s#0, %u346s#2) [ptconvcnn__dense_layer__linear_gemm_3_24_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u347s#0, %u346s#3) [ptconvcnn__dense_layer__linear_gemm_3_24_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u348s#0, %u348s#2) [ptconvcnn__dense_layer__linear_gemm_3_25_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u349s#0, %u348s#3) [ptconvcnn__dense_layer__linear_gemm_3_25_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u350s#0, %u350s#2) [ptconvcnn__dense_layer__linear_gemm_3_26_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u351s#0, %u350s#3) [ptconvcnn__dense_layer__linear_gemm_3_26_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u352s#0, %u352s#2) [ptconvcnn__dense_layer__linear_gemm_3_27_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u353s#0, %u352s#3) [ptconvcnn__dense_layer__linear_gemm_3_27_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u354s#0, %u354s#2) [ptconvcnn__dense_layer__linear_gemm_3_28_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#0, %u354s#3) [ptconvcnn__dense_layer__linear_gemm_3_28_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u356s#0, %u356s#2) [ptconvcnn__dense_layer__linear_gemm_3_29_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#0, %u356s#3) [ptconvcnn__dense_layer__linear_gemm_3_29_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u358s#0, %u358s#2) [ptconvcnn__dense_layer__linear_gemm_3_30_0_PCU >> ptconvcnn__dense_layer__linear_gemm_3_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u359s#0, %u358s#3) [ptconvcnn__dense_layer__linear_gemm_3_30_0_PMU >> ptconvcnn__dense_layer__linear_gemm_3_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u360s#0, %u360s#2) [ptconvcnn__dense_layer__linear_gemm_4_0_0_PCU >> ptconvcnn__dense_layer__linear_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#1, %u366s#3) [ptconvcnn__dense_layer__linear_gemm_4_0_0_PCU >> gbuf1a_0_0_393_head1_neck0_data_w4_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u361s#0, %u360s#3) [ptconvcnn__dense_layer__linear_gemm_4_0_0_PMU >> ptconvcnn__dense_layer__linear_gemm_4_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u362s#0, %u367s#3) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> gbuf1a_0_0_393_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u362s#1, %u106s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u108s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u110s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u112s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u114s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u116s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u118s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u120s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u122s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u124s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u126s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u128s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u130s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u132s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u134s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u136s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u138s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u140s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u142s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u144s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u146s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u148s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u150s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u152s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u154s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u156s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u158s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u160s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u162s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u164s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u166s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u168s#5) [gbuf1a_0_0_393_head1_neck0_data_w0_pmu0 >> ptconvcnn__dense_layer__linear_gemm_0_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#0, %u367s#3) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> gbuf1a_0_0_393_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u363s#1, %u170s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u172s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u174s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u176s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u178s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u180s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u182s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u184s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u186s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u188s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u190s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u192s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u194s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u196s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u198s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u200s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u202s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u204s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u206s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u208s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u210s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u212s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u214s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u216s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u218s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u220s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u222s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u224s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u226s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u228s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u230s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u232s#5) [gbuf1a_0_0_393_head1_neck0_data_w1_pmu1 >> ptconvcnn__dense_layer__linear_gemm_1_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#0, %u367s#3) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> gbuf1a_0_0_393_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u364s#1, %u234s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u236s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u238s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u240s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u242s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u244s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u246s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u248s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u250s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u252s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u254s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u256s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u258s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u260s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u262s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u264s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u266s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u268s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u270s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u272s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u274s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u276s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u278s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u280s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u282s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u284s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u286s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u288s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u290s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u292s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u294s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u296s#5) [gbuf1a_0_0_393_head1_neck0_data_w2_pmu2 >> ptconvcnn__dense_layer__linear_gemm_2_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#0, %u367s#3) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> gbuf1a_0_0_393_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u365s#1, %u298s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u300s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u302s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u304s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u306s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u308s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u310s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u312s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u314s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u316s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u318s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u320s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u322s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u324s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u326s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u328s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u330s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u332s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u334s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u336s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u338s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u340s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u342s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u344s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u346s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u348s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u350s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u352s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u354s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u356s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u358s#5) [gbuf1a_0_0_393_head1_neck0_data_w3_pmu3 >> ptconvcnn__dense_layer__linear_gemm_3_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u366s#0, %u367s#3) [gbuf1a_0_0_393_head1_neck0_data_w4_pmu4 >> gbuf1a_0_0_393_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u367s#0, %u362s#2) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#1, %u362s#3) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#0, %u363s#2) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#1, %u363s#3) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#0, %u364s#2) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#1, %u364s#3) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#0, %u365s#2) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#1, %u365s#3) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#0, %u366s#1) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#1, %u366s#2) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> gbuf1a_0_0_393_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#2, %u369s#4) [gbuf1a_0_0_393_head1_neck0_rob_pmu >> bias_add_0_0_390_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u368s#0, %u369s#3) [bias_add_0_0_390_wbufpmu0 >> bias_add_0_0_390_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u369s#0, %u369s#2) [bias_add_0_0_390_add0_output >> bias_add_0_0_390_add0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u369s#1, %u370s#3) [bias_add_0_0_390_add0_output >> gbuf2u_0_0_210_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u370s#0, %u371s#3) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2a_0_0_440_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u370s#1, %u386s#2) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra0_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#1, %u387s#2) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra1_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#1, %u388s#2) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra2_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#1, %u389s#2) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra3_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#2, %u386s#3) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra0_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#2, %u387s#3) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra1_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#2, %u388s#3) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra2_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#2, %u389s#3) [gbuf2u_0_0_210_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra3_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u371s#0, %u373s#3) [gbuf2a_0_0_440_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_441_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u371s#1, %u374s#3) [gbuf2a_0_0_440_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_399_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u371s#2, %u370s#4) [gbuf2a_0_0_440_head0_head1_neck0_data_pmu0 >> gbuf2u_0_0_210_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u372s#0, %u105s#6) [gbuf2a_0_0_397_head1_neck0_data_pmu0 >> gbuf2u_0_0_206_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u372s#1, %u105s#7) [gbuf2a_0_0_397_head1_neck0_data_pmu0 >> gbuf2u_0_0_206_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u372s#2, %u415s#2) [gbuf2a_0_0_397_head1_neck0_data_pmu0 >> s0_backing_pmu_group_20_ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_0_0_274] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u373s#1, %u375s#3) [gbuf2a_0_0_441_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_432_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u373s#2, %u371s#4) [gbuf2a_0_0_441_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_440_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u373s#0, %u425s) [gbuf2a_0_0_441_head0_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u374s#1, %u371s#5) [gbuf2a_0_0_399_head1_neck0_data_pmu0 >> gbuf2a_0_0_440_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u374s#2, %u371s#6) [gbuf2a_0_0_399_head1_neck0_data_pmu0 >> gbuf2a_0_0_440_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u374s#0, %u426s) [gbuf2a_0_0_399_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u375s#0, %u379s#3) [gbuf2a_0_0_432_head1_neck0_data_pmu0 >> sub_0_0_330_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u375s#1, %u373s#4) [gbuf2a_0_0_432_head1_neck0_data_pmu0 >> gbuf2a_0_0_441_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u375s#2, %u373s#5) [gbuf2a_0_0_432_head1_neck0_data_pmu0 >> gbuf2a_0_0_441_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u376s#0, %u377s#2) [gbuf1a_0_0_431_head1_neck0_data_pmu0 >> realign_0_0_418_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u376s#1, %u414s#2) [gbuf1a_0_0_431_head1_neck0_data_pmu0 >> s0_fronting_pmu_load_group_23] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u377s#0, %u378s#1) [realign_0_0_418_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_400_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u377s#1, %u376s#2) [realign_0_0_418_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_431_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u378s#0, %u379s#4) [gbuf1a_0_0_400_head1_neck0_data_pmu0 >> sub_0_0_330_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u379s#0, %u379s#2) [sub_0_0_330_output >> sub_0_0_330_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u379s#1, %u380s#2) [sub_0_0_330_output >> gbuf1a_0_0_442_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u380s#0, %u381s#3) [gbuf1a_0_0_442_head0_head1_neck0_data_pmu0 >> mul_0_0_331_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u380s#1, %u381s#4) [gbuf1a_0_0_442_head0_head1_neck0_data_pmu0 >> mul_0_0_331_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u381s#0, %u381s#2) [mul_0_0_331_output >> mul_0_0_331_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u381s#1, %u382s#7) [mul_0_0_331_output >> mean_unalign_0_0_332_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u382s#0, %u382s#4) [mean_unalign_0_0_332_output >> mean_unalign_0_0_332_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u382s#1, %u382s#5) [mean_unalign_0_0_332_output >> mean_unalign_0_0_332_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u382s#2, %u382s#6) [mean_unalign_0_0_332_output >> mean_unalign_0_0_332_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u382s#3, %u383s#1) [mean_unalign_0_0_332_output >> gbuf1a_0_0_401_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u383s#0, %u427s) [gbuf1a_0_0_401_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u384s#0, %u11s#2) [gbuf2u_0_0_204_head1_neck0_data_pmu0 >> sbuf2u_0_0_295_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u384s#1, %u410s#4) [gbuf2u_0_0_204_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_202_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u384s#2, %u410s#5) [gbuf2u_0_0_204_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_202_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u385s#0, %u386s#1) [gbuf2u_0_0_208_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra0_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u385s#0, %u387s#1) [gbuf2u_0_0_208_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra1_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u385s#0, %u388s#1) [gbuf2u_0_0_208_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra2_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u385s#0, %u389s#1) [gbuf2u_0_0_208_head1_neck0_data_pmu0 >> gbuf2u_0_0_208_head1_neck0_hydra3_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u385s#1, %u105s#4) [gbuf2u_0_0_208_head1_neck0_data_pmu0 >> gbuf2u_0_0_206_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u385s#2, %u105s#5) [gbuf2u_0_0_208_head1_neck0_data_pmu0 >> gbuf2u_0_0_206_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u386s#0, %u106s#4) [gbuf2u_0_0_208_head1_neck0_hydra0_pmu >> ptconvcnn__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u387s#0, %u170s#4) [gbuf2u_0_0_208_head1_neck0_hydra1_pmu >> ptconvcnn__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u388s#0, %u234s#4) [gbuf2u_0_0_208_head1_neck0_hydra2_pmu >> ptconvcnn__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u389s#0, %u298s#4) [gbuf2u_0_0_208_head1_neck0_hydra3_pmu >> ptconvcnn__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u390s#1, %u384s#4) [lbuf1a_0_0_396_head1_neck0_data_pmu0 >> gbuf2u_0_0_204_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u391s#0, %u407s#3) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u407s#0, %u391s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u392s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_417792_max_835584] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u393s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_835584_max_1253376] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u394s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1253376_max_1671168] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u395s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1671168_max_2088960] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u396s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2088960_max_2506752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u397s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2506752_max_2924544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u398s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2924544_max_3342336] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u399s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3342336_max_3760128] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u400s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3760128_max_4177920] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u401s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4177920_max_4595712] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u402s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4595712_max_5013504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u403s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5013504_max_5431296] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u404s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5431296_max_5849088] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u405s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5849088_max_6266880] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u406s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_6266880_max_6684672] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u391s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u392s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_417792_max_835584] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u393s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_835584_max_1253376] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u394s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1253376_max_1671168] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u395s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1671168_max_2088960] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u396s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2088960_max_2506752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u397s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2506752_max_2924544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u398s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2924544_max_3342336] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u399s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3342336_max_3760128] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u400s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3760128_max_4177920] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u401s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4177920_max_4595712] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u402s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4595712_max_5013504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u403s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5013504_max_5431296] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u404s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5431296_max_5849088] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u405s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5849088_max_6266880] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#1, %u406s#2) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_6266880_max_6684672] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#2, %u9s#1) [LogregTorchSamba_partition_0_0__ptconvcnn__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> vector_transpose_0_0_414_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u408s#1, %u410s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_197_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_202_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u409s#1, %u408s#2) [LogregTorchSamba_partition_0_0__tbuf1u_0_0_198_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_197_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u410s#0, %u408s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_202_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_197_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#1, %u408s#4) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_202_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_197_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#2, %u384s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_202_D_0_0 >> gbuf2u_0_0_204_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u411s#1, %u0s#3) [s0_fronting_pmu_load_group_10 >> gbuf1a_0_0_430_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u412s#1, %u107s#1) [s0_fronting_pmu_load_group_3 >> ptconvcnn__dense_layer__linear_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u413s#1, %u368s#1) [s0_fronting_pmu_load_group_11 >> bias_add_0_0_390_wbufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u414s#1, %u376s#3) [s0_fronting_pmu_load_group_23 >> gbuf1a_0_0_431_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u415s#1, %u372s#4) [s0_backing_pmu_group_20_ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_0_0_274 >> gbuf2a_0_0_397_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u415s#0, %u424s) [s0_backing_pmu_group_20_ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_0_0_274 >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u416s#0, %u411s#0) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> s0_fronting_pmu_load_group_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u416s#1, %u411s#2) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> s0_fronting_pmu_load_group_10] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u417s#0, %u409s#0) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> LogregTorchSamba_partition_0_0__tbuf1u_0_0_198_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u417s#1, %u409s#2) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> LogregTorchSamba_partition_0_0__tbuf1u_0_0_198_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u418s#0, %u103s#0) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> bias_transpose_add_0_0_322_bias_add_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u418s#1, %u103s#2) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> bias_transpose_add_0_0_322_bias_add_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u419s#0, %u412s#0) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u419s#1, %u412s#2) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_3] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u420s#0, %u413s#0) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u420s#1, %u413s#2) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_11] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u421s#0, %u408s#0) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_197_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u421s#1, %u408s#5) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_197_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u422s#0, %u390s#0) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> lbuf1a_0_0_396_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u422s#1, %u390s#2) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> lbuf1a_0_0_396_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u423s#0, %u414s#0) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_23] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u423s#1, %u414s#3) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_23] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_0_0_430()  {
          "plasma.BindUnit"(%u0r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u1r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u2r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u3r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u4r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u5r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @realign_0_0_412()  {
          plasma.SuperNode @realign_0_0_412.gbuffer()  {
            "plasma.BindUnit"(%u6r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_0_0_395()  {
          "plasma.BindUnit"(%u7r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @realign_0_0_413()  {
          plasma.SuperNode @realign_0_0_413.gbuffer()  {
            "plasma.BindUnit"(%u8r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @vector_transpose_0_0_414()  {
          plasma.SuperNode @vector_transpose_0_0_414.buffer()  {
            "plasma.BindUnit"(%u9r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2a_0_0_437()  {
          "plasma.BindUnit"(%u10r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sbuf2u_0_0_295()  {
          "plasma.BindUnit"(%u11r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @split_kernel_gbuf_0_0_296()  {
          "plasma.BindUnit"(%u12r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u13r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u14r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u15r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u16r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u17r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u18r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u19r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u20r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u21r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u22r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @biggemm_0_0_297()  {
          "plasma.BindUnit"(%u23r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u24r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u25r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_297_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_298()  {
          "plasma.BindUnit"(%u26r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u27r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u28r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_298_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_299()  {
          "plasma.BindUnit"(%u29r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u30r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u31r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_299_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_300()  {
          "plasma.BindUnit"(%u32r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u33r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u34r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_300_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_301()  {
          "plasma.BindUnit"(%u35r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u36r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u37r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_301_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_302()  {
          "plasma.BindUnit"(%u38r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u39r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u40r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_302_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_303()  {
          "plasma.BindUnit"(%u41r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u42r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u43r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_303_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_304()  {
          "plasma.BindUnit"(%u44r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u45r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u46r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_304_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_305()  {
          "plasma.BindUnit"(%u47r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u48r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u49r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_305_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_306()  {
          "plasma.BindUnit"(%u50r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u51r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u52r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_306_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_307()  {
          "plasma.BindUnit"(%u53r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u54r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u55r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_307_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_308()  {
          "plasma.BindUnit"(%u56r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u57r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u58r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_308_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_309()  {
          "plasma.BindUnit"(%u59r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u60r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u61r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_309_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_310()  {
          "plasma.BindUnit"(%u62r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u63r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u64r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_310_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_311()  {
          "plasma.BindUnit"(%u65r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u66r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u67r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_311_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_312()  {
          "plasma.BindUnit"(%u68r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u69r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u70r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_312_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_313()  {
          "plasma.BindUnit"(%u71r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u72r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u73r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_313_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_314()  {
          "plasma.BindUnit"(%u74r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u75r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u76r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_314_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_315()  {
          "plasma.BindUnit"(%u77r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u78r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u79r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_315_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_316()  {
          "plasma.BindUnit"(%u80r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u81r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u82r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_316_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_317()  {
          "plasma.BindUnit"(%u83r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u84r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u85r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_317_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_318()  {
          "plasma.BindUnit"(%u86r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u87r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u88r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_318_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf2u_0_0_321()  {
          "plasma.BindUnit"(%u89r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u90r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u91r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u92r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u93r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u94r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u95r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u96r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u97r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u98r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u99r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u100r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u101r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @bias_transpose_add_0_0_322()  {
          "plasma.BindUnit"(%u102r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u103r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @bias_transpose_add_0_0_322.bias_wbuf() {}
        }
        plasma.SuperNode @streaming_transpose_0_0_323()  {
          "plasma.BindUnit"(%u104r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_0_0_206()  {
          "plasma.BindUnit"(%u105r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvcnn__dense_layer__linear()  {
          "plasma.BindUnit"(%u106r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u107r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u108r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u109r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u110r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u111r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u112r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u113r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u114r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u115r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u116r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u117r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u118r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u119r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u120r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u121r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u122r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u123r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u124r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u125r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u126r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u127r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u128r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u129r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u130r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u131r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u132r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u133r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u134r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u135r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u136r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u137r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u138r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u139r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u140r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u141r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u142r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u143r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u144r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u145r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u146r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u147r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u148r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u149r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u150r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u151r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u152r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u153r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u154r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u155r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u156r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u157r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u158r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u159r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u160r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u161r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u162r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u163r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u164r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u165r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u166r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u167r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u168r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u169r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u170r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u171r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u172r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u173r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u174r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u175r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u176r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u177r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u178r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u179r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u180r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u181r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u182r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u183r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u184r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u185r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u186r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u187r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u188r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u189r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u190r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u191r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u192r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u193r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u194r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u195r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u196r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u197r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u198r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u199r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u200r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u201r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u202r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u203r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u204r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u205r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u206r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u207r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u208r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u209r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u210r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u211r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u212r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u213r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u214r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u215r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u216r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u217r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u218r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u219r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u220r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u221r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u222r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u223r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u224r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u225r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u226r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u227r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u228r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u229r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u230r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u231r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u232r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u233r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u234r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u235r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u236r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u237r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u238r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u239r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u240r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u241r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u242r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u243r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u244r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u245r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u246r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u247r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u248r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u249r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u250r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u251r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u252r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u253r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u254r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u255r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u256r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u257r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u258r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u259r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u260r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u261r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u262r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u263r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u264r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u265r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u266r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u267r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u268r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u269r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u270r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u271r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u272r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u273r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u274r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u275r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u276r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u277r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u278r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u279r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u280r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u281r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u282r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u283r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u284r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u285r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u286r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u287r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u288r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u289r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u290r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u291r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u292r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u293r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u294r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u295r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u296r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u297r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u298r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u299r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u300r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u301r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u302r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u303r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u304r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u305r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u306r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u307r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u308r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u309r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u310r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u311r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u312r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u313r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u314r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u315r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u316r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u317r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u318r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u319r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u320r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u321r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u322r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u323r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u324r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u325r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u326r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u327r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u328r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u329r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u330r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u331r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u332r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u333r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u334r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u335r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u336r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u337r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u338r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u339r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u340r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u341r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u342r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u343r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u344r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u345r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u346r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u347r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u348r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u349r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u350r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u351r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u352r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u353r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u354r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u355r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u356r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u357r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u358r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u359r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u360r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u361r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvcnn__dense_layer__linear_rowcolpargemm_4()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_rowcolpargemm_3()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_rowcolpargemm_2()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_rowcolpargemm_1()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_393()  {
          "plasma.BindUnit"(%u362r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u363r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u364r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u365r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u366r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u367r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @bias_add_0_0_390()  {
          plasma.SuperNode @bias_add_0_0_390.add0()  {
            "plasma.BindUnit"(%u369r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @bias_add_0_0_390.wbuf()  {
            "plasma.BindUnit"(%u368r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_0_0_210()  {
          "plasma.BindUnit"(%u370r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_440()  {
          "plasma.BindUnit"(%u371r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_397()  {
          "plasma.BindUnit"(%u372r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_441()  {
          "plasma.BindUnit"(%u373r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_399()  {
          "plasma.BindUnit"(%u374r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_432()  {
          "plasma.BindUnit"(%u375r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_431()  {
          "plasma.BindUnit"(%u376r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @realign_0_0_418()  {
          plasma.SuperNode @realign_0_0_418.gbuffer()  {
            "plasma.BindUnit"(%u377r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_0_0_400()  {
          "plasma.BindUnit"(%u378r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sub_0_0_330()  {
          "plasma.BindUnit"(%u379r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_442()  {
          "plasma.BindUnit"(%u380r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mul_0_0_331()  {
          "plasma.BindUnit"(%u381r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mean_unalign_0_0_332()  {
          "plasma.BindUnit"(%u382r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_401()  {
          "plasma.BindUnit"(%u383r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_0_0_204()  {
          "plasma.BindUnit"(%u384r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_0_0_208()  {
          "plasma.BindUnit"(%u385r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u386r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u387r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u388r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u389r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @lbuf1a_0_0_396()  {
          "plasma.BindUnit"(%u390r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvcnn__conv_layer__conv2d_weight_permute()  {
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u391r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u392r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u393r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u394r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u395r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u396r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u397r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u398r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u399r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u400r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u401r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u402r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u403r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u404r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u405r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u406r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u407r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @tbuf2u_0_0_197()  {
          "plasma.BindUnit"(%u408r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1u_0_0_198()  {
          "plasma.BindUnit"(%u409r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_0_0_202()  {
          "plasma.BindUnit"(%u410r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_10()  {
          "plasma.BindUnit"(%u411r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_3()  {
          "plasma.BindUnit"(%u412r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_11()  {
          "plasma.BindUnit"(%u413r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_23()  {
          "plasma.BindUnit"(%u414r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.backing_pmu_group_20_ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_0_0_274()  {
          "plasma.BindUnit"(%u415r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_1:ptconvcnn__conv_layer__weight"()  {
          "plasma.BindUnit"(%u416r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_2:inp_window_slice_1"()  {
          "plasma.BindUnit"(%u417r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_3:ptconvcnn__conv_layer__bias"()  {
          "plasma.BindUnit"(%u418r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_4:group_3"()  {
          "plasma.BindUnit"(%u419r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_5:group_11"()  {
          "plasma.BindUnit"(%u420r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_6:inp_window"()  {
          "plasma.BindUnit"(%u421r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_7:ptconvcnn__conv_layer__conv2d_conv_fwd_stream0__gather_list"()  {
          "plasma.BindUnit"(%u422r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_8:out_window"()  {
          "plasma.BindUnit"(%u423r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_1:ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight"()  {
          "plasma.BindUnit"(%u424r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_2:ptconvcnn__reshape0_used_by_ptconvcnn__criterion__mseloss_bwd_sub"()  {
          "plasma.BindUnit"(%u425r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_3:ptconvcnn__view__outputs__0"()  {
          "plasma.BindUnit"(%u426r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_4:ptconvcnn__criterion__mseloss__outputs__0"()  {
          "plasma.BindUnit"(%u427r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s1() attributes {kControlBlockId = 1 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>, %arg10: !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, %arg11: !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>, %arg12: !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM:64>,0,W>):  // no predecessors
      %u428r, %u428s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_226_head1_neck0_data_pmu0", kUnitId = 428 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u429r, %u429s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_229_head1_neck0_data_pmu0", kUnitId = 429 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u430r, %u430s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_232_head1_neck0_data_pmu0", kUnitId = 430 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u431r, %u431s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__criterion__mseloss_bwd_sub_output", kUnitId = 431 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u432r, %u432s:4 = plasma.unit.Pcu() attributes {kName = "scale_1_0_339_scaling_pcu", kUnitId = 432 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u433r, %u433s:3 = plasma.unit.Pmu() attributes {kName = "scale_1_0_340_input_B_pmu", kUnitId = 433 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.ScalarSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u434r, %u434s:5 = plasma.unit.Pcu() attributes {kName = "scale_1_0_340_scaling_pcu", kUnitId = 434 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ScalarSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink, !plasma.VectorSink)
      %u435r, %u435s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_237_head1_neck0_data_pmu0", kUnitId = 435 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u436r, %u436s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0_output", kUnitId = 436 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u437r, %u437s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_244_head1_neck0_data_pmu0", kUnitId = 437 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u438r, %u438s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_402_head1_neck0_data_pmu0", kUnitId = 438 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u439r, %u439s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_402_head1_neck0_data_pmu1", kUnitId = 439 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u440r, %u440s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_402_head1_neck0_data_pmu2", kUnitId = 440 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u441r, %u441s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_402_head1_neck0_data_pmu3", kUnitId = 441 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u442r, %u442s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_402_head1_neck0_rob_pmu", kUnitId = 442 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u443r, %u443s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU", kUnitId = 443 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u444r, %u444s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU", kUnitId = 444 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u445r, %u445s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU", kUnitId = 445 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u446r, %u446s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU", kUnitId = 446 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u447r, %u447s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU", kUnitId = 447 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u448r, %u448s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PMU", kUnitId = 448 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u449r, %u449s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU", kUnitId = 449 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u450r, %u450s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PMU", kUnitId = 450 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u451r, %u451s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU", kUnitId = 451 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u452r, %u452s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PMU", kUnitId = 452 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u453r, %u453s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU", kUnitId = 453 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u454r, %u454s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PMU", kUnitId = 454 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u455r, %u455s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU", kUnitId = 455 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u456r, %u456s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PMU", kUnitId = 456 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u457r, %u457s:6 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU", kUnitId = 457 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u458r, %u458s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PMU", kUnitId = 458 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u459r, %u459s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_247_head1_neck0_reformat_pmu0", kUnitId = 459 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u460r, %u460s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_247_head1_neck0_data_pmu0", kUnitId = 460 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u461r, %u461s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_248_head0_head1_neck0_data_pmu0", kUnitId = 461 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u462r, %u462s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU", kUnitId = 462 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u463r, %u463s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU", kUnitId = 463 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u464r, %u464s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_0", kUnitId = 464 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u465r, %u465s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU", kUnitId = 465 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u466r, %u466s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PMU", kUnitId = 466 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u467r, %u467s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_1", kUnitId = 467 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u468r, %u468s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU", kUnitId = 468 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u469r, %u469s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PMU", kUnitId = 469 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u470r, %u470s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_2", kUnitId = 470 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u471r, %u471s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU", kUnitId = 471 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u472r, %u472s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PMU", kUnitId = 472 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u473r, %u473s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_3", kUnitId = 473 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u474r, %u474s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU", kUnitId = 474 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u475r, %u475s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PMU", kUnitId = 475 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u476r, %u476s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_4", kUnitId = 476 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u477r, %u477s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU", kUnitId = 477 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u478r, %u478s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PMU", kUnitId = 478 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u479r, %u479s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_5", kUnitId = 479 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u480r, %u480s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU", kUnitId = 480 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u481r, %u481s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PMU", kUnitId = 481 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u482r, %u482s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_6", kUnitId = 482 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u483r, %u483s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU", kUnitId = 483 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u484r, %u484s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PMU", kUnitId = 484 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u485r, %u485s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_7", kUnitId = 485 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u486r, %u486s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU", kUnitId = 486 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u487r, %u487s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PMU", kUnitId = 487 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u488r, %u488s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_8", kUnitId = 488 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u489r, %u489s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU", kUnitId = 489 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u490r, %u490s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PMU", kUnitId = 490 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u491r, %u491s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_9", kUnitId = 491 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u492r, %u492s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU", kUnitId = 492 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u493r, %u493s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PMU", kUnitId = 493 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u494r, %u494s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_10", kUnitId = 494 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u495r, %u495s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU", kUnitId = 495 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u496r, %u496s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PMU", kUnitId = 496 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u497r, %u497s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_11", kUnitId = 497 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u498r, %u498s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU", kUnitId = 498 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u499r, %u499s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PMU", kUnitId = 499 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u500r, %u500s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_12", kUnitId = 500 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u501r, %u501s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU", kUnitId = 501 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u502r, %u502s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PMU", kUnitId = 502 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u503r, %u503s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_13", kUnitId = 503 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u504r, %u504s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU", kUnitId = 504 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u505r, %u505s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PMU", kUnitId = 505 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u506r, %u506s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_14", kUnitId = 506 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u507r, %u507s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU", kUnitId = 507 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u508r, %u508s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PMU", kUnitId = 508 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u509r, %u509s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_15", kUnitId = 509 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u510r, %u510s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU", kUnitId = 510 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u511r, %u511s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PMU", kUnitId = 511 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u512r, %u512s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_16", kUnitId = 512 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u513r, %u513s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU", kUnitId = 513 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u514r, %u514s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PMU", kUnitId = 514 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u515r, %u515s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_17", kUnitId = 515 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u516r, %u516s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU", kUnitId = 516 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u517r, %u517s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PMU", kUnitId = 517 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u518r, %u518s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_18", kUnitId = 518 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u519r, %u519s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU", kUnitId = 519 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u520r, %u520s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PMU", kUnitId = 520 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u521r, %u521s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_19", kUnitId = 521 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u522r, %u522s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU", kUnitId = 522 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u523r, %u523s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PMU", kUnitId = 523 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u524r, %u524s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_20", kUnitId = 524 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u525r, %u525s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU", kUnitId = 525 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u526r, %u526s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PMU", kUnitId = 526 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u527r, %u527s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_21", kUnitId = 527 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u528r, %u528s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU", kUnitId = 528 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u529r, %u529s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PMU", kUnitId = 529 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u530r, %u530s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_22", kUnitId = 530 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u531r, %u531s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU", kUnitId = 531 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u532r, %u532s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PMU", kUnitId = 532 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u533r, %u533s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_23", kUnitId = 533 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u534r, %u534s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU", kUnitId = 534 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u535r, %u535s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PMU", kUnitId = 535 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u536r, %u536s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_24", kUnitId = 536 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u537r, %u537s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU", kUnitId = 537 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u538r, %u538s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PMU", kUnitId = 538 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u539r, %u539s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_25", kUnitId = 539 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u540r, %u540s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU", kUnitId = 540 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u541r, %u541s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PMU", kUnitId = 541 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u542r, %u542s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_26", kUnitId = 542 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u543r, %u543s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU", kUnitId = 543 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u544r, %u544s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PMU", kUnitId = 544 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u545r, %u545s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_27", kUnitId = 545 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u546r, %u546s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU", kUnitId = 546 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u547r, %u547s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PMU", kUnitId = 547 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u548r, %u548s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_28", kUnitId = 548 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u549r, %u549s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU", kUnitId = 549 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u550r, %u550s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PMU", kUnitId = 550 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u551r, %u551s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_29", kUnitId = 551 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u552r, %u552s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU", kUnitId = 552 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u553r, %u553s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PMU", kUnitId = 553 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u554r, %u554s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_30", kUnitId = 554 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u555r, %u555s:5 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU", kUnitId = 555 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u556r, %u556s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PMU", kUnitId = 556 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u557r, %u557s:4 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_31", kUnitId = 557 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u558r, %u558s:3 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 558 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u559r, %u559s:2 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 559 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u560r, %u560s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_250_head1_neck0_data_pmu0", kUnitId = 560 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u561r, %u561s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_443_head0_head1_neck0_data_pmu0", kUnitId = 561 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u562r, %u562s:2 = plasma.unit.Pmu() attributes {kName = "streaming_transpose_1_0_365_transpose_pmu", kUnitId = 562 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u563r, %u563s:3 = plasma.unit.Pmu() attributes {kName = "sbuf2u_1_0_369_head1_neck0_data_pmu0", kUnitId = 563 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u564r, %u564s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_1_0_370_head1_neck0_data_r0_r1_pmu0", kUnitId = 564 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u565r, %u565s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_1_0_370_head1_neck0_data_r2_r3_pmu1", kUnitId = 565 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u566r, %u566s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_371_gemm_0_0_0_PCU", kUnitId = 566 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u567r, %u567s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_371_gemm_0_0_0_PMU", kUnitId = 567 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u568r, %u568s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_371_gemm_0_0_1_PCU", kUnitId = 568 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u569r, %u569s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_372_gemm_0_0_0_PCU", kUnitId = 569 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u570r, %u570s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_372_gemm_0_0_0_PMU", kUnitId = 570 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u571r, %u571s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_372_gemm_0_0_1_PCU", kUnitId = 571 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u572r, %u572s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_373_gemm_0_0_0_PCU", kUnitId = 572 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u573r, %u573s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_373_gemm_0_0_0_PMU", kUnitId = 573 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u574r, %u574s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_373_gemm_0_0_1_PCU", kUnitId = 574 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u575r, %u575s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_374_gemm_0_0_0_PCU", kUnitId = 575 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u576r, %u576s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_374_gemm_0_0_0_PMU", kUnitId = 576 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u577r, %u577s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_374_gemm_0_0_1_PCU", kUnitId = 577 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u578r, %u578s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_376_head1_neck0_data_pmu0", kUnitId = 578 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u579r, %u579s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_376_head1_neck0_data_pmu1", kUnitId = 579 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u580r, %u580s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0", kUnitId = 580 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u581r, %u581s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_376_head1_neck0_rob_pmu", kUnitId = 581 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u582r, %u582s:2 = plasma.unit.Pcu() attributes {kName = "bias_transpose_grad_1_0_378_bias_grad_pcu", kUnitId = 582 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u583r, %u583s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_406_head1_neck0_data_pmu0", kUnitId = 583 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u584r, %u584s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output", kUnitId = 584 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u585r, %u585s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_1_0_output", kUnitId = 585 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u586r, %u586s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_2_0_output", kUnitId = 586 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u587r, %u587s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_3_0_output", kUnitId = 587 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u588r, %u588s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_4_0_output", kUnitId = 588 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u589r, %u589s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_5_0_output", kUnitId = 589 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u590r, %u590s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_6_0_output", kUnitId = 590 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u591r, %u591s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_7_0_output", kUnitId = 591 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u592r, %u592s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_8_0_output", kUnitId = 592 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u593r, %u593s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_9_0_output", kUnitId = 593 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u594r, %u594s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_10_0_output", kUnitId = 594 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u595r, %u595s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_11_0_output", kUnitId = 595 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u596r, %u596s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_12_0_output", kUnitId = 596 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u597r, %u597s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_13_0_output", kUnitId = 597 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u598r, %u598s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_14_0_output", kUnitId = 598 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u599r, %u599s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_15_0_output", kUnitId = 599 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u600r, %u600s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_16_0_output", kUnitId = 600 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u601r, %u601s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_17_0_output", kUnitId = 601 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u602r, %u602s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_18_0_output", kUnitId = 602 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u603r, %u603s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_19_0_output", kUnitId = 603 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u604r, %u604s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_20_0_output", kUnitId = 604 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u605r, %u605s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_21_0_output", kUnitId = 605 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u606r, %u606s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_22_0_output", kUnitId = 606 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u607r, %u607s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_23_0_output", kUnitId = 607 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u608r, %u608s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_24_0_output", kUnitId = 608 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u609r, %u609s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_25_0_output", kUnitId = 609 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u610r, %u610s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_26_0_output", kUnitId = 610 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u611r, %u611s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_27_0_output", kUnitId = 611 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u612r, %u612s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_28_0_output", kUnitId = 612 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u613r, %u613s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_29_0_output", kUnitId = 613 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u614r, %u614s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_30_0_output", kUnitId = 614 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u615r, %u615s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_31_0_output", kUnitId = 615 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u616r, %u616s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_0", kUnitId = 616 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u617r, %u617s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_1", kUnitId = 617 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u618r, %u618s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_2", kUnitId = 618 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u619r, %u619s:4 = plasma.unit.Pmu() attributes {kName = "sbuf1a_1_0_408_head1_neck0_data_pmu0", kUnitId = 619 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %u620r, %u620s:2 = plasma.unit.Pmu() attributes {kName = "vector_transpose_1_0_426.buffer_head1_neck0_data_pmu0", kUnitId = 620 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u621r, %u621s:2 = plasma.unit.Pmu() attributes {kName = "realign_1_0_427.gbuffer_head1_neck0_data_pmu0", kUnitId = 621 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u622r, %u622s:2 = plasma.unit.Pmu() attributes {kName = "realign_1_0_428.gbuffer_head1_neck0_data_pmu0", kUnitId = 622 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u623r, %u623s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_429.buffer_head1_neck0_data_pmu0", kUnitId = 623 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u624r, %u624s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_409_head1_neck0_data_pmu0", kUnitId = 624 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u625r, %u625s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_409_head1_neck0_data_pmu1", kUnitId = 625 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u626r, %u626s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_409_head1_neck0_data_pmu2", kUnitId = 626 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u627r, %u627s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_409_head1_neck0_data_pmu3", kUnitId = 627 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u628r, %u628s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_409_head1_neck0_data_pmu4", kUnitId = 628 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u629r, %u629s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_409_head1_neck0_rob_pmu", kUnitId = 629 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u630r, %u630s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_366_head1_neck0_data_pmu0", kUnitId = 630 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ScalarSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink)
      %u631r, %u631s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_157_head1_neck0_data_pmu0", kUnitId = 631 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ScalarSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink)
      %u632r, %u632s:2 = plasma.unit.Pmu() attributes {kName = "lbuf1a_1_0_405_head1_neck0_data_pmu0", kUnitId = 632 : i64}  {
      ^bb0(%arg13: !plasma.ScalarSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.VectorSink)
      %u633r, %u633s:3 = plasma.unit.Pmu() attributes {kName = "lbuf1a_1_0_407_head0_head1_neck0_data_pmu0", kUnitId = 633 : i64}  {
      ^bb0(%arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.ScalarSrc, !plasma.VectorSink)
      %u634r, %u634s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_253_D_0_0", kUnitId = 634 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u635r, %u635s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1u_1_0_254_D_0_0", kUnitId = 635 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.ScalarSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u636r, %u636s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_258_D_0_0", kUnitId = 636 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u637r, %u637s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_0_0_0_min_0_max_65536", kUnitId = 637 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u638r, %u638s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_1_0_0_min_65536_max_131072", kUnitId = 638 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u639r, %u639s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_2_0_0_min_131072_max_196608", kUnitId = 639 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u640r, %u640s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_3_0_0_min_196608_max_262144", kUnitId = 640 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u641r, %u641s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_4_0_0_min_262144_max_327680", kUnitId = 641 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u642r, %u642s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_5_0_0_min_327680_max_393216", kUnitId = 642 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u643r, %u643s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_6_0_0_min_393216_max_458752", kUnitId = 643 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u644r, %u644s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_7_0_0_min_458752_max_524288", kUnitId = 644 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u645r, %u645s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_8_0_0_min_524288_max_589824", kUnitId = 645 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u646r, %u646s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_9_0_0_min_589824_max_655360", kUnitId = 646 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u647r, %u647s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_10_0_0_min_655360_max_720896", kUnitId = 647 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u648r, %u648s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_11_0_0_min_720896_max_786432", kUnitId = 648 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u649r, %u649s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_12_0_0_min_786432_max_851968", kUnitId = 649 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u650r, %u650s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_13_0_0_min_851968_max_917504", kUnitId = 650 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u651r, %u651s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_14_0_0_min_917504_max_983040", kUnitId = 651 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u652r, %u652s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_15_0_0_min_983040_max_1048576", kUnitId = 652 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u653r, %u653s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_16_0_0_min_1048576_max_1114112", kUnitId = 653 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u654r, %u654s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_17_0_0_min_1114112_max_1179648", kUnitId = 654 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u655r, %u655s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_18_0_0_min_1179648_max_1245184", kUnitId = 655 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u656r, %u656s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_19_0_0_min_1245184_max_1310720", kUnitId = 656 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u657r, %u657s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_20_0_0_min_1310720_max_1376256", kUnitId = 657 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u658r, %u658s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_21_0_0_min_1376256_max_1441792", kUnitId = 658 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u659r, %u659s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_22_0_0_min_1441792_max_1507328", kUnitId = 659 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u660r, %u660s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_23_0_0_min_1507328_max_1572864", kUnitId = 660 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u661r, %u661s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_24_0_0_min_1572864_max_1638400", kUnitId = 661 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u662r, %u662s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_25_0_0_min_1638400_max_1703936", kUnitId = 662 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u663r, %u663s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_26_0_0_min_1703936_max_1769472", kUnitId = 663 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u664r, %u664s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_27_0_0_min_1769472_max_1835008", kUnitId = 664 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u665r, %u665s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_28_0_0_min_1835008_max_1900544", kUnitId = 665 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u666r, %u666s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_29_0_0_min_1900544_max_1966080", kUnitId = 666 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u667r, %u667s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_30_0_0_min_1966080_max_2031616", kUnitId = 667 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u668r, %u668s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_D_31_0_0_min_2031616_max_2097152", kUnitId = 668 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u669r, %u669s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum.tbuf_ROB_kBackReadCtx_0_0", kUnitId = 669 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u670r, %u670s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__dense_layer__linear_bwd_weight_accum_1.tbuf_D_0_0_0", kUnitId = 670 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u671r, %u671s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__conv_layer__conv2d_bwd_accum.tbuf_D_0_0_0", kUnitId = 671 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u672r, %u672s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__conv_layer__conv2d_bwd_accum_1.tbuf_D_0_0_0", kUnitId = 672 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u673r, %u673s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.permute_1_0_425.tbuf_D_0_0_0_0_0", kUnitId = 673 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u674r, %u674s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvcnn__conv_layer__conv2d_weight_permute_bwd.tbuf_D_0_0_0_0_0", kUnitId = 674 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u675r, %u675s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_29", kUnitId = 675 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u676r, %u676s:5 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_30", kUnitId = 676 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u677r, %u677s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_17", kUnitId = 677 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u678r, %u678s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_32_ptconvcnn__dense_layer__linear_bwd_weight_tensor", kUnitId = 678 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u679r, %u679s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_1", kOnChipLayout = !plasma.TL<1xbf16:RVRM:64>, kUnitId = 679 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u680r, %u680s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_2", kOnChipLayout = !plasma.TL<3xi32:RVRM>, kUnitId = 680 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u681r, %u681s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_3", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 681 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u682r, %u682s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_4", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 682 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u683r, %u683s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_5", kOnChipLayout = !plasma.TL<4080xbf16:RVRM:64>, kUnitId = 683 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u684r, %u684s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_6", kOnChipLayout = !plasma.TL<512x256xbf16:CVRM:64>, kUnitId = 684 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u685r, %u685s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_7", kOnChipLayout = !plasma.TL<256x1xbf16:CVCM:64>, kUnitId = 685 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u686r, %u686s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_8", kOnChipLayout = !plasma.TL<60x136xbf16:RVRM:64>, kUnitId = 686 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u687r, %u687s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_9", kOnChipLayout = !plasma.TL<7x64xui8:RVRM>, kUnitId = 687 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u688r, %u688s = plasma.unit.Vag(%arg9) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_1", kOnChipLayout = !plasma.TL<8192x64xui8:RVRM>, kUnitId = 688 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u689r, %u689s = plasma.unit.Vag(%arg10) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_2", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 689 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u690r, %u690s = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_3", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 690 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u691r, %u691s = plasma.unit.Vag(%arg12) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_4", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 691 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u428s#1, %u436s#4) [gbuf2u_1_0_226_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u429s#1, %u431s#3) [gbuf2u_1_0_229_head1_neck0_data_pmu0 >> ptconvcnn__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u430s#1, %u431s#4) [gbuf2u_1_0_232_head1_neck0_data_pmu0 >> ptconvcnn__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u431s#0, %u431s#2) [ptconvcnn__criterion__mseloss_bwd_sub_output >> ptconvcnn__criterion__mseloss_bwd_sub_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u431s#1, %u432s#3) [ptconvcnn__criterion__mseloss_bwd_sub_output >> scale_1_0_339_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u432s#0, %u432s#2) [scale_1_0_339_scaling_pcu >> scale_1_0_339_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u432s#1, %u434s#4) [scale_1_0_339_scaling_pcu >> scale_1_0_340_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u433s#1, %u434s#3) [scale_1_0_340_input_B_pmu >> scale_1_0_340_scaling_pcu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u434s#0, %u434s#2) [scale_1_0_340_scaling_pcu >> scale_1_0_340_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#1, %u435s#3) [scale_1_0_340_scaling_pcu >> gbuf2u_1_0_237_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u435s#0, %u436s#3) [gbuf2u_1_0_237_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u435s#1, %u429s#2) [gbuf2u_1_0_237_head1_neck0_data_pmu0 >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u435s#2, %u429s#3) [gbuf2u_1_0_237_head1_neck0_data_pmu0 >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u435s#1, %u430s#2) [gbuf2u_1_0_237_head1_neck0_data_pmu0 >> gbuf2u_1_0_232_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u435s#2, %u430s#3) [gbuf2u_1_0_237_head1_neck0_data_pmu0 >> gbuf2u_1_0_232_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u436s#0, %u436s#2) [ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u436s#1, %u437s#3) [ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_244_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u436s#1, %u461s#3) [ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_248_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u437s#0, %u443s#4) [gbuf2u_1_0_244_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u437s#1, %u428s#2) [gbuf2u_1_0_244_head1_neck0_data_pmu0 >> gbuf2u_1_0_226_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u437s#2, %u428s#3) [gbuf2u_1_0_244_head1_neck0_data_pmu0 >> gbuf2u_1_0_226_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u437s#1, %u435s#4) [gbuf2u_1_0_244_head1_neck0_data_pmu0 >> gbuf2u_1_0_237_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u437s#2, %u435s#5) [gbuf2u_1_0_244_head1_neck0_data_pmu0 >> gbuf2u_1_0_237_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u438s#0, %u442s#3) [gbuf1a_1_0_402_head1_neck0_data_pmu0 >> gbuf1a_1_0_402_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u439s#0, %u442s#3) [gbuf1a_1_0_402_head1_neck0_data_pmu1 >> gbuf1a_1_0_402_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u440s#0, %u442s#3) [gbuf1a_1_0_402_head1_neck0_data_pmu2 >> gbuf1a_1_0_402_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u441s#0, %u442s#3) [gbuf1a_1_0_402_head1_neck0_data_pmu3 >> gbuf1a_1_0_402_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u442s#0, %u438s#1) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#1, %u438s#2) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#0, %u439s#1) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#1, %u439s#2) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#0, %u440s#1) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#1, %u440s#2) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#0, %u441s#1) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#1, %u441s#2) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> gbuf1a_1_0_402_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#2, %u444s#1) [gbuf1a_1_0_402_head1_neck0_rob_pmu >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u443s#0, %u443s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u443s#1, %u560s#4) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> gbuf2u_1_0_250_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u444s#0, %u443s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u445s#0, %u445s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u446s#0, %u445s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u447s#0, %u447s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u448s#0, %u447s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u449s#0, %u449s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u450s#0, %u449s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u451s#0, %u451s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u452s#0, %u451s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u453s#0, %u453s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u454s#0, %u453s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u455s#0, %u455s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#0, %u455s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u457s#0, %u457s#2) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u458s#0, %u457s#3) [ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PMU >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u459s#0, %u460s#4) [gbuf2u_1_0_247_head1_neck0_reformat_pmu0 >> gbuf2u_1_0_247_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u460s#0, %u459s#1) [gbuf2u_1_0_247_head1_neck0_data_pmu0 >> gbuf2u_1_0_247_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u460s#1, %u459s#2) [gbuf2u_1_0_247_head1_neck0_data_pmu0 >> gbuf2u_1_0_247_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u460s#2, %u462s#4) [gbuf2u_1_0_247_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u460s#3, %u676s#2) [gbuf2u_1_0_247_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_30] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u460s#1, %u676s#3) [gbuf2u_1_0_247_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_30] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u461s#0, %u559s#1) [gbuf2u_1_0_248_head0_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u461s#1, %u463s#1) [gbuf2u_1_0_248_head0_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u461s#2, %u428s#4) [gbuf2u_1_0_248_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_226_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u461s#2, %u435s#6) [gbuf2u_1_0_248_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_237_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u462s#0, %u464s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u463s#0, %u462s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u464s#0, %u462s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u464s#1, %u462s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u464s#2, %u584s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> AccumPCU_0_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u465s#0, %u467s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u466s#0, %u465s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u467s#0, %u465s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u467s#1, %u465s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u467s#2, %u585s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> AccumPCU_1_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u468s#0, %u470s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u469s#0, %u468s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u470s#0, %u468s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u470s#1, %u468s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u470s#2, %u586s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> AccumPCU_2_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u471s#0, %u473s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u472s#0, %u471s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u473s#0, %u471s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u473s#1, %u471s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u473s#2, %u587s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> AccumPCU_3_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u474s#0, %u476s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u475s#0, %u474s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u476s#0, %u474s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u476s#1, %u474s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u476s#2, %u588s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> AccumPCU_4_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u477s#0, %u479s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u478s#0, %u477s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u479s#0, %u477s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u479s#1, %u477s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u479s#2, %u589s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> AccumPCU_5_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u480s#0, %u482s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u481s#0, %u480s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u482s#0, %u480s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u482s#1, %u480s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u482s#2, %u590s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> AccumPCU_6_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u483s#0, %u485s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#0, %u483s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u485s#0, %u483s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u485s#1, %u483s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u485s#2, %u591s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> AccumPCU_7_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u486s#0, %u488s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u487s#0, %u486s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u488s#0, %u486s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_8 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u488s#1, %u486s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_8 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u488s#2, %u592s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_8 >> AccumPCU_8_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u489s#0, %u491s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u490s#0, %u489s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u491s#0, %u489s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_9 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u491s#1, %u489s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_9 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u491s#2, %u593s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_9 >> AccumPCU_9_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u492s#0, %u494s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u493s#0, %u492s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u494s#0, %u492s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_10 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u494s#1, %u492s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_10 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u494s#2, %u594s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_10 >> AccumPCU_10_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u495s#0, %u497s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u496s#0, %u495s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u497s#0, %u495s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_11 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u497s#1, %u495s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_11 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u497s#2, %u595s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_11 >> AccumPCU_11_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u498s#0, %u500s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u499s#0, %u498s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u500s#0, %u498s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_12 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u500s#1, %u498s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_12 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u500s#2, %u596s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_12 >> AccumPCU_12_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u501s#0, %u503s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u502s#0, %u501s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u503s#0, %u501s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_13 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u503s#1, %u501s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_13 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u503s#2, %u597s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_13 >> AccumPCU_13_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u504s#0, %u506s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u505s#0, %u504s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u506s#0, %u504s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_14 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#1, %u504s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_14 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#2, %u598s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_14 >> AccumPCU_14_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u507s#0, %u509s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u508s#0, %u507s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u509s#0, %u507s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_15 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u509s#1, %u507s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_15 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u509s#2, %u599s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_15 >> AccumPCU_15_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u510s#0, %u512s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u511s#0, %u510s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u512s#0, %u510s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_16 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u512s#1, %u510s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_16 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u512s#2, %u600s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_16 >> AccumPCU_16_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u513s#0, %u515s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_17] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u514s#0, %u513s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u515s#0, %u513s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_17 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u515s#1, %u513s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_17 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u515s#2, %u601s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_17 >> AccumPCU_17_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u516s#0, %u518s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_18] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u517s#0, %u516s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u518s#0, %u516s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_18 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u518s#1, %u516s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_18 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u518s#2, %u602s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_18 >> AccumPCU_18_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u519s#0, %u521s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_19] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u520s#0, %u519s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u521s#0, %u519s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_19 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u521s#1, %u519s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_19 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u521s#2, %u603s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_19 >> AccumPCU_19_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u522s#0, %u524s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_20] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u523s#0, %u522s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u524s#0, %u522s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_20 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u524s#1, %u522s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_20 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u524s#2, %u604s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_20 >> AccumPCU_20_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u525s#0, %u527s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_21] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u526s#0, %u525s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u527s#0, %u525s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_21 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u527s#1, %u525s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_21 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u527s#2, %u605s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_21 >> AccumPCU_21_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u528s#0, %u530s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_22] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u529s#0, %u528s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u530s#0, %u528s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_22 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u530s#1, %u528s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_22 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u530s#2, %u606s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_22 >> AccumPCU_22_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u531s#0, %u533s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_23] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u532s#0, %u531s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u533s#0, %u531s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_23 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u533s#1, %u531s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_23 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u533s#2, %u607s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_23 >> AccumPCU_23_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u534s#0, %u536s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_24] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u535s#0, %u534s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u536s#0, %u534s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_24 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u536s#1, %u534s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_24 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u536s#2, %u608s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_24 >> AccumPCU_24_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u537s#0, %u539s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_25] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u538s#0, %u537s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u539s#0, %u537s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_25 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u539s#1, %u537s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_25 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u539s#2, %u609s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_25 >> AccumPCU_25_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u540s#0, %u542s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u541s#0, %u540s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u542s#0, %u540s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_26 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u542s#1, %u540s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_26 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u542s#2, %u610s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_26 >> AccumPCU_26_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u543s#0, %u545s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u544s#0, %u543s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u545s#0, %u543s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_27 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u545s#1, %u543s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_27 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u545s#2, %u611s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_27 >> AccumPCU_27_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u546s#0, %u548s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_28] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#0, %u546s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#0, %u546s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_28 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u548s#1, %u546s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_28 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u548s#2, %u612s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_28 >> AccumPCU_28_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#0, %u551s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_29] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u550s#0, %u549s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u551s#0, %u549s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_29 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u551s#1, %u549s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_29 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u551s#2, %u613s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_29 >> AccumPCU_29_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u552s#0, %u554s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_30] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u553s#0, %u552s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u554s#0, %u552s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_30 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u554s#1, %u552s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_30 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u554s#2, %u614s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_30 >> AccumPCU_30_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#0, %u557s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_31] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u556s#0, %u555s#3) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PMU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u557s#0, %u555s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_31 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u557s#1, %u555s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_31 >> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u557s#2, %u615s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_a_output_pmu_31 >> AccumPCU_31_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u558s#0, %u616s#1) [ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u558s#1, %u461s#4) [ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2u_1_0_248_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u559s#0, %u558s#2) [ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u560s#0, %u561s#3) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> gbuf2a_1_0_443_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u560s#1, %u437s#4) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> gbuf2u_1_0_244_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#2, %u437s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> gbuf2u_1_0_244_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u443s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u445s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u447s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u449s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u451s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u453s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u455s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#3, %u457s#5) [gbuf2u_1_0_250_head1_neck0_data_pmu0 >> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u561s#0, %u562s#1) [gbuf2a_1_0_443_head0_head1_neck0_data_pmu0 >> streaming_transpose_1_0_365_transpose_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u561s#1, %u582s#1) [gbuf2a_1_0_443_head0_head1_neck0_data_pmu0 >> bias_transpose_grad_1_0_378_bias_grad_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u561s#2, %u560s#5) [gbuf2a_1_0_443_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_250_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u562s#0, %u564s#2) [streaming_transpose_1_0_365_transpose_pmu >> split_kernel_gbuf_1_0_370_head1_neck0_data_r0_r1_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#0, %u567s#1) [sbuf2u_1_0_369_head1_neck0_data_pmu0 >> biggemm_1_0_371_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#0, %u570s#1) [sbuf2u_1_0_369_head1_neck0_data_pmu0 >> biggemm_1_0_372_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#0, %u573s#1) [sbuf2u_1_0_369_head1_neck0_data_pmu0 >> biggemm_1_0_373_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#0, %u576s#1) [sbuf2u_1_0_369_head1_neck0_data_pmu0 >> biggemm_1_0_374_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#1, %u630s#5) [sbuf2u_1_0_369_head1_neck0_data_pmu0 >> gbuf2u_1_0_366_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u564s#0, %u566s#2) [split_kernel_gbuf_1_0_370_head1_neck0_data_r0_r1_pmu0 >> biggemm_1_0_371_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u564s#1, %u569s#2) [split_kernel_gbuf_1_0_370_head1_neck0_data_r0_r1_pmu0 >> biggemm_1_0_372_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u565s#0, %u572s#2) [split_kernel_gbuf_1_0_370_head1_neck0_data_r2_r3_pmu1 >> biggemm_1_0_373_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u565s#1, %u575s#2) [split_kernel_gbuf_1_0_370_head1_neck0_data_r2_r3_pmu1 >> biggemm_1_0_374_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u566s#0, %u580s#3) [biggemm_1_0_371_gemm_0_0_0_PCU >> gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u567s#0, %u566s#1) [biggemm_1_0_371_gemm_0_0_0_PMU >> biggemm_1_0_371_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u567s#0, %u568s#1) [biggemm_1_0_371_gemm_0_0_0_PMU >> biggemm_1_0_371_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u569s#0, %u580s#3) [biggemm_1_0_372_gemm_0_0_0_PCU >> gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u570s#0, %u569s#1) [biggemm_1_0_372_gemm_0_0_0_PMU >> biggemm_1_0_372_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u570s#0, %u571s#1) [biggemm_1_0_372_gemm_0_0_0_PMU >> biggemm_1_0_372_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u572s#0, %u580s#3) [biggemm_1_0_373_gemm_0_0_0_PCU >> gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u573s#0, %u572s#1) [biggemm_1_0_373_gemm_0_0_0_PMU >> biggemm_1_0_373_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u573s#0, %u574s#1) [biggemm_1_0_373_gemm_0_0_0_PMU >> biggemm_1_0_373_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u575s#0, %u580s#3) [biggemm_1_0_374_gemm_0_0_0_PCU >> gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u576s#0, %u575s#1) [biggemm_1_0_374_gemm_0_0_0_PMU >> biggemm_1_0_374_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u576s#0, %u577s#1) [biggemm_1_0_374_gemm_0_0_0_PMU >> biggemm_1_0_374_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u578s#0, %u581s#3) [gbuf2u_1_0_376_head1_neck0_data_pmu0 >> gbuf2u_1_0_376_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u579s#0, %u581s#3) [gbuf2u_1_0_376_head1_neck0_data_pmu1 >> gbuf2u_1_0_376_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u580s#0, %u578s#1) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> gbuf2u_1_0_376_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u580s#1, %u566s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_371_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#1, %u568s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_371_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u566s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_371_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u568s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_371_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#1, %u569s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_372_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#1, %u571s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_372_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u569s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_372_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u571s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_372_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#1, %u572s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_373_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#1, %u574s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_373_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u572s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_373_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u574s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_373_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#1, %u575s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_374_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#1, %u577s#3) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_374_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u575s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_374_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u580s#2, %u577s#4) [gbuf2u_1_0_376_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_374_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u581s#0, %u578s#2) [gbuf2u_1_0_376_head1_neck0_rob_pmu >> gbuf2u_1_0_376_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u581s#1, %u578s#3) [gbuf2u_1_0_376_head1_neck0_rob_pmu >> gbuf2u_1_0_376_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u581s#0, %u579s#2) [gbuf2u_1_0_376_head1_neck0_rob_pmu >> gbuf2u_1_0_376_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u581s#1, %u579s#3) [gbuf2u_1_0_376_head1_neck0_rob_pmu >> gbuf2u_1_0_376_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u581s#2, %u617s#1) [gbuf2u_1_0_376_head1_neck0_rob_pmu >> AccumPCU_0_0_output_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u582s#0, %u583s#3) [bias_transpose_grad_1_0_378_bias_grad_pcu >> gbuf2a_1_0_406_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u583s#0, %u618s#1) [gbuf2a_1_0_406_head1_neck0_data_pmu0 >> AccumPCU_0_0_output_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u583s#1, %u561s#4) [gbuf2a_1_0_406_head1_neck0_data_pmu0 >> gbuf2a_1_0_443_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u583s#2, %u561s#5) [gbuf2a_1_0_406_head1_neck0_data_pmu0 >> gbuf2a_1_0_443_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u584s#0, %u637s#3) [AccumPCU_0_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u585s#0, %u638s#3) [AccumPCU_1_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#0, %u639s#3) [AccumPCU_2_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u587s#0, %u640s#3) [AccumPCU_3_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u588s#0, %u641s#3) [AccumPCU_4_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u589s#0, %u642s#3) [AccumPCU_5_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u590s#0, %u643s#3) [AccumPCU_6_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u591s#0, %u644s#3) [AccumPCU_7_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u592s#0, %u645s#3) [AccumPCU_8_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_8_0_0_min_524288_max_589824] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u593s#0, %u646s#3) [AccumPCU_9_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_9_0_0_min_589824_max_655360] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u594s#0, %u647s#3) [AccumPCU_10_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_10_0_0_min_655360_max_720896] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u595s#0, %u648s#3) [AccumPCU_11_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_11_0_0_min_720896_max_786432] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u596s#0, %u649s#3) [AccumPCU_12_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_12_0_0_min_786432_max_851968] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u597s#0, %u650s#3) [AccumPCU_13_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_13_0_0_min_851968_max_917504] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u598s#0, %u651s#3) [AccumPCU_14_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_14_0_0_min_917504_max_983040] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u599s#0, %u652s#3) [AccumPCU_15_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_15_0_0_min_983040_max_1048576] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u600s#0, %u653s#3) [AccumPCU_16_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_16_0_0_min_1048576_max_1114112] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u601s#0, %u654s#3) [AccumPCU_17_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_17_0_0_min_1114112_max_1179648] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u602s#0, %u655s#3) [AccumPCU_18_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_18_0_0_min_1179648_max_1245184] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u603s#0, %u656s#3) [AccumPCU_19_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_19_0_0_min_1245184_max_1310720] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u604s#0, %u657s#3) [AccumPCU_20_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_20_0_0_min_1310720_max_1376256] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u605s#0, %u658s#3) [AccumPCU_21_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_21_0_0_min_1376256_max_1441792] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u606s#0, %u659s#3) [AccumPCU_22_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_22_0_0_min_1441792_max_1507328] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u607s#0, %u660s#3) [AccumPCU_23_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_23_0_0_min_1507328_max_1572864] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u608s#0, %u661s#3) [AccumPCU_24_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_24_0_0_min_1572864_max_1638400] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u609s#0, %u662s#3) [AccumPCU_25_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_25_0_0_min_1638400_max_1703936] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u610s#0, %u663s#3) [AccumPCU_26_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_26_0_0_min_1703936_max_1769472] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u611s#0, %u664s#3) [AccumPCU_27_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_27_0_0_min_1769472_max_1835008] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u612s#0, %u665s#3) [AccumPCU_28_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_28_0_0_min_1835008_max_1900544] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u613s#0, %u666s#3) [AccumPCU_29_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_29_0_0_min_1900544_max_1966080] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u614s#0, %u667s#3) [AccumPCU_30_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_30_0_0_min_1966080_max_2031616] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u615s#0, %u668s#3) [AccumPCU_31_0_output >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_31_0_0_min_2031616_max_2097152] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u616s#0, %u670s#2) [AccumPCU_0_0_output_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u617s#0, %u671s#2) [AccumPCU_0_0_output_1 >> LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_bwd_accum_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u618s#0, %u672s#2) [AccumPCU_0_0_output_2 >> LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_bwd_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u619s#0, %u620s#1) [sbuf1a_1_0_408_head1_neck0_data_pmu0 >> vector_transpose_1_0_426_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u619s#1, %u631s#3) [sbuf1a_1_0_408_head1_neck0_data_pmu0 >> gbuf2u_1_0_157_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u620s#0, %u621s#1) [vector_transpose_1_0_426_buffer_head1_neck0_data_pmu0 >> realign_1_0_427_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u621s#0, %u622s#1) [realign_1_0_427_gbuffer_head1_neck0_data_pmu0 >> realign_1_0_428_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u622s#0, %u673s#1) [realign_1_0_428_gbuffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__permute_1_0_425_tbuf_D_0_0_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u623s#0, %u674s#1) [transpose_1_0_429_buffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_weight_permute_bwd_tbuf_D_0_0_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u624s#0, %u629s#3) [gbuf1a_1_0_409_head1_neck0_data_pmu0 >> gbuf1a_1_0_409_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u625s#0, %u629s#3) [gbuf1a_1_0_409_head1_neck0_data_pmu1 >> gbuf1a_1_0_409_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u626s#0, %u629s#3) [gbuf1a_1_0_409_head1_neck0_data_pmu2 >> gbuf1a_1_0_409_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u627s#0, %u629s#3) [gbuf1a_1_0_409_head1_neck0_data_pmu3 >> gbuf1a_1_0_409_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u628s#0, %u629s#3) [gbuf1a_1_0_409_head1_neck0_data_pmu4 >> gbuf1a_1_0_409_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u629s#1, %u624s#1) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u624s#2) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#1, %u625s#1) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u625s#2) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#1, %u626s#1) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u626s#2) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#1, %u627s#1) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u627s#2) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#1, %u628s#1) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u628s#2) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> gbuf1a_1_0_409_head1_neck0_data_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#0, %u691s) [gbuf1a_1_0_409_head1_neck0_rob_pmu >> LogicalAGCU_for_DRAM_output_s1_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u630s#0, %u563s#2) [gbuf2u_1_0_366_head1_neck0_data_pmu0 >> sbuf2u_1_0_369_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u630s#1, %u636s#4) [gbuf2u_1_0_366_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_258_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u630s#2, %u636s#5) [gbuf2u_1_0_366_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_258_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u631s#0, %u619s#2) [gbuf2u_1_0_157_head1_neck0_data_pmu0 >> sbuf1a_1_0_408_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u632s#0, %u630s#4) [lbuf1a_1_0_405_head1_neck0_data_pmu0 >> gbuf2u_1_0_366_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u633s#0, %u631s#2) [lbuf1a_1_0_407_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_157_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u633s#1, %u619s#3) [lbuf1a_1_0_407_head0_head1_neck0_data_pmu0 >> sbuf1a_1_0_408_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u634s#1, %u636s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_253_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_258_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u635s#1, %u634s#2) [LogregTorchSamba_partition_1_0__tbuf1u_1_0_254_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_253_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u636s#0, %u634s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_258_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_253_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u636s#1, %u634s#4) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_258_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_253_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u636s#2, %u630s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_258_D_0_0 >> gbuf2u_1_0_366_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u637s#0, %u669s#4) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u669s#0, %u637s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u638s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u639s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u640s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u641s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u642s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u643s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u644s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u645s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_8_0_0_min_524288_max_589824] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u646s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_9_0_0_min_589824_max_655360] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u647s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_10_0_0_min_655360_max_720896] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u648s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_11_0_0_min_720896_max_786432] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u649s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_12_0_0_min_786432_max_851968] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u650s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_13_0_0_min_851968_max_917504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u651s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_14_0_0_min_917504_max_983040] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u652s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_15_0_0_min_983040_max_1048576] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u653s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_16_0_0_min_1048576_max_1114112] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u654s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_17_0_0_min_1114112_max_1179648] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u655s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_18_0_0_min_1179648_max_1245184] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u656s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_19_0_0_min_1245184_max_1310720] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u657s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_20_0_0_min_1310720_max_1376256] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u658s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_21_0_0_min_1376256_max_1441792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u659s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_22_0_0_min_1441792_max_1507328] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u660s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_23_0_0_min_1507328_max_1572864] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u661s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_24_0_0_min_1572864_max_1638400] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u662s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_25_0_0_min_1638400_max_1703936] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u663s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_26_0_0_min_1703936_max_1769472] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u664s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_27_0_0_min_1769472_max_1835008] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u665s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_28_0_0_min_1835008_max_1900544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u666s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_29_0_0_min_1900544_max_1966080] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u667s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_30_0_0_min_1966080_max_2031616] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#0, %u668s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_31_0_0_min_2031616_max_2097152] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u637s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u638s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u639s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u640s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u641s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u642s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u643s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u644s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u645s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_8_0_0_min_524288_max_589824] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u646s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_9_0_0_min_589824_max_655360] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u647s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_10_0_0_min_655360_max_720896] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u648s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_11_0_0_min_720896_max_786432] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u649s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_12_0_0_min_786432_max_851968] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u650s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_13_0_0_min_851968_max_917504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u651s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_14_0_0_min_917504_max_983040] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u652s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_15_0_0_min_983040_max_1048576] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u653s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_16_0_0_min_1048576_max_1114112] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u654s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_17_0_0_min_1114112_max_1179648] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u655s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_18_0_0_min_1179648_max_1245184] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u656s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_19_0_0_min_1245184_max_1310720] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u657s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_20_0_0_min_1310720_max_1376256] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u658s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_21_0_0_min_1376256_max_1441792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u659s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_22_0_0_min_1441792_max_1507328] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u660s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_23_0_0_min_1507328_max_1572864] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u661s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_24_0_0_min_1572864_max_1638400] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u662s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_25_0_0_min_1638400_max_1703936] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u663s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_26_0_0_min_1703936_max_1769472] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u664s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_27_0_0_min_1769472_max_1835008] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u665s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_28_0_0_min_1835008_max_1900544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u666s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_29_0_0_min_1900544_max_1966080] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u667s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_30_0_0_min_1966080_max_2031616] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#1, %u668s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_D_31_0_0_min_2031616_max_2097152] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#2, %u460s#5) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> gbuf2u_1_0_247_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u669s#3, %u678s#2) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> s1_backing_pmu_group_32_ptconvcnn__dense_layer__linear_bwd_weight_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u670s#1, %u460s#6) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> gbuf2u_1_0_247_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u670s#0, %u689s) [LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u671s#0, %u631s#1) [LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_bwd_accum_tbuf_D_0_0_0 >> gbuf2u_1_0_157_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u671s#1, %u581s#4) [LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_bwd_accum_tbuf_D_0_0_0 >> gbuf2u_1_0_376_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u672s#1, %u583s#4) [LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_bwd_accum_1_tbuf_D_0_0_0 >> gbuf2a_1_0_406_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u672s#0, %u690s) [LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_bwd_accum_1_tbuf_D_0_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u673s#0, %u623s#1) [LogregTorchSamba_partition_1_0__permute_1_0_425_tbuf_D_0_0_0_0_0 >> transpose_1_0_429_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u674s#0, %u624s#3) [LogregTorchSamba_partition_1_0__ptconvcnn__conv_layer__conv2d_weight_permute_bwd_tbuf_D_0_0_0_0_0 >> gbuf1a_1_0_409_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u675s#1, %u438s#3) [s1_fronting_pmu_load_group_29 >> gbuf1a_1_0_402_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u676s#1, %u459s#3) [s1_fronting_pmu_load_group_30 >> gbuf2u_1_0_247_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u677s#1, %u633s#2) [s1_fronting_pmu_load_group_17 >> lbuf1a_1_0_407_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u677s#1, %u632s#1) [s1_fronting_pmu_load_group_17 >> lbuf1a_1_0_405_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u678s#1, %u669s#5) [s1_backing_pmu_group_32_ptconvcnn__dense_layer__linear_bwd_weight_tensor >> LogregTorchSamba_partition_1_0__ptconvcnn__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u678s#0, %u688s) [s1_backing_pmu_group_32_ptconvcnn__dense_layer__linear_bwd_weight_tensor >> LogicalAGCU_for_DRAM_output_s1_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u679s#0, %u433s#0) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> scale_1_0_340_input_B_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u679s#1, %u433s#2) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> scale_1_0_340_input_B_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u680s#0, %u635s#0) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1u_1_0_254_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u680s#1, %u635s#2) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1u_1_0_254_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u681s#0, %u428s#0) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> gbuf2u_1_0_226_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u681s#1, %u428s#5) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> gbuf2u_1_0_226_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u682s#0, %u429s#0) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u682s#1, %u429s#4) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u683s#0, %u430s#0) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> gbuf2u_1_0_232_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u683s#1, %u430s#4) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> gbuf2u_1_0_232_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u684s#0, %u675s#0) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> s1_fronting_pmu_load_group_29] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u684s#1, %u675s#2) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> s1_fronting_pmu_load_group_29] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u685s#0, %u676s#0) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_30] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u685s#1, %u676s#4) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_30] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u686s#0, %u634s#0) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_253_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u686s#1, %u634s#5) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_253_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u687s#0, %u677s#0) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> s1_fronting_pmu_load_group_17] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u687s#1, %u677s#2) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> s1_fronting_pmu_load_group_17] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf2u_1_0_226()  {
          "plasma.BindUnit"(%u428r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_229()  {
          "plasma.BindUnit"(%u429r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_232()  {
          "plasma.BindUnit"(%u430r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvcnn__criterion__mseloss_bwd_sub()  {
          "plasma.BindUnit"(%u431r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_339()  {
          "plasma.BindUnit"(%u432r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_340()  {
          "plasma.BindUnit"(%u433r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u434r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_237()  {
          "plasma.BindUnit"(%u435r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvcnn__dense_layer__linear_t_output0_bwd_addn0()  {
          plasma.SuperNode @ptconvcnn__dense_layer__linear_t_output0_bwd_addn0ADD0()  {
            "plasma.BindUnit"(%u436r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_1_0_244()  {
          "plasma.BindUnit"(%u437r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_402()  {
          "plasma.BindUnit"(%u438r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u439r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u440r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u441r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u442r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_loss_grad_b()  {
          "plasma.BindUnit"(%u443r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u444r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u445r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u446r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u447r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u448r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u449r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u450r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u451r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u452r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u453r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u454r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u455r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u456r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u457r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u458r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_loss_grad_b_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf2u_1_0_247()  {
          "plasma.BindUnit"(%u459r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u460r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_248()  {
          "plasma.BindUnit"(%u461r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a()  {
          "plasma.BindUnit"(%u462r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u463r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u464r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u465r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u466r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u467r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u468r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u469r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u470r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u471r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u472r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u473r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u474r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u475r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u476r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u477r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u478r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u479r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u480r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u481r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u482r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u483r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u484r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u485r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u486r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u487r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u488r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u489r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u490r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u491r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u492r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u493r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u494r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u495r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u496r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u497r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u498r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u499r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u500r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u501r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u502r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u503r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u504r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u505r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u506r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u507r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u508r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u509r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u510r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u511r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u512r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u513r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u514r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u515r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u516r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u517r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u518r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u519r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u520r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u521r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u522r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u523r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u524r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u525r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u526r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u527r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u528r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u529r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u530r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u531r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u532r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u533r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u534r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u535r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u536r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u537r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u538r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u539r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u540r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u541r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u542r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u543r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u544r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u545r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u546r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u547r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u548r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u549r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u550r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u551r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u552r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u553r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u554r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u555r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u556r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u557r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_31()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_30()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_29()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_28()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_27()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_26()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_25()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_24()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_23()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_22()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_21()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_20()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_19()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_18()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_17()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_16()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_15()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_14()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_13()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_12()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_11()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_10()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_9()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_8()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_7()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_6()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_5()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_4()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_3()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_2()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_1()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u558r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u559r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2u_1_0_250()  {
          "plasma.BindUnit"(%u560r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_443()  {
          "plasma.BindUnit"(%u561r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @streaming_transpose_1_0_365()  {
          "plasma.BindUnit"(%u562r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sbuf2u_1_0_369()  {
          "plasma.BindUnit"(%u563r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @split_kernel_gbuf_1_0_370()  {
          "plasma.BindUnit"(%u564r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u565r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @biggemm_1_0_371()  {
          "plasma.BindUnit"(%u566r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u567r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u568r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_371_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_1_0_372()  {
          "plasma.BindUnit"(%u569r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u570r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u571r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_372_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_1_0_373()  {
          "plasma.BindUnit"(%u572r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u573r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u574r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_373_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_1_0_374()  {
          "plasma.BindUnit"(%u575r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u576r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u577r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_374_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf2u_1_0_376()  {
          "plasma.BindUnit"(%u578r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u579r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u580r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u581r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @bias_transpose_grad_1_0_378()  {
          "plasma.BindUnit"(%u582r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_406()  {
          "plasma.BindUnit"(%u583r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_accum()  {
          plasma.SuperNode @AccumPCU_31_0()  {
            "plasma.BindUnit"(%u615r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_30_0()  {
            "plasma.BindUnit"(%u614r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_29_0()  {
            "plasma.BindUnit"(%u613r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_28_0()  {
            "plasma.BindUnit"(%u612r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_27_0()  {
            "plasma.BindUnit"(%u611r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_26_0()  {
            "plasma.BindUnit"(%u610r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_25_0()  {
            "plasma.BindUnit"(%u609r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_24_0()  {
            "plasma.BindUnit"(%u608r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_23_0()  {
            "plasma.BindUnit"(%u607r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_22_0()  {
            "plasma.BindUnit"(%u606r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_21_0()  {
            "plasma.BindUnit"(%u605r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_20_0()  {
            "plasma.BindUnit"(%u604r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_19_0()  {
            "plasma.BindUnit"(%u603r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_18_0()  {
            "plasma.BindUnit"(%u602r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_17_0()  {
            "plasma.BindUnit"(%u601r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_16_0()  {
            "plasma.BindUnit"(%u600r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_15_0()  {
            "plasma.BindUnit"(%u599r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_14_0()  {
            "plasma.BindUnit"(%u598r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_13_0()  {
            "plasma.BindUnit"(%u597r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_12_0()  {
            "plasma.BindUnit"(%u596r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_11_0()  {
            "plasma.BindUnit"(%u595r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_10_0()  {
            "plasma.BindUnit"(%u594r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_9_0()  {
            "plasma.BindUnit"(%u593r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_8_0()  {
            "plasma.BindUnit"(%u592r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_7_0()  {
            "plasma.BindUnit"(%u591r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_6_0()  {
            "plasma.BindUnit"(%u590r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_5_0()  {
            "plasma.BindUnit"(%u589r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_4_0()  {
            "plasma.BindUnit"(%u588r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_3_0()  {
            "plasma.BindUnit"(%u587r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_2_0()  {
            "plasma.BindUnit"(%u586r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_1_0()  {
            "plasma.BindUnit"(%u585r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u584r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u637r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u638r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u639r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u640r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u641r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u642r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u643r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u644r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u645r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u646r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u647r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u648r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u649r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u650r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u651r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u652r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u653r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u654r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u655r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u656r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u657r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u658r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u659r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u660r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u661r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u662r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u663r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u664r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u665r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u666r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u667r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u668r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u669r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvcnn__dense_layer__linear_bwd_weight_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u616r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u670r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvcnn__conv_layer__conv2d_bwd_accum()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u617r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u671r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvcnn__conv_layer__conv2d_bwd_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u618r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u672r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @sbuf1a_1_0_408()  {
          "plasma.BindUnit"(%u619r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @vector_transpose_1_0_426()  {
          plasma.SuperNode @vector_transpose_1_0_426.buffer()  {
            "plasma.BindUnit"(%u620r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @realign_1_0_427()  {
          plasma.SuperNode @realign_1_0_427.gbuffer()  {
            "plasma.BindUnit"(%u621r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @realign_1_0_428()  {
          plasma.SuperNode @realign_1_0_428.gbuffer()  {
            "plasma.BindUnit"(%u622r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_429()  {
          plasma.SuperNode @transpose_1_0_429.buffer()  {
            "plasma.BindUnit"(%u623r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_409()  {
          "plasma.BindUnit"(%u624r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u625r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u626r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u627r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u628r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u629r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_366()  {
          "plasma.BindUnit"(%u630r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_157()  {
          "plasma.BindUnit"(%u631r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @lbuf1a_1_0_405()  {
          "plasma.BindUnit"(%u632r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @lbuf1a_1_0_407()  {
          "plasma.BindUnit"(%u633r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_253()  {
          "plasma.BindUnit"(%u634r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1u_1_0_254()  {
          "plasma.BindUnit"(%u635r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_258()  {
          "plasma.BindUnit"(%u636r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @permute_1_0_425()  {
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u673r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvcnn__conv_layer__conv2d_weight_permute_bwd()  {
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u674r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_29()  {
          "plasma.BindUnit"(%u675r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_30()  {
          "plasma.BindUnit"(%u676r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_17()  {
          "plasma.BindUnit"(%u677r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_32_ptconvcnn__dense_layer__linear_bwd_weight_tensor()  {
          "plasma.BindUnit"(%u678r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_1:ptconvcnn__criterion__mseloss__outputs__0__grad"()  {
          "plasma.BindUnit"(%u679r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_2:inp_window_slice_1"()  {
          "plasma.BindUnit"(%u680r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_3:ptconvcnn__view__outputs__0__grad"()  {
          "plasma.BindUnit"(%u681r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_4:out_window"()  {
          "plasma.BindUnit"(%u682r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_5:ptconvcnn__reshape0_used_by_ptconvcnn__criterion__mseloss_bwd_sub"()  {
          "plasma.BindUnit"(%u683r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_6:ptconvcnn__dense_layer__weight"()  {
          "plasma.BindUnit"(%u684r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_7:ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight"()  {
          "plasma.BindUnit"(%u685r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_8:inp_window"()  {
          "plasma.BindUnit"(%u686r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_9:group_17"()  {
          "plasma.BindUnit"(%u687r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_1:ptconvcnn__dense_layer__weight__grad"()  {
          "plasma.BindUnit"(%u688r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_2:ptconvcnn__dense_layer__bias__grad"()  {
          "plasma.BindUnit"(%u689r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_3:ptconvcnn__conv_layer__bias__grad"()  {
          "plasma.BindUnit"(%u690r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_4:ptconvcnn__conv_layer__weight__grad"()  {
          "plasma.BindUnit"(%u691r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s2() attributes {kControlBlockId = 2 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1114112xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1114112xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<1114112xbf16:RVRM>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, %arg9: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, %arg10: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, %arg11: !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>, %arg12: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, %arg13: !plasma.TLMemRef<!plasma.TL<1114112xbf16:RVRM>,0,W>):  // no predecessors
      %u692r, %u692s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 692 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u693r, %u693s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 693 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u694r, %u694s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 694 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u695r, %u695s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 695 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u696r, %u696s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 696 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u697r, %u697s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU", kUnitId = 697 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u698r, %u698s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU", kUnitId = 698 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u699r, %u699s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU", kUnitId = 699 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u700r, %u700s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU", kUnitId = 700 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u701r, %u701s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw1", kUnitId = 701 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u702r, %u702s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU", kUnitId = 702 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u703r, %u703s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU", kUnitId = 703 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u704r, %u704s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU", kUnitId = 704 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u705r, %u705s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU", kUnitId = 705 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u706r, %u706s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw2", kUnitId = 706 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u707r, %u707s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU", kUnitId = 707 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u708r, %u708s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU", kUnitId = 708 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u709r, %u709s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU", kUnitId = 709 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u710r, %u710s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU", kUnitId = 710 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u711r, %u711s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw3", kUnitId = 711 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u712r, %u712s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 712 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u713r, %u713s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 713 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u714r, %u714s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 714 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u715r, %u715s:5 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 715 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u716r, %u716s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 716 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u717r, %u717s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 717 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u718r, %u718s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 718 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u719r, %u719s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 719 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u720r, %u720s:5 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 720 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u721r, %u721s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_dw0", kUnitId = 721 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u722r, %u722s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 722 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u723r, %u723s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 723 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u724r, %u724s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 724 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u725r, %u725s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 725 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u726r, %u726s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw0", kUnitId = 726 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u727r, %u727s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU", kUnitId = 727 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u728r, %u728s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU", kUnitId = 728 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u729r, %u729s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU", kUnitId = 729 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u730r, %u730s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU", kUnitId = 730 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u731r, %u731s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw1", kUnitId = 731 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u732r, %u732s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU", kUnitId = 732 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u733r, %u733s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU", kUnitId = 733 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u734r, %u734s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU", kUnitId = 734 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u735r, %u735s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU", kUnitId = 735 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u736r, %u736s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw2", kUnitId = 736 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u737r, %u737s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU", kUnitId = 737 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u738r, %u738s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU", kUnitId = 738 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u739r, %u739s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU", kUnitId = 739 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u740r, %u740s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU", kUnitId = 740 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u741r, %u741s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw3", kUnitId = 741 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u742r, %u742s:8 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU", kUnitId = 742 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u743r, %u743s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU", kUnitId = 743 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u744r, %u744s:7 = plasma.unit.Pcu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU", kUnitId = 744 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u745r, %u745s:7 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU", kUnitId = 745 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u746r, %u746s:2 = plasma.unit.Pmu() attributes {kName = "ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw4", kUnitId = 746 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u747r, %u747s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_3", kUnitId = 747 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u748r, %u748s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_14", kUnitId = 748 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u749r, %u749s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_12", kUnitId = 749 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u750r, %u750s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_11", kUnitId = 750 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u751r, %u751s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_15", kUnitId = 751 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u752r, %u752s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_13", kUnitId = 752 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u753r, %u753s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_2", kUnitId = 753 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u754r, %u754s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_10", kUnitId = 754 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink, %arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u755r, %u755s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor", kUnitId = 755 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u756r, %u756s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1", kUnitId = 756 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u757r, %u757s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_11_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor", kUnitId = 757 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u758r, %u758s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1", kUnitId = 758 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u759r, %u759s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_2_ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_tensor", kUnitId = 759 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u760r, %u760s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor", kUnitId = 760 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u761r, %u761s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_1", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 761 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u762r, %u762s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_2", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 762 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u763r, %u763s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_3", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 763 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u764r, %u764s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_4", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 764 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u765r, %u765s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_5", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 765 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u766r, %u766s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_6", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 766 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u767r, %u767s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_7", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 767 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u768r, %u768s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_8", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 768 : i64}  {
      ^bb0(%arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1114112xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u769r, %u769s = plasma.unit.Vag(%arg8) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_1", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 769 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u770r, %u770s = plasma.unit.Vag(%arg9) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_2", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 770 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u771r, %u771s = plasma.unit.Vag(%arg10) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_3", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 771 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u772r, %u772s = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_4", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 772 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u773r, %u773s = plasma.unit.Vag(%arg12) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_5", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 773 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u774r, %u774s = plasma.unit.Vag(%arg13) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_6", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 774 : i64}  {
      ^bb0(%arg14: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1114112xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u692s#0, %u693s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u692s#1, %u692s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u692s#2, %u692s#7) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u693s#0, %u692s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u693s#1, %u694s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u693s#2, %u756s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u694s#0, %u695s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u694s#1, %u694s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u694s#2, %u694s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u695s#0, %u692s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u695s#1, %u694s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u695s#2, %u755s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u696s#0, %u692s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u697s#0, %u698s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u697s#1, %u697s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u697s#2, %u697s#7) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u698s#0, %u697s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u698s#1, %u699s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u699s#0, %u700s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u699s#1, %u699s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u699s#2, %u699s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u700s#0, %u697s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u700s#1, %u699s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u701s#0, %u697s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u702s#0, %u703s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u702s#1, %u702s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u702s#2, %u702s#7) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u703s#0, %u702s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u703s#1, %u704s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u704s#0, %u705s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u704s#1, %u704s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u704s#2, %u704s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u705s#0, %u702s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u705s#1, %u704s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u706s#0, %u702s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw2 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u707s#0, %u708s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u707s#1, %u707s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u707s#2, %u707s#7) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u708s#0, %u707s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u708s#1, %u709s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u709s#0, %u710s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u709s#1, %u709s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u709s#2, %u709s#6) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u710s#0, %u707s#5) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u710s#1, %u709s#3) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u711s#0, %u707s#4) [ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw3 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u712s#0, %u713s#3) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u712s#1, %u712s#6) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u712s#2, %u712s#7) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u713s#0, %u712s#3) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u713s#1, %u714s#4) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u713s#2, %u758s#3) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u714s#0, %u715s#3) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u714s#1, %u714s#5) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u714s#2, %u714s#6) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u715s#0, %u712s#5) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u715s#1, %u714s#3) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u715s#2, %u757s#1) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_11_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u716s#0, %u712s#4) [ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u717s#0, %u718s#3) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u717s#1, %u717s#6) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u717s#2, %u717s#7) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u718s#0, %u717s#3) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u718s#1, %u719s#4) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u719s#0, %u720s#3) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u719s#1, %u719s#5) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u719s#2, %u719s#6) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u720s#0, %u717s#5) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u720s#1, %u719s#3) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u720s#2, %u759s#1) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_2_ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u721s#0, %u717s#4) [ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_dw0 >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u722s#0, %u723s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u722s#1, %u722s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u722s#2, %u722s#7) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u723s#0, %u722s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u723s#1, %u724s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u724s#0, %u725s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u724s#1, %u724s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u724s#2, %u724s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u725s#0, %u722s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u725s#1, %u724s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u725s#2, %u760s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u726s#0, %u722s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw0 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u727s#0, %u728s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u727s#1, %u727s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u727s#2, %u727s#7) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u728s#0, %u727s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u728s#1, %u729s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u729s#0, %u730s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u729s#1, %u729s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u729s#2, %u729s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u730s#0, %u727s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u730s#1, %u729s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u731s#0, %u727s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u732s#0, %u733s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u732s#1, %u732s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u732s#2, %u732s#7) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u733s#0, %u732s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u733s#1, %u734s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u734s#0, %u735s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u734s#1, %u734s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u734s#2, %u734s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u735s#0, %u732s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u735s#1, %u734s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u736s#0, %u732s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw2 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u737s#0, %u738s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u737s#1, %u737s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u737s#2, %u737s#7) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u738s#0, %u737s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u738s#1, %u739s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u739s#0, %u740s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u739s#1, %u739s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u739s#2, %u739s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u740s#0, %u737s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u740s#1, %u739s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u741s#0, %u737s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw3 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u742s#0, %u743s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u742s#1, %u742s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u742s#2, %u742s#7) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u743s#0, %u742s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u743s#1, %u744s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u744s#0, %u745s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u744s#1, %u744s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u744s#2, %u744s#6) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u745s#0, %u742s#5) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u745s#1, %u744s#3) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u746s#0, %u742s#4) [ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw4 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u747s#1, %u695s#4) [s2_fronting_pmu_load_group_3 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u748s#1, %u696s#1) [s2_fronting_pmu_load_group_14 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u749s#1, %u693s#4) [s2_fronting_pmu_load_group_12 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u750s#1, %u715s#4) [s2_fronting_pmu_load_group_11 >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u751s#1, %u716s#1) [s2_fronting_pmu_load_group_15 >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u751s#1, %u721s#1) [s2_fronting_pmu_load_group_15 >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u751s#1, %u726s#1) [s2_fronting_pmu_load_group_15 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u752s#1, %u713s#4) [s2_fronting_pmu_load_group_13 >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u752s#1, %u718s#4) [s2_fronting_pmu_load_group_13 >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u752s#1, %u723s#4) [s2_fronting_pmu_load_group_13 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u753s#1, %u720s#4) [s2_fronting_pmu_load_group_2 >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u754s#1, %u725s#4) [s2_fronting_pmu_load_group_10 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u755s#1, %u695s#5) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#2, %u695s#6) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#1, %u700s#5) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#2, %u700s#6) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#1, %u705s#5) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#2, %u705s#6) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#1, %u710s#5) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#2, %u710s#6) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u755s#0, %u769s) [s2_backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u756s#1, %u693s#5) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#2, %u693s#6) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#1, %u698s#5) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#2, %u698s#6) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#1, %u703s#5) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#2, %u703s#6) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#1, %u708s#5) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#2, %u708s#6) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u756s#0, %u770s) [s2_backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u757s#0, %u771s) [s2_backing_pmu_group_11_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u758s#1, %u713s#5) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#2, %u713s#6) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#1, %u718s#5) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#2, %u718s#6) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#1, %u723s#5) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#2, %u723s#6) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#1, %u728s#5) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#2, %u728s#6) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#1, %u733s#5) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#2, %u733s#6) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#1, %u738s#5) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#2, %u738s#6) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#1, %u743s#5) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#2, %u743s#6) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u758s#0, %u772s) [s2_backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u759s#0, %u773s) [s2_backing_pmu_group_2_ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u760s#1, %u725s#5) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#2, %u725s#6) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#1, %u730s#5) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#2, %u730s#6) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#1, %u735s#5) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#2, %u735s#6) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#1, %u740s#5) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#2, %u740s#6) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#1, %u745s#5) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#2, %u745s#6) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u760s#0, %u774s) [s2_backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u761s#0, %u747s#0) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u761s#1, %u747s#2) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_3] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u762s#0, %u748s#0) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u762s#1, %u748s#2) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_14] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u763s#0, %u749s#0) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u763s#1, %u749s#2) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_12] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u764s#0, %u750s#0) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u764s#1, %u750s#2) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_11] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u765s#0, %u751s#0) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u765s#1, %u751s#2) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_15] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u766s#0, %u752s#0) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u766s#1, %u752s#2) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_13] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u767s#0, %u753s#0) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u767s#1, %u753s#2) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_2] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u768s#0, %u754s#0) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u768s#1, %u754s#2) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_10] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u692r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u693r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u694r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u695r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u696r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u697r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u698r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u699r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u700r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u701r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u702r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u703r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u704r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u705r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u706r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u707r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u708r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u709r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u710r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u711r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u712r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u713r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u714r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u715r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u716r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt()  {
          "plasma.BindUnit"(%u717r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u718r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u719r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u720r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u721r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt()  {
          "plasma.BindUnit"(%u722r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u723r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u724r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u725r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u726r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u727r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u728r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u729r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u730r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u731r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u732r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u733r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u734r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u735r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u736r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u737r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u738r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u739r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u740r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u741r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u742r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u743r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u744r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u745r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u746r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_3()  {
          "plasma.BindUnit"(%u747r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_14()  {
          "plasma.BindUnit"(%u748r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_12()  {
          "plasma.BindUnit"(%u749r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_11()  {
          "plasma.BindUnit"(%u750r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_15()  {
          "plasma.BindUnit"(%u751r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_13()  {
          "plasma.BindUnit"(%u752r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_2()  {
          "plasma.BindUnit"(%u753r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_10()  {
          "plasma.BindUnit"(%u754r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_3_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u755r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_12_ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u756r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_11_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u757r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_13_ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u758r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_2_ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u759r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_10_ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u760r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_1:group_3"()  {
          "plasma.BindUnit"(%u761r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_2:group_14"()  {
          "plasma.BindUnit"(%u762r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_3:group_12"()  {
          "plasma.BindUnit"(%u763r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_4:group_11"()  {
          "plasma.BindUnit"(%u764r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_5:group_15"()  {
          "plasma.BindUnit"(%u765r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_6:group_13"()  {
          "plasma.BindUnit"(%u766r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_7:group_2"()  {
          "plasma.BindUnit"(%u767r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_8:group_10"()  {
          "plasma.BindUnit"(%u768r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_1:group_3"()  {
          "plasma.BindUnit"(%u769r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_2:group_12"()  {
          "plasma.BindUnit"(%u770r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_3:group_11"()  {
          "plasma.BindUnit"(%u771r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_4:group_13"()  {
          "plasma.BindUnit"(%u772r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_5:group_2"()  {
          "plasma.BindUnit"(%u773r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_6:group_10"()  {
          "plasma.BindUnit"(%u774r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
}
