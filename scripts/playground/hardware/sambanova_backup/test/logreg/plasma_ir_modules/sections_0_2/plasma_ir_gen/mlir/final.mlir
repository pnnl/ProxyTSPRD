module @logreg_sections_0_2 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = false}  {
  plasma.Section @s0() attributes {kControlBlockId = 0 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>, %arg9: !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>, %arg10: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>, %arg11: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>):  // no predecessors
      %u0r, %u0s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_387_head1_neck0_data_pmu0", kUnitId = 0 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u1r, %u1s:2 = plasma.unit.Pmu() attributes {kName = "realign_0_0_404.gbuffer_head1_neck0_data_pmu0", kUnitId = 1 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u2r, %u2s:2 = plasma.unit.Pmu() attributes {kName = "vector_transpose_0_0_405.buffer_head1_neck0_data_pmu0", kUnitId = 2 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u3r, %u3s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_427_head1_neck0_data_pmu0", kUnitId = 3 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u4r, %u4s:3 = plasma.unit.Pmu() attributes {kName = "sbuf2u_0_0_287_head1_neck0_data_pmu0", kUnitId = 4 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u5r, %u5s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r0_r1_pmu0", kUnitId = 5 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u6r, %u6s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r2_r3_pmu1", kUnitId = 6 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u7r, %u7s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r4_r5_pmu2", kUnitId = 7 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u8r, %u8s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r6_r7_pmu3", kUnitId = 8 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u9r, %u9s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r8_r9_pmu4", kUnitId = 9 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u10r, %u10s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r10_r11_pmu5", kUnitId = 10 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u11r, %u11s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r12_r13_pmu6", kUnitId = 11 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u12r, %u12s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r14_r15_pmu7", kUnitId = 12 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u13r, %u13s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r16_r17_pmu8", kUnitId = 13 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u14r, %u14s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r18_r19_pmu9", kUnitId = 14 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u15r, %u15s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_0_0_288_head1_neck0_data_r20_r21_pmu10", kUnitId = 15 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u16r, %u16s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_289_gemm_0_0_0_PCU", kUnitId = 16 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u17r, %u17s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_289_gemm_0_0_0_PMU", kUnitId = 17 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u18r, %u18s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_289_gemm_0_0_1_PCU", kUnitId = 18 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u19r, %u19s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_290_gemm_0_0_0_PCU", kUnitId = 19 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u20r, %u20s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_290_gemm_0_0_0_PMU", kUnitId = 20 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u21r, %u21s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_290_gemm_0_0_1_PCU", kUnitId = 21 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u22r, %u22s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_291_gemm_0_0_0_PCU", kUnitId = 22 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u23r, %u23s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_291_gemm_0_0_0_PMU", kUnitId = 23 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u24r, %u24s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_291_gemm_0_0_1_PCU", kUnitId = 24 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u25r, %u25s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_292_gemm_0_0_0_PCU", kUnitId = 25 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u26r, %u26s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_292_gemm_0_0_0_PMU", kUnitId = 26 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u27r, %u27s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_292_gemm_0_0_1_PCU", kUnitId = 27 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u28r, %u28s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_293_gemm_0_0_0_PCU", kUnitId = 28 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u29r, %u29s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_293_gemm_0_0_0_PMU", kUnitId = 29 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u30r, %u30s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_293_gemm_0_0_1_PCU", kUnitId = 30 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u31r, %u31s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_294_gemm_0_0_0_PCU", kUnitId = 31 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u32r, %u32s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_294_gemm_0_0_0_PMU", kUnitId = 32 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u33r, %u33s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_294_gemm_0_0_1_PCU", kUnitId = 33 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u34r, %u34s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_295_gemm_0_0_0_PCU", kUnitId = 34 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u35r, %u35s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_295_gemm_0_0_0_PMU", kUnitId = 35 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u36r, %u36s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_295_gemm_0_0_1_PCU", kUnitId = 36 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u37r, %u37s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_296_gemm_0_0_0_PCU", kUnitId = 37 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u38r, %u38s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_296_gemm_0_0_0_PMU", kUnitId = 38 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u39r, %u39s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_296_gemm_0_0_1_PCU", kUnitId = 39 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u40r, %u40s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_297_gemm_0_0_0_PCU", kUnitId = 40 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u41r, %u41s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_297_gemm_0_0_0_PMU", kUnitId = 41 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u42r, %u42s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_297_gemm_0_0_1_PCU", kUnitId = 42 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u43r, %u43s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_298_gemm_0_0_0_PCU", kUnitId = 43 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u44r, %u44s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_298_gemm_0_0_0_PMU", kUnitId = 44 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u45r, %u45s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_298_gemm_0_0_1_PCU", kUnitId = 45 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u46r, %u46s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_299_gemm_0_0_0_PCU", kUnitId = 46 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u47r, %u47s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_299_gemm_0_0_0_PMU", kUnitId = 47 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u48r, %u48s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_299_gemm_0_0_1_PCU", kUnitId = 48 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u49r, %u49s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_300_gemm_0_0_0_PCU", kUnitId = 49 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u50r, %u50s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_300_gemm_0_0_0_PMU", kUnitId = 50 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u51r, %u51s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_300_gemm_0_0_1_PCU", kUnitId = 51 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u52r, %u52s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_301_gemm_0_0_0_PCU", kUnitId = 52 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u53r, %u53s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_301_gemm_0_0_0_PMU", kUnitId = 53 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u54r, %u54s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_301_gemm_0_0_1_PCU", kUnitId = 54 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u55r, %u55s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_302_gemm_0_0_0_PCU", kUnitId = 55 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u56r, %u56s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_302_gemm_0_0_0_PMU", kUnitId = 56 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u57r, %u57s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_302_gemm_0_0_1_PCU", kUnitId = 57 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u58r, %u58s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_303_gemm_0_0_0_PCU", kUnitId = 58 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u59r, %u59s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_303_gemm_0_0_0_PMU", kUnitId = 59 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u60r, %u60s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_303_gemm_0_0_1_PCU", kUnitId = 60 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u61r, %u61s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_304_gemm_0_0_0_PCU", kUnitId = 61 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u62r, %u62s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_304_gemm_0_0_0_PMU", kUnitId = 62 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u63r, %u63s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_304_gemm_0_0_1_PCU", kUnitId = 63 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u64r, %u64s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_305_gemm_0_0_0_PCU", kUnitId = 64 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u65r, %u65s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_305_gemm_0_0_0_PMU", kUnitId = 65 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u66r, %u66s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_305_gemm_0_0_1_PCU", kUnitId = 66 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u67r, %u67s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_306_gemm_0_0_0_PCU", kUnitId = 67 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u68r, %u68s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_306_gemm_0_0_0_PMU", kUnitId = 68 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u69r, %u69s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_306_gemm_0_0_1_PCU", kUnitId = 69 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u70r, %u70s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_307_gemm_0_0_0_PCU", kUnitId = 70 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u71r, %u71s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_307_gemm_0_0_0_PMU", kUnitId = 71 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u72r, %u72s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_307_gemm_0_0_1_PCU", kUnitId = 72 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u73r, %u73s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_308_gemm_0_0_0_PCU", kUnitId = 73 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u74r, %u74s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_308_gemm_0_0_0_PMU", kUnitId = 74 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u75r, %u75s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_308_gemm_0_0_1_PCU", kUnitId = 75 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u76r, %u76s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_309_gemm_0_0_0_PCU", kUnitId = 76 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u77r, %u77s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_309_gemm_0_0_0_PMU", kUnitId = 77 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u78r, %u78s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_309_gemm_0_0_1_PCU", kUnitId = 78 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u79r, %u79s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_310_gemm_0_0_0_PCU", kUnitId = 79 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u80r, %u80s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_0_0_310_gemm_0_0_0_PMU", kUnitId = 80 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u81r, %u81s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_0_0_310_gemm_0_0_1_PCU", kUnitId = 81 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u82r, %u82s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_data_w0_pmu0", kUnitId = 82 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u83r, %u83s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_data_w1_pmu1", kUnitId = 83 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u84r, %u84s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_data_w2_pmu2", kUnitId = 84 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u85r, %u85s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_data_w3_pmu3", kUnitId = 85 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u86r, %u86s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_data_w4_pmu4", kUnitId = 86 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u87r, %u87s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_data_w5_pmu5", kUnitId = 87 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u88r, %u88s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0", kUnitId = 88 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u89r, %u89s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1", kUnitId = 89 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u90r, %u90s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2", kUnitId = 90 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u91r, %u91s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3", kUnitId = 91 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u92r, %u92s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4", kUnitId = 92 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u93r, %u93s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5", kUnitId = 93 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u94r, %u94s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_313_head1_neck0_rob_pmu", kUnitId = 94 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u95r, %u95s:3 = plasma.unit.Pcu() attributes {kName = "bias_transpose_add_0_0_314_bias_add_pcu", kUnitId = 95 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSink, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSink, !plasma.VectorSink)
      %u96r, %u96s:3 = plasma.unit.Pmu() attributes {kName = "bias_transpose_add_0_0_314_bias_add_pmu", kUnitId = 96 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u97r, %u97s:2 = plasma.unit.Pmu() attributes {kName = "streaming_transpose_0_0_315_transpose_pmu", kUnitId = 97 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u98r, %u98s:8 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_198_head1_neck0_data_pmu0", kUnitId = 98 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u99r, %u99s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_0_0_PCU", kUnitId = 99 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u100r, %u100s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_0_0_PMU", kUnitId = 100 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u101r, %u101s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_1_0_PCU", kUnitId = 101 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u102r, %u102s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_1_0_PMU", kUnitId = 102 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u103r, %u103s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_2_0_PCU", kUnitId = 103 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u104r, %u104s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_2_0_PMU", kUnitId = 104 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u105r, %u105s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_3_0_PCU", kUnitId = 105 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u106r, %u106s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_3_0_PMU", kUnitId = 106 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u107r, %u107s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_4_0_PCU", kUnitId = 107 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u108r, %u108s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_4_0_PMU", kUnitId = 108 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u109r, %u109s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_5_0_PCU", kUnitId = 109 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u110r, %u110s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_5_0_PMU", kUnitId = 110 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u111r, %u111s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_6_0_PCU", kUnitId = 111 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u112r, %u112s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_6_0_PMU", kUnitId = 112 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u113r, %u113s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_7_0_PCU", kUnitId = 113 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u114r, %u114s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_7_0_PMU", kUnitId = 114 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u115r, %u115s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_8_0_PCU", kUnitId = 115 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u116r, %u116s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_8_0_PMU", kUnitId = 116 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u117r, %u117s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_9_0_PCU", kUnitId = 117 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u118r, %u118s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_9_0_PMU", kUnitId = 118 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u119r, %u119s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_10_0_PCU", kUnitId = 119 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u120r, %u120s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_10_0_PMU", kUnitId = 120 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u121r, %u121s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_11_0_PCU", kUnitId = 121 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u122r, %u122s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_11_0_PMU", kUnitId = 122 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u123r, %u123s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_12_0_PCU", kUnitId = 123 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u124r, %u124s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_12_0_PMU", kUnitId = 124 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u125r, %u125s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_13_0_PCU", kUnitId = 125 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u126r, %u126s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_13_0_PMU", kUnitId = 126 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u127r, %u127s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_14_0_PCU", kUnitId = 127 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u128r, %u128s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_14_0_PMU", kUnitId = 128 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u129r, %u129s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_15_0_PCU", kUnitId = 129 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u130r, %u130s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_15_0_PMU", kUnitId = 130 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u131r, %u131s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_16_0_PCU", kUnitId = 131 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u132r, %u132s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_16_0_PMU", kUnitId = 132 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u133r, %u133s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_17_0_PCU", kUnitId = 133 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u134r, %u134s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_17_0_PMU", kUnitId = 134 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u135r, %u135s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_18_0_PCU", kUnitId = 135 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u136r, %u136s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_18_0_PMU", kUnitId = 136 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u137r, %u137s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_19_0_PCU", kUnitId = 137 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u138r, %u138s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_19_0_PMU", kUnitId = 138 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u139r, %u139s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_20_0_PCU", kUnitId = 139 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u140r, %u140s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_20_0_PMU", kUnitId = 140 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u141r, %u141s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_21_0_PCU", kUnitId = 141 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u142r, %u142s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_21_0_PMU", kUnitId = 142 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u143r, %u143s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_22_0_PCU", kUnitId = 143 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u144r, %u144s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_22_0_PMU", kUnitId = 144 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u145r, %u145s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_23_0_PCU", kUnitId = 145 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u146r, %u146s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_23_0_PMU", kUnitId = 146 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u147r, %u147s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_24_0_PCU", kUnitId = 147 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u148r, %u148s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_24_0_PMU", kUnitId = 148 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u149r, %u149s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_25_0_PCU", kUnitId = 149 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u150r, %u150s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_25_0_PMU", kUnitId = 150 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u151r, %u151s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_26_0_PCU", kUnitId = 151 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u152r, %u152s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_26_0_PMU", kUnitId = 152 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u153r, %u153s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_27_0_PCU", kUnitId = 153 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u154r, %u154s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_27_0_PMU", kUnitId = 154 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u155r, %u155s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_28_0_PCU", kUnitId = 155 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u156r, %u156s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_28_0_PMU", kUnitId = 156 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u157r, %u157s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_29_0_PCU", kUnitId = 157 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u158r, %u158s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_29_0_PMU", kUnitId = 158 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u159r, %u159s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_30_0_PCU", kUnitId = 159 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u160r, %u160s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_30_0_PMU", kUnitId = 160 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u161r, %u161s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_31_0_PCU", kUnitId = 161 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u162r, %u162s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_0_31_0_PMU", kUnitId = 162 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u163r, %u163s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_0_0_PCU", kUnitId = 163 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u164r, %u164s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_0_0_PMU", kUnitId = 164 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u165r, %u165s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_1_0_PCU", kUnitId = 165 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u166r, %u166s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_1_0_PMU", kUnitId = 166 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u167r, %u167s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_2_0_PCU", kUnitId = 167 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u168r, %u168s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_2_0_PMU", kUnitId = 168 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u169r, %u169s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_3_0_PCU", kUnitId = 169 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u170r, %u170s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_3_0_PMU", kUnitId = 170 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u171r, %u171s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_4_0_PCU", kUnitId = 171 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u172r, %u172s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_4_0_PMU", kUnitId = 172 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u173r, %u173s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_5_0_PCU", kUnitId = 173 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u174r, %u174s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_5_0_PMU", kUnitId = 174 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u175r, %u175s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_6_0_PCU", kUnitId = 175 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u176r, %u176s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_6_0_PMU", kUnitId = 176 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u177r, %u177s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_7_0_PCU", kUnitId = 177 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u178r, %u178s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_7_0_PMU", kUnitId = 178 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u179r, %u179s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_8_0_PCU", kUnitId = 179 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u180r, %u180s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_8_0_PMU", kUnitId = 180 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u181r, %u181s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_9_0_PCU", kUnitId = 181 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u182r, %u182s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_9_0_PMU", kUnitId = 182 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u183r, %u183s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_10_0_PCU", kUnitId = 183 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u184r, %u184s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_10_0_PMU", kUnitId = 184 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u185r, %u185s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_11_0_PCU", kUnitId = 185 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u186r, %u186s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_11_0_PMU", kUnitId = 186 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u187r, %u187s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_12_0_PCU", kUnitId = 187 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u188r, %u188s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_12_0_PMU", kUnitId = 188 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u189r, %u189s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_13_0_PCU", kUnitId = 189 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u190r, %u190s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_13_0_PMU", kUnitId = 190 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u191r, %u191s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_14_0_PCU", kUnitId = 191 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u192r, %u192s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_14_0_PMU", kUnitId = 192 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u193r, %u193s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_15_0_PCU", kUnitId = 193 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u194r, %u194s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_15_0_PMU", kUnitId = 194 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u195r, %u195s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_16_0_PCU", kUnitId = 195 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u196r, %u196s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_16_0_PMU", kUnitId = 196 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u197r, %u197s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_17_0_PCU", kUnitId = 197 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u198r, %u198s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_17_0_PMU", kUnitId = 198 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u199r, %u199s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_18_0_PCU", kUnitId = 199 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u200r, %u200s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_18_0_PMU", kUnitId = 200 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u201r, %u201s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_19_0_PCU", kUnitId = 201 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u202r, %u202s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_19_0_PMU", kUnitId = 202 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u203r, %u203s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_20_0_PCU", kUnitId = 203 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u204r, %u204s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_20_0_PMU", kUnitId = 204 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u205r, %u205s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_21_0_PCU", kUnitId = 205 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u206r, %u206s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_21_0_PMU", kUnitId = 206 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u207r, %u207s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_22_0_PCU", kUnitId = 207 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u208r, %u208s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_22_0_PMU", kUnitId = 208 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u209r, %u209s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_23_0_PCU", kUnitId = 209 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u210r, %u210s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_23_0_PMU", kUnitId = 210 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u211r, %u211s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_24_0_PCU", kUnitId = 211 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u212r, %u212s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_24_0_PMU", kUnitId = 212 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u213r, %u213s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_25_0_PCU", kUnitId = 213 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u214r, %u214s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_25_0_PMU", kUnitId = 214 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u215r, %u215s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_26_0_PCU", kUnitId = 215 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u216r, %u216s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_26_0_PMU", kUnitId = 216 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u217r, %u217s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_27_0_PCU", kUnitId = 217 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u218r, %u218s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_27_0_PMU", kUnitId = 218 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u219r, %u219s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_28_0_PCU", kUnitId = 219 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u220r, %u220s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_28_0_PMU", kUnitId = 220 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u221r, %u221s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_29_0_PCU", kUnitId = 221 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u222r, %u222s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_29_0_PMU", kUnitId = 222 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u223r, %u223s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_30_0_PCU", kUnitId = 223 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u224r, %u224s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_30_0_PMU", kUnitId = 224 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u225r, %u225s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_31_0_PCU", kUnitId = 225 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u226r, %u226s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_1_31_0_PMU", kUnitId = 226 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u227r, %u227s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_0_0_PCU", kUnitId = 227 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u228r, %u228s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_0_0_PMU", kUnitId = 228 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u229r, %u229s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_1_0_PCU", kUnitId = 229 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u230r, %u230s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_1_0_PMU", kUnitId = 230 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u231r, %u231s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_2_0_PCU", kUnitId = 231 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u232r, %u232s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_2_0_PMU", kUnitId = 232 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u233r, %u233s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_3_0_PCU", kUnitId = 233 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u234r, %u234s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_3_0_PMU", kUnitId = 234 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u235r, %u235s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_4_0_PCU", kUnitId = 235 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u236r, %u236s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_4_0_PMU", kUnitId = 236 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u237r, %u237s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_5_0_PCU", kUnitId = 237 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u238r, %u238s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_5_0_PMU", kUnitId = 238 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u239r, %u239s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_6_0_PCU", kUnitId = 239 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u240r, %u240s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_6_0_PMU", kUnitId = 240 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u241r, %u241s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_7_0_PCU", kUnitId = 241 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u242r, %u242s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_7_0_PMU", kUnitId = 242 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u243r, %u243s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_8_0_PCU", kUnitId = 243 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u244r, %u244s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_8_0_PMU", kUnitId = 244 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u245r, %u245s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_9_0_PCU", kUnitId = 245 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u246r, %u246s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_9_0_PMU", kUnitId = 246 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u247r, %u247s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_10_0_PCU", kUnitId = 247 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u248r, %u248s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_10_0_PMU", kUnitId = 248 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u249r, %u249s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_11_0_PCU", kUnitId = 249 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u250r, %u250s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_11_0_PMU", kUnitId = 250 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u251r, %u251s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_12_0_PCU", kUnitId = 251 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u252r, %u252s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_12_0_PMU", kUnitId = 252 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u253r, %u253s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_13_0_PCU", kUnitId = 253 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u254r, %u254s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_13_0_PMU", kUnitId = 254 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u255r, %u255s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_14_0_PCU", kUnitId = 255 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u256r, %u256s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_14_0_PMU", kUnitId = 256 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u257r, %u257s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_15_0_PCU", kUnitId = 257 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u258r, %u258s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_15_0_PMU", kUnitId = 258 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u259r, %u259s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_16_0_PCU", kUnitId = 259 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u260r, %u260s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_16_0_PMU", kUnitId = 260 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u261r, %u261s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_17_0_PCU", kUnitId = 261 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u262r, %u262s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_17_0_PMU", kUnitId = 262 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u263r, %u263s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_18_0_PCU", kUnitId = 263 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u264r, %u264s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_18_0_PMU", kUnitId = 264 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u265r, %u265s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_19_0_PCU", kUnitId = 265 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u266r, %u266s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_19_0_PMU", kUnitId = 266 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u267r, %u267s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_20_0_PCU", kUnitId = 267 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u268r, %u268s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_20_0_PMU", kUnitId = 268 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u269r, %u269s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_21_0_PCU", kUnitId = 269 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u270r, %u270s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_21_0_PMU", kUnitId = 270 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u271r, %u271s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_22_0_PCU", kUnitId = 271 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u272r, %u272s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_22_0_PMU", kUnitId = 272 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u273r, %u273s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_23_0_PCU", kUnitId = 273 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u274r, %u274s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_23_0_PMU", kUnitId = 274 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u275r, %u275s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_24_0_PCU", kUnitId = 275 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u276r, %u276s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_24_0_PMU", kUnitId = 276 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u277r, %u277s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_25_0_PCU", kUnitId = 277 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u278r, %u278s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_25_0_PMU", kUnitId = 278 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u279r, %u279s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_26_0_PCU", kUnitId = 279 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u280r, %u280s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_26_0_PMU", kUnitId = 280 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u281r, %u281s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_27_0_PCU", kUnitId = 281 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u282r, %u282s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_27_0_PMU", kUnitId = 282 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u283r, %u283s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_28_0_PCU", kUnitId = 283 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u284r, %u284s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_28_0_PMU", kUnitId = 284 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u285r, %u285s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_29_0_PCU", kUnitId = 285 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u286r, %u286s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_29_0_PMU", kUnitId = 286 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u287r, %u287s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_30_0_PCU", kUnitId = 287 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u288r, %u288s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_30_0_PMU", kUnitId = 288 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u289r, %u289s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_31_0_PCU", kUnitId = 289 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u290r, %u290s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_2_31_0_PMU", kUnitId = 290 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u291r, %u291s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_0_0_PCU", kUnitId = 291 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u292r, %u292s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_0_0_PMU", kUnitId = 292 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u293r, %u293s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_1_0_PCU", kUnitId = 293 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u294r, %u294s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_1_0_PMU", kUnitId = 294 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u295r, %u295s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_2_0_PCU", kUnitId = 295 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u296r, %u296s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_2_0_PMU", kUnitId = 296 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u297r, %u297s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_3_0_PCU", kUnitId = 297 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u298r, %u298s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_3_0_PMU", kUnitId = 298 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u299r, %u299s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_4_0_PCU", kUnitId = 299 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u300r, %u300s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_4_0_PMU", kUnitId = 300 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u301r, %u301s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_5_0_PCU", kUnitId = 301 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u302r, %u302s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_5_0_PMU", kUnitId = 302 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u303r, %u303s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_6_0_PCU", kUnitId = 303 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u304r, %u304s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_6_0_PMU", kUnitId = 304 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u305r, %u305s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_7_0_PCU", kUnitId = 305 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u306r, %u306s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_7_0_PMU", kUnitId = 306 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u307r, %u307s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_8_0_PCU", kUnitId = 307 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u308r, %u308s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_8_0_PMU", kUnitId = 308 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u309r, %u309s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_9_0_PCU", kUnitId = 309 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u310r, %u310s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_9_0_PMU", kUnitId = 310 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u311r, %u311s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_10_0_PCU", kUnitId = 311 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u312r, %u312s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_10_0_PMU", kUnitId = 312 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u313r, %u313s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_11_0_PCU", kUnitId = 313 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u314r, %u314s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_11_0_PMU", kUnitId = 314 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u315r, %u315s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_12_0_PCU", kUnitId = 315 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u316r, %u316s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_12_0_PMU", kUnitId = 316 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u317r, %u317s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_13_0_PCU", kUnitId = 317 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u318r, %u318s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_13_0_PMU", kUnitId = 318 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u319r, %u319s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_14_0_PCU", kUnitId = 319 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u320r, %u320s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_14_0_PMU", kUnitId = 320 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u321r, %u321s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_15_0_PCU", kUnitId = 321 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u322r, %u322s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_15_0_PMU", kUnitId = 322 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u323r, %u323s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_16_0_PCU", kUnitId = 323 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u324r, %u324s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_16_0_PMU", kUnitId = 324 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u325r, %u325s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_17_0_PCU", kUnitId = 325 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u326r, %u326s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_17_0_PMU", kUnitId = 326 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u327r, %u327s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_18_0_PCU", kUnitId = 327 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u328r, %u328s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_18_0_PMU", kUnitId = 328 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u329r, %u329s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_19_0_PCU", kUnitId = 329 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u330r, %u330s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_19_0_PMU", kUnitId = 330 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u331r, %u331s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_20_0_PCU", kUnitId = 331 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u332r, %u332s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_20_0_PMU", kUnitId = 332 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u333r, %u333s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_21_0_PCU", kUnitId = 333 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u334r, %u334s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_21_0_PMU", kUnitId = 334 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u335r, %u335s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_22_0_PCU", kUnitId = 335 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u336r, %u336s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_22_0_PMU", kUnitId = 336 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u337r, %u337s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_23_0_PCU", kUnitId = 337 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u338r, %u338s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_23_0_PMU", kUnitId = 338 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u339r, %u339s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_24_0_PCU", kUnitId = 339 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u340r, %u340s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_24_0_PMU", kUnitId = 340 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u341r, %u341s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_25_0_PCU", kUnitId = 341 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u342r, %u342s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_25_0_PMU", kUnitId = 342 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u343r, %u343s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_26_0_PCU", kUnitId = 343 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u344r, %u344s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_26_0_PMU", kUnitId = 344 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u345r, %u345s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_27_0_PCU", kUnitId = 345 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u346r, %u346s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_27_0_PMU", kUnitId = 346 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u347r, %u347s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_28_0_PCU", kUnitId = 347 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u348r, %u348s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_28_0_PMU", kUnitId = 348 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u349r, %u349s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_29_0_PCU", kUnitId = 349 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u350r, %u350s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_29_0_PMU", kUnitId = 350 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u351r, %u351s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_30_0_PCU", kUnitId = 351 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u352r, %u352s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_3_30_0_PMU", kUnitId = 352 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u353r, %u353s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_4_0_0_PCU", kUnitId = 353 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u354r, %u354s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_gemm_4_0_0_PMU", kUnitId = 354 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u355r, %u355s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_385_head1_neck0_data_w0_pmu0", kUnitId = 355 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u356r, %u356s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_385_head1_neck0_data_w1_pmu1", kUnitId = 356 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u357r, %u357s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_385_head1_neck0_data_w2_pmu2", kUnitId = 357 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u358r, %u358s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_385_head1_neck0_data_w3_pmu3", kUnitId = 358 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u359r, %u359s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_385_head1_neck0_data_w4_pmu4", kUnitId = 359 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u360r, %u360s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_385_head1_neck0_rob_pmu", kUnitId = 360 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u361r, %u361s:2 = plasma.unit.Pmu() attributes {kName = "bias_add_0_0_382.wbufpmu0", kUnitId = 361 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u362r, %u362s:5 = plasma.unit.Pcu() attributes {kName = "bias_add_0_0_382.add0_output", kUnitId = 362 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u363r, %u363s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_202_head1_neck0_data_pmu0", kUnitId = 363 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u364r, %u364s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_430_head0_head1_neck0_data_pmu0", kUnitId = 364 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u365r, %u365s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_389_head1_neck0_data_pmu0", kUnitId = 365 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u366r, %u366s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_431_head0_head1_neck0_data_pmu0", kUnitId = 366 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u367r, %u367s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_391_head1_neck0_data_pmu0", kUnitId = 367 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u368r, %u368s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_422_head1_neck0_data_pmu0", kUnitId = 368 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u369r, %u369s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_421_head1_neck0_data_pmu0", kUnitId = 369 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u370r, %u370s:3 = plasma.unit.Pmu() attributes {kName = "realign_0_0_409.gbuffer_head1_neck0_data_pmu0", kUnitId = 370 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u371r, %u371s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_392_head1_neck0_data_pmu0", kUnitId = 371 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u372r, %u372s:5 = plasma.unit.Pcu() attributes {kName = "sub_0_0_322_output", kUnitId = 372 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u373r, %u373s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_432_head0_head1_neck0_data_pmu0", kUnitId = 373 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u374r, %u374s:5 = plasma.unit.Pcu() attributes {kName = "mul_0_0_323_output", kUnitId = 374 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u375r, %u375s:8 = plasma.unit.Pcu() attributes {kName = "mean_unalign_0_0_324_output", kUnitId = 375 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u376r, %u376s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_393_head1_neck0_data_pmu0", kUnitId = 376 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u377r, %u377s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_196_head1_neck0_data_pmu0", kUnitId = 377 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ScalarSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink)
      %u378r, %u378s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_200_head1_neck0_data_pmu0", kUnitId = 378 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u379r, %u379s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_200_head1_neck0_hydra0_pmu", kUnitId = 379 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u380r, %u380s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_200_head1_neck0_hydra1_pmu", kUnitId = 380 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u381r, %u381s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_200_head1_neck0_hydra2_pmu", kUnitId = 381 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u382r, %u382s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_200_head1_neck0_hydra3_pmu", kUnitId = 382 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u383r, %u383s:3 = plasma.unit.Pmu() attributes {kName = "lbuf1a_0_0_388_head1_neck0_data_pmu0", kUnitId = 383 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u384r, %u384s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_0_max_417792", kUnitId = 384 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u385r, %u385s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_417792_max_835584", kUnitId = 385 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u386r, %u386s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_835584_max_1253376", kUnitId = 386 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u387r, %u387s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_1253376_max_1671168", kUnitId = 387 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u388r, %u388s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_1671168_max_2088960", kUnitId = 388 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u389r, %u389s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_2088960_max_2506752", kUnitId = 389 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u390r, %u390s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_2506752_max_2924544", kUnitId = 390 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u391r, %u391s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_2924544_max_3342336", kUnitId = 391 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u392r, %u392s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_3342336_max_3760128", kUnitId = 392 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u393r, %u393s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_3760128_max_4177920", kUnitId = 393 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u394r, %u394s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_4177920_max_4595712", kUnitId = 394 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u395r, %u395s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_4595712_max_5013504", kUnitId = 395 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u396r, %u396s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_5013504_max_5431296", kUnitId = 396 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u397r, %u397s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_5431296_max_5849088", kUnitId = 397 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u398r, %u398s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_5849088_max_6266880", kUnitId = 398 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u399r, %u399s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_D_0_0_0_0_0_min_6266880_max_6684672", kUnitId = 399 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u400r, %u400s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.ptconvlstm__conv_layer__conv2d_weight_permute.tbuf_ROB_R_0_0_0_0", kUnitId = 400 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u401r, %u401s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_189_D_0_0", kUnitId = 401 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u402r, %u402s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1u_0_0_190_D_0_0", kUnitId = 402 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u403r, %u403s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_194_D_0_0", kUnitId = 403 : i64}  {
      ^bb0(%arg12: !plasma.ControlSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u404r, %u404s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_4", kUnitId = 404 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u405r, %u405s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_12", kUnitId = 405 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u406r, %u406s:4 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_25", kUnitId = 406 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u407r, %u407s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266", kUnitId = 407 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u408r, %u408s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_1", kOnChipLayout = !plasma.TL<256x136x3xbf16:RVRM>, kUnitId = 408 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u409r, %u409s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_2", kOnChipLayout = !plasma.TL<3xi32:RVRM>, kUnitId = 409 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u410r, %u410s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_3", kOnChipLayout = !plasma.TL<256x1xbf16:CVRM:64>, kUnitId = 410 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u411r, %u411s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_4", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 411 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u412r, %u412s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 412 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u413r, %u413s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_6", kOnChipLayout = !plasma.TL<60x136xbf16:RVRM:64>, kUnitId = 413 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u414r, %u414s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_7", kOnChipLayout = !plasma.TL<96xi32:RVRM:64>, kUnitId = 414 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<96xi32:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u415r, %u415s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_8", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM>, kUnitId = 415 : i64}  {
      ^bb0(%arg12: !plasma.VectorSrc, %arg13: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u416r, %u416s = plasma.unit.Vag(%arg8) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_1", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 416 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u417r, %u417s = plasma.unit.Vag(%arg9) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_2", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 417 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u418r, %u418s = plasma.unit.Vag(%arg10) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_3", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 418 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u419r, %u419s = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_4", kOnChipLayout = !plasma.TL<1x64xui8:RVRM>, kUnitId = 419 : i64}  {
      ^bb0(%arg12: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u0s#1, %u1s#1) [gbuf1a_0_0_387_head1_neck0_data_pmu0 >> realign_0_0_404_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u1s#0, %u384s#3) [realign_0_0_404_gbuffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#0, %u3s#1) [vector_transpose_0_0_405_buffer_head1_neck0_data_pmu0 >> gbuf2a_0_0_427_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u5s#2) [gbuf2a_0_0_427_head1_neck0_data_pmu0 >> split_kernel_gbuf_0_0_288_head1_neck0_data_r0_r1_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u17s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_289_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u20s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_290_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u23s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_291_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u26s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_292_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u29s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_293_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u32s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_294_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u35s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_295_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u38s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_296_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u41s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_297_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u44s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_298_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u47s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_299_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u50s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_300_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u53s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_301_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u56s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_302_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u59s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_303_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u62s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_304_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u65s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_305_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u68s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_306_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u71s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_307_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u74s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_308_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u77s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_309_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u80s#1) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> biggemm_0_0_310_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#1, %u377s#5) [sbuf2u_0_0_287_head1_neck0_data_pmu0 >> gbuf2u_0_0_196_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u5s#0, %u16s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r0_r1_pmu0 >> biggemm_0_0_289_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u5s#1, %u19s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r0_r1_pmu0 >> biggemm_0_0_290_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u6s#0, %u22s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r2_r3_pmu1 >> biggemm_0_0_291_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u6s#1, %u25s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r2_r3_pmu1 >> biggemm_0_0_292_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u7s#0, %u28s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r4_r5_pmu2 >> biggemm_0_0_293_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u7s#1, %u31s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r4_r5_pmu2 >> biggemm_0_0_294_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u8s#0, %u34s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r6_r7_pmu3 >> biggemm_0_0_295_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u8s#1, %u37s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r6_r7_pmu3 >> biggemm_0_0_296_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#0, %u40s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r8_r9_pmu4 >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#1, %u43s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r8_r9_pmu4 >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#0, %u46s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r10_r11_pmu5 >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#1, %u49s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r10_r11_pmu5 >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u52s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r12_r13_pmu6 >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#1, %u55s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r12_r13_pmu6 >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u12s#0, %u58s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r14_r15_pmu7 >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u12s#1, %u61s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r14_r15_pmu7 >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#0, %u64s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r16_r17_pmu8 >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#1, %u67s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r16_r17_pmu8 >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#0, %u70s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r18_r19_pmu9 >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#1, %u73s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r18_r19_pmu9 >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#0, %u76s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r20_r21_pmu10 >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#1, %u79s#2) [split_kernel_gbuf_0_0_288_head1_neck0_data_r20_r21_pmu10 >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#0, %u88s#3) [biggemm_0_0_289_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u17s#0, %u16s#1) [biggemm_0_0_289_gemm_0_0_0_PMU >> biggemm_0_0_289_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u17s#0, %u18s#1) [biggemm_0_0_289_gemm_0_0_0_PMU >> biggemm_0_0_289_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u19s#0, %u88s#3) [biggemm_0_0_290_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u20s#0, %u19s#1) [biggemm_0_0_290_gemm_0_0_0_PMU >> biggemm_0_0_290_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u20s#0, %u21s#1) [biggemm_0_0_290_gemm_0_0_0_PMU >> biggemm_0_0_290_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u22s#0, %u88s#3) [biggemm_0_0_291_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#0, %u22s#1) [biggemm_0_0_291_gemm_0_0_0_PMU >> biggemm_0_0_291_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#0, %u24s#1) [biggemm_0_0_291_gemm_0_0_0_PMU >> biggemm_0_0_291_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u25s#0, %u88s#3) [biggemm_0_0_292_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#0, %u25s#1) [biggemm_0_0_292_gemm_0_0_0_PMU >> biggemm_0_0_292_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#0, %u27s#1) [biggemm_0_0_292_gemm_0_0_0_PMU >> biggemm_0_0_292_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u28s#0, %u89s#3) [biggemm_0_0_293_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u29s#0, %u28s#1) [biggemm_0_0_293_gemm_0_0_0_PMU >> biggemm_0_0_293_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u29s#0, %u30s#1) [biggemm_0_0_293_gemm_0_0_0_PMU >> biggemm_0_0_293_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u31s#0, %u89s#3) [biggemm_0_0_294_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u31s#1) [biggemm_0_0_294_gemm_0_0_0_PMU >> biggemm_0_0_294_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u33s#1) [biggemm_0_0_294_gemm_0_0_0_PMU >> biggemm_0_0_294_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u34s#0, %u89s#3) [biggemm_0_0_295_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u35s#0, %u34s#1) [biggemm_0_0_295_gemm_0_0_0_PMU >> biggemm_0_0_295_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u35s#0, %u36s#1) [biggemm_0_0_295_gemm_0_0_0_PMU >> biggemm_0_0_295_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u37s#0, %u89s#3) [biggemm_0_0_296_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u38s#0, %u37s#1) [biggemm_0_0_296_gemm_0_0_0_PMU >> biggemm_0_0_296_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u38s#0, %u39s#1) [biggemm_0_0_296_gemm_0_0_0_PMU >> biggemm_0_0_296_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u40s#0, %u90s#3) [biggemm_0_0_297_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u41s#0, %u40s#1) [biggemm_0_0_297_gemm_0_0_0_PMU >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u41s#0, %u42s#1) [biggemm_0_0_297_gemm_0_0_0_PMU >> biggemm_0_0_297_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u43s#0, %u90s#3) [biggemm_0_0_298_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u44s#0, %u43s#1) [biggemm_0_0_298_gemm_0_0_0_PMU >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u44s#0, %u45s#1) [biggemm_0_0_298_gemm_0_0_0_PMU >> biggemm_0_0_298_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#0, %u90s#3) [biggemm_0_0_299_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#0, %u46s#1) [biggemm_0_0_299_gemm_0_0_0_PMU >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#0, %u48s#1) [biggemm_0_0_299_gemm_0_0_0_PMU >> biggemm_0_0_299_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u49s#0, %u90s#3) [biggemm_0_0_300_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u50s#0, %u49s#1) [biggemm_0_0_300_gemm_0_0_0_PMU >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u50s#0, %u51s#1) [biggemm_0_0_300_gemm_0_0_0_PMU >> biggemm_0_0_300_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u52s#0, %u91s#3) [biggemm_0_0_301_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u53s#0, %u52s#1) [biggemm_0_0_301_gemm_0_0_0_PMU >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u53s#0, %u54s#1) [biggemm_0_0_301_gemm_0_0_0_PMU >> biggemm_0_0_301_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u55s#0, %u91s#3) [biggemm_0_0_302_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#0, %u55s#1) [biggemm_0_0_302_gemm_0_0_0_PMU >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#0, %u57s#1) [biggemm_0_0_302_gemm_0_0_0_PMU >> biggemm_0_0_302_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u58s#0, %u91s#3) [biggemm_0_0_303_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u59s#0, %u58s#1) [biggemm_0_0_303_gemm_0_0_0_PMU >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u59s#0, %u60s#1) [biggemm_0_0_303_gemm_0_0_0_PMU >> biggemm_0_0_303_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u61s#0, %u91s#3) [biggemm_0_0_304_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#0, %u61s#1) [biggemm_0_0_304_gemm_0_0_0_PMU >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#0, %u63s#1) [biggemm_0_0_304_gemm_0_0_0_PMU >> biggemm_0_0_304_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u64s#0, %u92s#3) [biggemm_0_0_305_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u65s#0, %u64s#1) [biggemm_0_0_305_gemm_0_0_0_PMU >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u65s#0, %u66s#1) [biggemm_0_0_305_gemm_0_0_0_PMU >> biggemm_0_0_305_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u67s#0, %u92s#3) [biggemm_0_0_306_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u68s#0, %u67s#1) [biggemm_0_0_306_gemm_0_0_0_PMU >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u68s#0, %u69s#1) [biggemm_0_0_306_gemm_0_0_0_PMU >> biggemm_0_0_306_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u70s#0, %u92s#3) [biggemm_0_0_307_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u71s#0, %u70s#1) [biggemm_0_0_307_gemm_0_0_0_PMU >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u71s#0, %u72s#1) [biggemm_0_0_307_gemm_0_0_0_PMU >> biggemm_0_0_307_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u73s#0, %u92s#3) [biggemm_0_0_308_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u74s#0, %u73s#1) [biggemm_0_0_308_gemm_0_0_0_PMU >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u74s#0, %u75s#1) [biggemm_0_0_308_gemm_0_0_0_PMU >> biggemm_0_0_308_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u76s#0, %u93s#3) [biggemm_0_0_309_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u77s#0, %u76s#1) [biggemm_0_0_309_gemm_0_0_0_PMU >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u77s#0, %u78s#1) [biggemm_0_0_309_gemm_0_0_0_PMU >> biggemm_0_0_309_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u79s#0, %u93s#3) [biggemm_0_0_310_gemm_0_0_0_PCU >> gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u80s#0, %u79s#1) [biggemm_0_0_310_gemm_0_0_0_PMU >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u80s#0, %u81s#1) [biggemm_0_0_310_gemm_0_0_0_PMU >> biggemm_0_0_310_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u82s#0, %u94s#3) [gbuf2u_0_0_313_head1_neck0_data_w0_pmu0 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u83s#0, %u94s#3) [gbuf2u_0_0_313_head1_neck0_data_w1_pmu1 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u84s#0, %u94s#3) [gbuf2u_0_0_313_head1_neck0_data_w2_pmu2 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u85s#0, %u94s#3) [gbuf2u_0_0_313_head1_neck0_data_w3_pmu3 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u86s#0, %u94s#3) [gbuf2u_0_0_313_head1_neck0_data_w4_pmu4 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u87s#0, %u94s#3) [gbuf2u_0_0_313_head1_neck0_data_w5_pmu5 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u88s#0, %u82s#1) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> gbuf2u_0_0_313_head1_neck0_data_w0_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u88s#1, %u16s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_289_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u18s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_289_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u16s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_289_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u18s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_289_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u19s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_290_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u21s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_290_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u19s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_290_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u21s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_290_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u22s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_291_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u24s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_291_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u22s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_291_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u24s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_291_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u25s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_292_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u27s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_292_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u25s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_292_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#2, %u27s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu0 >> biggemm_0_0_292_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#0, %u83s#1) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> gbuf2u_0_0_313_head1_neck0_data_w1_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u89s#1, %u28s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_293_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u30s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_293_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u28s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_293_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u30s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_293_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u31s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_294_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u33s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_294_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u31s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_294_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u33s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_294_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u34s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_295_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u36s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_295_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u34s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_295_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u36s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_295_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u37s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_296_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u39s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_296_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u37s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_296_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#2, %u39s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu1 >> biggemm_0_0_296_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#0, %u84s#1) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> gbuf2u_0_0_313_head1_neck0_data_w2_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u90s#1, %u40s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#1, %u42s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_297_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u40s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_297_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u42s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_297_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#1, %u43s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#1, %u45s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_298_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u43s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_298_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u45s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_298_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#1, %u46s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#1, %u48s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_299_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u46s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_299_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u48s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_299_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#1, %u49s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#1, %u51s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_300_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u49s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_300_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#2, %u51s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu2 >> biggemm_0_0_300_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#0, %u85s#1) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> gbuf2u_0_0_313_head1_neck0_data_w3_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u91s#1, %u52s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#1, %u54s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_301_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u52s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_301_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u54s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_301_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#1, %u55s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#1, %u57s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_302_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u55s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_302_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u57s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_302_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#1, %u58s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#1, %u60s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_303_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u58s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_303_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u60s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_303_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#1, %u61s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#1, %u63s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_304_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u61s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_304_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#2, %u63s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu3 >> biggemm_0_0_304_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#0, %u86s#1) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> gbuf2u_0_0_313_head1_neck0_data_w4_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u92s#1, %u64s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#1, %u66s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_305_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u64s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_305_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u66s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_305_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#1, %u67s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#1, %u69s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_306_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u67s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_306_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u69s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_306_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#1, %u70s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#1, %u72s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_307_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u70s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_307_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u72s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_307_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#1, %u73s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#1, %u75s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_308_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u73s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_308_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u92s#2, %u75s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu4 >> biggemm_0_0_308_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#0, %u87s#1) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> gbuf2u_0_0_313_head1_neck0_data_w5_pmu5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u93s#1, %u76s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#1, %u78s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_309_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#2, %u76s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_309_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#2, %u78s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_309_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#1, %u79s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#1, %u81s#3) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_310_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#2, %u79s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_310_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#2, %u81s#4) [gbuf2u_0_0_313_head1_neck0_write_fronting_pmu5 >> biggemm_0_0_310_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u82s#2) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u82s#3) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u83s#2) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u83s#3) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u84s#2) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u84s#3) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u85s#2) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u85s#3) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u86s#2) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u86s#3) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u87s#2) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w5_pmu5] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u87s#3) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> gbuf2u_0_0_313_head1_neck0_data_w5_pmu5] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#2, %u95s#2) [gbuf2u_0_0_313_head1_neck0_rob_pmu >> bias_transpose_add_0_0_314_bias_add_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u95s#0, %u97s#1) [bias_transpose_add_0_0_314_bias_add_pcu >> streaming_transpose_0_0_315_transpose_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u96s#1, %u95s#1) [bias_transpose_add_0_0_314_bias_add_pmu >> bias_transpose_add_0_0_314_bias_add_pcu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u97s#0, %u98s#3) [streaming_transpose_0_0_315_transpose_pmu >> gbuf2u_0_0_198_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u98s#0, %u378s#3) [gbuf2u_0_0_198_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u98s#0, %u365s#3) [gbuf2u_0_0_198_head1_neck0_data_pmu0 >> gbuf2a_0_0_389_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u98s#1, %u94s#4) [gbuf2u_0_0_198_head1_neck0_data_pmu0 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u98s#2, %u94s#5) [gbuf2u_0_0_198_head1_neck0_data_pmu0 >> gbuf2u_0_0_313_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#0, %u99s#2) [ptconvlstm__dense_layer__linear_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#1, %u355s#4) [ptconvlstm__dense_layer__linear_gemm_0_0_0_PCU >> gbuf1a_0_0_385_head1_neck0_data_w0_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u100s#0, %u99s#3) [ptconvlstm__dense_layer__linear_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u101s#0, %u101s#2) [ptconvlstm__dense_layer__linear_gemm_0_1_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u102s#0, %u101s#3) [ptconvlstm__dense_layer__linear_gemm_0_1_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u103s#0, %u103s#2) [ptconvlstm__dense_layer__linear_gemm_0_2_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u104s#0, %u103s#3) [ptconvlstm__dense_layer__linear_gemm_0_2_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u105s#0, %u105s#2) [ptconvlstm__dense_layer__linear_gemm_0_3_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u106s#0, %u105s#3) [ptconvlstm__dense_layer__linear_gemm_0_3_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u107s#0, %u107s#2) [ptconvlstm__dense_layer__linear_gemm_0_4_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u108s#0, %u107s#3) [ptconvlstm__dense_layer__linear_gemm_0_4_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u109s#0, %u109s#2) [ptconvlstm__dense_layer__linear_gemm_0_5_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#0, %u109s#3) [ptconvlstm__dense_layer__linear_gemm_0_5_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u111s#0, %u111s#2) [ptconvlstm__dense_layer__linear_gemm_0_6_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u112s#0, %u111s#3) [ptconvlstm__dense_layer__linear_gemm_0_6_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u113s#0, %u113s#2) [ptconvlstm__dense_layer__linear_gemm_0_7_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u114s#0, %u113s#3) [ptconvlstm__dense_layer__linear_gemm_0_7_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u115s#0, %u115s#2) [ptconvlstm__dense_layer__linear_gemm_0_8_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#0, %u115s#3) [ptconvlstm__dense_layer__linear_gemm_0_8_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u117s#0, %u117s#2) [ptconvlstm__dense_layer__linear_gemm_0_9_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u118s#0, %u117s#3) [ptconvlstm__dense_layer__linear_gemm_0_9_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u119s#0, %u119s#2) [ptconvlstm__dense_layer__linear_gemm_0_10_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u120s#0, %u119s#3) [ptconvlstm__dense_layer__linear_gemm_0_10_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u121s#0, %u121s#2) [ptconvlstm__dense_layer__linear_gemm_0_11_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u122s#0, %u121s#3) [ptconvlstm__dense_layer__linear_gemm_0_11_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u123s#0, %u123s#2) [ptconvlstm__dense_layer__linear_gemm_0_12_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u124s#0, %u123s#3) [ptconvlstm__dense_layer__linear_gemm_0_12_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u125s#0, %u125s#2) [ptconvlstm__dense_layer__linear_gemm_0_13_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u126s#0, %u125s#3) [ptconvlstm__dense_layer__linear_gemm_0_13_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u127s#0, %u127s#2) [ptconvlstm__dense_layer__linear_gemm_0_14_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u128s#0, %u127s#3) [ptconvlstm__dense_layer__linear_gemm_0_14_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u129s#0, %u129s#2) [ptconvlstm__dense_layer__linear_gemm_0_15_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u130s#0, %u129s#3) [ptconvlstm__dense_layer__linear_gemm_0_15_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u131s#0, %u131s#2) [ptconvlstm__dense_layer__linear_gemm_0_16_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u132s#0, %u131s#3) [ptconvlstm__dense_layer__linear_gemm_0_16_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u133s#0, %u133s#2) [ptconvlstm__dense_layer__linear_gemm_0_17_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u134s#0, %u133s#3) [ptconvlstm__dense_layer__linear_gemm_0_17_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u135s#0, %u135s#2) [ptconvlstm__dense_layer__linear_gemm_0_18_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u136s#0, %u135s#3) [ptconvlstm__dense_layer__linear_gemm_0_18_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u137s#0, %u137s#2) [ptconvlstm__dense_layer__linear_gemm_0_19_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u138s#0, %u137s#3) [ptconvlstm__dense_layer__linear_gemm_0_19_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u139s#0, %u139s#2) [ptconvlstm__dense_layer__linear_gemm_0_20_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u140s#0, %u139s#3) [ptconvlstm__dense_layer__linear_gemm_0_20_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u141s#0, %u141s#2) [ptconvlstm__dense_layer__linear_gemm_0_21_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u142s#0, %u141s#3) [ptconvlstm__dense_layer__linear_gemm_0_21_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u143s#0, %u143s#2) [ptconvlstm__dense_layer__linear_gemm_0_22_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u144s#0, %u143s#3) [ptconvlstm__dense_layer__linear_gemm_0_22_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u145s#0, %u145s#2) [ptconvlstm__dense_layer__linear_gemm_0_23_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u146s#0, %u145s#3) [ptconvlstm__dense_layer__linear_gemm_0_23_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u147s#0, %u147s#2) [ptconvlstm__dense_layer__linear_gemm_0_24_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u148s#0, %u147s#3) [ptconvlstm__dense_layer__linear_gemm_0_24_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u149s#0, %u149s#2) [ptconvlstm__dense_layer__linear_gemm_0_25_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u150s#0, %u149s#3) [ptconvlstm__dense_layer__linear_gemm_0_25_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u151s#0, %u151s#2) [ptconvlstm__dense_layer__linear_gemm_0_26_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u152s#0, %u151s#3) [ptconvlstm__dense_layer__linear_gemm_0_26_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u153s#0, %u153s#2) [ptconvlstm__dense_layer__linear_gemm_0_27_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u154s#0, %u153s#3) [ptconvlstm__dense_layer__linear_gemm_0_27_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u155s#0, %u155s#2) [ptconvlstm__dense_layer__linear_gemm_0_28_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u156s#0, %u155s#3) [ptconvlstm__dense_layer__linear_gemm_0_28_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u157s#0, %u157s#2) [ptconvlstm__dense_layer__linear_gemm_0_29_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u158s#0, %u157s#3) [ptconvlstm__dense_layer__linear_gemm_0_29_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u159s#0, %u159s#2) [ptconvlstm__dense_layer__linear_gemm_0_30_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u160s#0, %u159s#3) [ptconvlstm__dense_layer__linear_gemm_0_30_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u161s#0, %u161s#2) [ptconvlstm__dense_layer__linear_gemm_0_31_0_PCU >> ptconvlstm__dense_layer__linear_gemm_0_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u162s#0, %u161s#3) [ptconvlstm__dense_layer__linear_gemm_0_31_0_PMU >> ptconvlstm__dense_layer__linear_gemm_0_31_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u163s#0, %u163s#2) [ptconvlstm__dense_layer__linear_gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u163s#1, %u356s#4) [ptconvlstm__dense_layer__linear_gemm_1_0_0_PCU >> gbuf1a_0_0_385_head1_neck0_data_w1_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u164s#0, %u163s#3) [ptconvlstm__dense_layer__linear_gemm_1_0_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u165s#0, %u165s#2) [ptconvlstm__dense_layer__linear_gemm_1_1_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u166s#0, %u165s#3) [ptconvlstm__dense_layer__linear_gemm_1_1_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u167s#0, %u167s#2) [ptconvlstm__dense_layer__linear_gemm_1_2_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u168s#0, %u167s#3) [ptconvlstm__dense_layer__linear_gemm_1_2_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u169s#0, %u169s#2) [ptconvlstm__dense_layer__linear_gemm_1_3_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u170s#0, %u169s#3) [ptconvlstm__dense_layer__linear_gemm_1_3_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u171s#0, %u171s#2) [ptconvlstm__dense_layer__linear_gemm_1_4_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u172s#0, %u171s#3) [ptconvlstm__dense_layer__linear_gemm_1_4_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u173s#0, %u173s#2) [ptconvlstm__dense_layer__linear_gemm_1_5_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u174s#0, %u173s#3) [ptconvlstm__dense_layer__linear_gemm_1_5_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u175s#0, %u175s#2) [ptconvlstm__dense_layer__linear_gemm_1_6_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u176s#0, %u175s#3) [ptconvlstm__dense_layer__linear_gemm_1_6_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u177s#0, %u177s#2) [ptconvlstm__dense_layer__linear_gemm_1_7_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u178s#0, %u177s#3) [ptconvlstm__dense_layer__linear_gemm_1_7_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u179s#0, %u179s#2) [ptconvlstm__dense_layer__linear_gemm_1_8_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u180s#0, %u179s#3) [ptconvlstm__dense_layer__linear_gemm_1_8_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u181s#0, %u181s#2) [ptconvlstm__dense_layer__linear_gemm_1_9_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u182s#0, %u181s#3) [ptconvlstm__dense_layer__linear_gemm_1_9_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u183s#0, %u183s#2) [ptconvlstm__dense_layer__linear_gemm_1_10_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u184s#0, %u183s#3) [ptconvlstm__dense_layer__linear_gemm_1_10_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u185s#0, %u185s#2) [ptconvlstm__dense_layer__linear_gemm_1_11_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u186s#0, %u185s#3) [ptconvlstm__dense_layer__linear_gemm_1_11_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u187s#0, %u187s#2) [ptconvlstm__dense_layer__linear_gemm_1_12_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u188s#0, %u187s#3) [ptconvlstm__dense_layer__linear_gemm_1_12_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u189s#0, %u189s#2) [ptconvlstm__dense_layer__linear_gemm_1_13_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u190s#0, %u189s#3) [ptconvlstm__dense_layer__linear_gemm_1_13_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u191s#0, %u191s#2) [ptconvlstm__dense_layer__linear_gemm_1_14_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u192s#0, %u191s#3) [ptconvlstm__dense_layer__linear_gemm_1_14_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u193s#0, %u193s#2) [ptconvlstm__dense_layer__linear_gemm_1_15_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u194s#0, %u193s#3) [ptconvlstm__dense_layer__linear_gemm_1_15_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u195s#0, %u195s#2) [ptconvlstm__dense_layer__linear_gemm_1_16_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u196s#0, %u195s#3) [ptconvlstm__dense_layer__linear_gemm_1_16_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u197s#0, %u197s#2) [ptconvlstm__dense_layer__linear_gemm_1_17_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u198s#0, %u197s#3) [ptconvlstm__dense_layer__linear_gemm_1_17_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u199s#0, %u199s#2) [ptconvlstm__dense_layer__linear_gemm_1_18_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u200s#0, %u199s#3) [ptconvlstm__dense_layer__linear_gemm_1_18_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u201s#0, %u201s#2) [ptconvlstm__dense_layer__linear_gemm_1_19_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u202s#0, %u201s#3) [ptconvlstm__dense_layer__linear_gemm_1_19_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u203s#0, %u203s#2) [ptconvlstm__dense_layer__linear_gemm_1_20_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u204s#0, %u203s#3) [ptconvlstm__dense_layer__linear_gemm_1_20_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u205s#0, %u205s#2) [ptconvlstm__dense_layer__linear_gemm_1_21_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u206s#0, %u205s#3) [ptconvlstm__dense_layer__linear_gemm_1_21_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u207s#0, %u207s#2) [ptconvlstm__dense_layer__linear_gemm_1_22_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u208s#0, %u207s#3) [ptconvlstm__dense_layer__linear_gemm_1_22_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u209s#0, %u209s#2) [ptconvlstm__dense_layer__linear_gemm_1_23_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u210s#0, %u209s#3) [ptconvlstm__dense_layer__linear_gemm_1_23_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u211s#0, %u211s#2) [ptconvlstm__dense_layer__linear_gemm_1_24_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u212s#0, %u211s#3) [ptconvlstm__dense_layer__linear_gemm_1_24_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u213s#0, %u213s#2) [ptconvlstm__dense_layer__linear_gemm_1_25_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u214s#0, %u213s#3) [ptconvlstm__dense_layer__linear_gemm_1_25_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u215s#0, %u215s#2) [ptconvlstm__dense_layer__linear_gemm_1_26_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u216s#0, %u215s#3) [ptconvlstm__dense_layer__linear_gemm_1_26_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u217s#0, %u217s#2) [ptconvlstm__dense_layer__linear_gemm_1_27_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u218s#0, %u217s#3) [ptconvlstm__dense_layer__linear_gemm_1_27_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u219s#0, %u219s#2) [ptconvlstm__dense_layer__linear_gemm_1_28_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u220s#0, %u219s#3) [ptconvlstm__dense_layer__linear_gemm_1_28_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u221s#0, %u221s#2) [ptconvlstm__dense_layer__linear_gemm_1_29_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u222s#0, %u221s#3) [ptconvlstm__dense_layer__linear_gemm_1_29_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u223s#0, %u223s#2) [ptconvlstm__dense_layer__linear_gemm_1_30_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u224s#0, %u223s#3) [ptconvlstm__dense_layer__linear_gemm_1_30_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u225s#0, %u225s#2) [ptconvlstm__dense_layer__linear_gemm_1_31_0_PCU >> ptconvlstm__dense_layer__linear_gemm_1_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u226s#0, %u225s#3) [ptconvlstm__dense_layer__linear_gemm_1_31_0_PMU >> ptconvlstm__dense_layer__linear_gemm_1_31_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u227s#0, %u227s#2) [ptconvlstm__dense_layer__linear_gemm_2_0_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u227s#1, %u357s#4) [ptconvlstm__dense_layer__linear_gemm_2_0_0_PCU >> gbuf1a_0_0_385_head1_neck0_data_w2_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u228s#0, %u227s#3) [ptconvlstm__dense_layer__linear_gemm_2_0_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u229s#0, %u229s#2) [ptconvlstm__dense_layer__linear_gemm_2_1_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u230s#0, %u229s#3) [ptconvlstm__dense_layer__linear_gemm_2_1_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u231s#0, %u231s#2) [ptconvlstm__dense_layer__linear_gemm_2_2_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u232s#0, %u231s#3) [ptconvlstm__dense_layer__linear_gemm_2_2_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u233s#0, %u233s#2) [ptconvlstm__dense_layer__linear_gemm_2_3_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u234s#0, %u233s#3) [ptconvlstm__dense_layer__linear_gemm_2_3_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u235s#0, %u235s#2) [ptconvlstm__dense_layer__linear_gemm_2_4_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u236s#0, %u235s#3) [ptconvlstm__dense_layer__linear_gemm_2_4_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u237s#0, %u237s#2) [ptconvlstm__dense_layer__linear_gemm_2_5_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u238s#0, %u237s#3) [ptconvlstm__dense_layer__linear_gemm_2_5_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u239s#0, %u239s#2) [ptconvlstm__dense_layer__linear_gemm_2_6_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u240s#0, %u239s#3) [ptconvlstm__dense_layer__linear_gemm_2_6_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u241s#0, %u241s#2) [ptconvlstm__dense_layer__linear_gemm_2_7_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u242s#0, %u241s#3) [ptconvlstm__dense_layer__linear_gemm_2_7_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u243s#0, %u243s#2) [ptconvlstm__dense_layer__linear_gemm_2_8_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u244s#0, %u243s#3) [ptconvlstm__dense_layer__linear_gemm_2_8_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u245s#0, %u245s#2) [ptconvlstm__dense_layer__linear_gemm_2_9_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u246s#0, %u245s#3) [ptconvlstm__dense_layer__linear_gemm_2_9_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u247s#0, %u247s#2) [ptconvlstm__dense_layer__linear_gemm_2_10_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u248s#0, %u247s#3) [ptconvlstm__dense_layer__linear_gemm_2_10_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u249s#0, %u249s#2) [ptconvlstm__dense_layer__linear_gemm_2_11_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u250s#0, %u249s#3) [ptconvlstm__dense_layer__linear_gemm_2_11_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u251s#0, %u251s#2) [ptconvlstm__dense_layer__linear_gemm_2_12_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u252s#0, %u251s#3) [ptconvlstm__dense_layer__linear_gemm_2_12_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u253s#0, %u253s#2) [ptconvlstm__dense_layer__linear_gemm_2_13_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u254s#0, %u253s#3) [ptconvlstm__dense_layer__linear_gemm_2_13_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u255s#0, %u255s#2) [ptconvlstm__dense_layer__linear_gemm_2_14_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u256s#0, %u255s#3) [ptconvlstm__dense_layer__linear_gemm_2_14_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u257s#0, %u257s#2) [ptconvlstm__dense_layer__linear_gemm_2_15_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u258s#0, %u257s#3) [ptconvlstm__dense_layer__linear_gemm_2_15_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u259s#0, %u259s#2) [ptconvlstm__dense_layer__linear_gemm_2_16_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u260s#0, %u259s#3) [ptconvlstm__dense_layer__linear_gemm_2_16_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u261s#0, %u261s#2) [ptconvlstm__dense_layer__linear_gemm_2_17_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u262s#0, %u261s#3) [ptconvlstm__dense_layer__linear_gemm_2_17_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u263s#0, %u263s#2) [ptconvlstm__dense_layer__linear_gemm_2_18_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u264s#0, %u263s#3) [ptconvlstm__dense_layer__linear_gemm_2_18_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u265s#0, %u265s#2) [ptconvlstm__dense_layer__linear_gemm_2_19_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u266s#0, %u265s#3) [ptconvlstm__dense_layer__linear_gemm_2_19_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u267s#0, %u267s#2) [ptconvlstm__dense_layer__linear_gemm_2_20_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u268s#0, %u267s#3) [ptconvlstm__dense_layer__linear_gemm_2_20_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u269s#0, %u269s#2) [ptconvlstm__dense_layer__linear_gemm_2_21_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u270s#0, %u269s#3) [ptconvlstm__dense_layer__linear_gemm_2_21_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u271s#0, %u271s#2) [ptconvlstm__dense_layer__linear_gemm_2_22_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u272s#0, %u271s#3) [ptconvlstm__dense_layer__linear_gemm_2_22_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u273s#0, %u273s#2) [ptconvlstm__dense_layer__linear_gemm_2_23_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u274s#0, %u273s#3) [ptconvlstm__dense_layer__linear_gemm_2_23_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u275s#0, %u275s#2) [ptconvlstm__dense_layer__linear_gemm_2_24_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u276s#0, %u275s#3) [ptconvlstm__dense_layer__linear_gemm_2_24_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u277s#0, %u277s#2) [ptconvlstm__dense_layer__linear_gemm_2_25_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u278s#0, %u277s#3) [ptconvlstm__dense_layer__linear_gemm_2_25_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u279s#0, %u279s#2) [ptconvlstm__dense_layer__linear_gemm_2_26_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#0, %u279s#3) [ptconvlstm__dense_layer__linear_gemm_2_26_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u281s#0, %u281s#2) [ptconvlstm__dense_layer__linear_gemm_2_27_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u282s#0, %u281s#3) [ptconvlstm__dense_layer__linear_gemm_2_27_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u283s#0, %u283s#2) [ptconvlstm__dense_layer__linear_gemm_2_28_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u284s#0, %u283s#3) [ptconvlstm__dense_layer__linear_gemm_2_28_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u285s#0, %u285s#2) [ptconvlstm__dense_layer__linear_gemm_2_29_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u286s#0, %u285s#3) [ptconvlstm__dense_layer__linear_gemm_2_29_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u287s#0, %u287s#2) [ptconvlstm__dense_layer__linear_gemm_2_30_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u288s#0, %u287s#3) [ptconvlstm__dense_layer__linear_gemm_2_30_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u289s#0, %u289s#2) [ptconvlstm__dense_layer__linear_gemm_2_31_0_PCU >> ptconvlstm__dense_layer__linear_gemm_2_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u290s#0, %u289s#3) [ptconvlstm__dense_layer__linear_gemm_2_31_0_PMU >> ptconvlstm__dense_layer__linear_gemm_2_31_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u291s#0, %u291s#2) [ptconvlstm__dense_layer__linear_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u291s#1, %u358s#4) [ptconvlstm__dense_layer__linear_gemm_3_0_0_PCU >> gbuf1a_0_0_385_head1_neck0_data_w3_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u292s#0, %u291s#3) [ptconvlstm__dense_layer__linear_gemm_3_0_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u293s#0, %u293s#2) [ptconvlstm__dense_layer__linear_gemm_3_1_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u294s#0, %u293s#3) [ptconvlstm__dense_layer__linear_gemm_3_1_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u295s#0, %u295s#2) [ptconvlstm__dense_layer__linear_gemm_3_2_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u296s#0, %u295s#3) [ptconvlstm__dense_layer__linear_gemm_3_2_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u297s#0, %u297s#2) [ptconvlstm__dense_layer__linear_gemm_3_3_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u298s#0, %u297s#3) [ptconvlstm__dense_layer__linear_gemm_3_3_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u299s#0, %u299s#2) [ptconvlstm__dense_layer__linear_gemm_3_4_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u300s#0, %u299s#3) [ptconvlstm__dense_layer__linear_gemm_3_4_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u301s#0, %u301s#2) [ptconvlstm__dense_layer__linear_gemm_3_5_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u302s#0, %u301s#3) [ptconvlstm__dense_layer__linear_gemm_3_5_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u303s#0, %u303s#2) [ptconvlstm__dense_layer__linear_gemm_3_6_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u304s#0, %u303s#3) [ptconvlstm__dense_layer__linear_gemm_3_6_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u305s#0, %u305s#2) [ptconvlstm__dense_layer__linear_gemm_3_7_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u306s#0, %u305s#3) [ptconvlstm__dense_layer__linear_gemm_3_7_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u307s#0, %u307s#2) [ptconvlstm__dense_layer__linear_gemm_3_8_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u308s#0, %u307s#3) [ptconvlstm__dense_layer__linear_gemm_3_8_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_8_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u309s#0, %u309s#2) [ptconvlstm__dense_layer__linear_gemm_3_9_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u310s#0, %u309s#3) [ptconvlstm__dense_layer__linear_gemm_3_9_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_9_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u311s#0, %u311s#2) [ptconvlstm__dense_layer__linear_gemm_3_10_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u312s#0, %u311s#3) [ptconvlstm__dense_layer__linear_gemm_3_10_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_10_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u313s#0, %u313s#2) [ptconvlstm__dense_layer__linear_gemm_3_11_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u314s#0, %u313s#3) [ptconvlstm__dense_layer__linear_gemm_3_11_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_11_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u315s#0, %u315s#2) [ptconvlstm__dense_layer__linear_gemm_3_12_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u316s#0, %u315s#3) [ptconvlstm__dense_layer__linear_gemm_3_12_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_12_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u317s#0, %u317s#2) [ptconvlstm__dense_layer__linear_gemm_3_13_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u318s#0, %u317s#3) [ptconvlstm__dense_layer__linear_gemm_3_13_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_13_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u319s#0, %u319s#2) [ptconvlstm__dense_layer__linear_gemm_3_14_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u320s#0, %u319s#3) [ptconvlstm__dense_layer__linear_gemm_3_14_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_14_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u321s#0, %u321s#2) [ptconvlstm__dense_layer__linear_gemm_3_15_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u322s#0, %u321s#3) [ptconvlstm__dense_layer__linear_gemm_3_15_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_15_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u323s#0, %u323s#2) [ptconvlstm__dense_layer__linear_gemm_3_16_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u324s#0, %u323s#3) [ptconvlstm__dense_layer__linear_gemm_3_16_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_16_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u325s#0, %u325s#2) [ptconvlstm__dense_layer__linear_gemm_3_17_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u326s#0, %u325s#3) [ptconvlstm__dense_layer__linear_gemm_3_17_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_17_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u327s#0, %u327s#2) [ptconvlstm__dense_layer__linear_gemm_3_18_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#0, %u327s#3) [ptconvlstm__dense_layer__linear_gemm_3_18_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_18_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u329s#0, %u329s#2) [ptconvlstm__dense_layer__linear_gemm_3_19_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u330s#0, %u329s#3) [ptconvlstm__dense_layer__linear_gemm_3_19_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_19_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u331s#0, %u331s#2) [ptconvlstm__dense_layer__linear_gemm_3_20_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u332s#0, %u331s#3) [ptconvlstm__dense_layer__linear_gemm_3_20_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_20_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u333s#0, %u333s#2) [ptconvlstm__dense_layer__linear_gemm_3_21_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u334s#0, %u333s#3) [ptconvlstm__dense_layer__linear_gemm_3_21_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_21_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u335s#0, %u335s#2) [ptconvlstm__dense_layer__linear_gemm_3_22_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u336s#0, %u335s#3) [ptconvlstm__dense_layer__linear_gemm_3_22_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_22_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u337s#0, %u337s#2) [ptconvlstm__dense_layer__linear_gemm_3_23_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u338s#0, %u337s#3) [ptconvlstm__dense_layer__linear_gemm_3_23_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_23_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u339s#0, %u339s#2) [ptconvlstm__dense_layer__linear_gemm_3_24_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u340s#0, %u339s#3) [ptconvlstm__dense_layer__linear_gemm_3_24_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_24_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u341s#0, %u341s#2) [ptconvlstm__dense_layer__linear_gemm_3_25_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u342s#0, %u341s#3) [ptconvlstm__dense_layer__linear_gemm_3_25_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_25_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u343s#0, %u343s#2) [ptconvlstm__dense_layer__linear_gemm_3_26_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u344s#0, %u343s#3) [ptconvlstm__dense_layer__linear_gemm_3_26_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_26_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u345s#0, %u345s#2) [ptconvlstm__dense_layer__linear_gemm_3_27_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u346s#0, %u345s#3) [ptconvlstm__dense_layer__linear_gemm_3_27_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_27_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u347s#0, %u347s#2) [ptconvlstm__dense_layer__linear_gemm_3_28_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u348s#0, %u347s#3) [ptconvlstm__dense_layer__linear_gemm_3_28_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_28_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u349s#0, %u349s#2) [ptconvlstm__dense_layer__linear_gemm_3_29_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u350s#0, %u349s#3) [ptconvlstm__dense_layer__linear_gemm_3_29_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_29_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u351s#0, %u351s#2) [ptconvlstm__dense_layer__linear_gemm_3_30_0_PCU >> ptconvlstm__dense_layer__linear_gemm_3_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u352s#0, %u351s#3) [ptconvlstm__dense_layer__linear_gemm_3_30_0_PMU >> ptconvlstm__dense_layer__linear_gemm_3_30_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u353s#0, %u353s#2) [ptconvlstm__dense_layer__linear_gemm_4_0_0_PCU >> ptconvlstm__dense_layer__linear_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u353s#1, %u359s#3) [ptconvlstm__dense_layer__linear_gemm_4_0_0_PCU >> gbuf1a_0_0_385_head1_neck0_data_w4_pmu4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u354s#0, %u353s#3) [ptconvlstm__dense_layer__linear_gemm_4_0_0_PMU >> ptconvlstm__dense_layer__linear_gemm_4_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u355s#0, %u360s#3) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> gbuf1a_0_0_385_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u355s#1, %u99s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u101s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u103s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u105s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u107s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u109s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u111s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u113s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u115s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u117s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u119s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u121s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u123s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u125s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u127s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u129s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u131s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u133s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u135s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u137s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u139s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u141s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u143s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u145s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u147s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u149s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u151s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u153s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u155s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u157s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u159s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u355s#1, %u161s#5) [gbuf1a_0_0_385_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_gemm_0_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#0, %u360s#3) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> gbuf1a_0_0_385_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u356s#1, %u163s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u165s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u167s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u169s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u171s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u173s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u175s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u177s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u179s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u181s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u183s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u185s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u187s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u189s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u191s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u193s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u195s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u197s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u199s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u201s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u203s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u205s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u207s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u209s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u211s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u213s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u215s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u217s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u219s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u221s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u223s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u225s#5) [gbuf1a_0_0_385_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_gemm_1_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#0, %u360s#3) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> gbuf1a_0_0_385_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u357s#1, %u227s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u229s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u231s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u233s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u235s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u237s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u239s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u241s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u243s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u245s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u247s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u249s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u251s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u253s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u255s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u257s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u259s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u261s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u263s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u265s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u267s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u269s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u271s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u273s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u275s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u277s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u279s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u281s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u283s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u285s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u287s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u357s#1, %u289s#5) [gbuf1a_0_0_385_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_gemm_2_31_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#0, %u360s#3) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> gbuf1a_0_0_385_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u358s#1, %u291s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u293s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u295s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u297s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u299s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u301s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u303s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u305s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u307s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_8_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u309s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_9_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u311s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_10_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u313s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_11_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u315s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_12_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u317s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_13_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u319s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_14_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u321s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_15_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u323s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_16_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u325s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_17_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u327s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_18_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u329s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_19_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u331s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_20_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u333s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_21_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u335s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_22_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u337s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_23_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u339s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_24_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u341s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_25_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u343s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_26_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u345s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_27_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u347s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_28_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u349s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_29_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u351s#5) [gbuf1a_0_0_385_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_gemm_3_30_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u359s#0, %u360s#3) [gbuf1a_0_0_385_head1_neck0_data_w4_pmu4 >> gbuf1a_0_0_385_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u360s#0, %u355s#2) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#1, %u355s#3) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#0, %u356s#2) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#1, %u356s#3) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#0, %u357s#2) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#1, %u357s#3) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#0, %u358s#2) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#1, %u358s#3) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#0, %u359s#1) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#1, %u359s#2) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> gbuf1a_0_0_385_head1_neck0_data_w4_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#2, %u362s#4) [gbuf1a_0_0_385_head1_neck0_rob_pmu >> bias_add_0_0_382_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u361s#0, %u362s#3) [bias_add_0_0_382_wbufpmu0 >> bias_add_0_0_382_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u362s#0, %u362s#2) [bias_add_0_0_382_add0_output >> bias_add_0_0_382_add0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u362s#1, %u363s#3) [bias_add_0_0_382_add0_output >> gbuf2u_0_0_202_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u363s#0, %u364s#3) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2a_0_0_430_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u363s#1, %u379s#2) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra0_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u380s#2) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra1_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u381s#2) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra2_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u382s#2) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra3_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#2, %u379s#3) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra0_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#2, %u380s#3) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra1_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#2, %u381s#3) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra2_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#2, %u382s#3) [gbuf2u_0_0_202_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra3_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#0, %u366s#3) [gbuf2a_0_0_430_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_431_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u364s#1, %u367s#3) [gbuf2a_0_0_430_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_391_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u364s#2, %u363s#4) [gbuf2a_0_0_430_head0_head1_neck0_data_pmu0 >> gbuf2u_0_0_202_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#0, %u98s#6) [gbuf2a_0_0_389_head1_neck0_data_pmu0 >> gbuf2u_0_0_198_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#1, %u98s#7) [gbuf2a_0_0_389_head1_neck0_data_pmu0 >> gbuf2u_0_0_198_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u365s#2, %u407s#2) [gbuf2a_0_0_389_head1_neck0_data_pmu0 >> s0_backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u366s#1, %u368s#3) [gbuf2a_0_0_431_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_422_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u366s#2, %u364s#4) [gbuf2a_0_0_431_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_430_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u366s#0, %u417s) [gbuf2a_0_0_431_head0_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u367s#1, %u364s#5) [gbuf2a_0_0_391_head1_neck0_data_pmu0 >> gbuf2a_0_0_430_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#2, %u364s#6) [gbuf2a_0_0_391_head1_neck0_data_pmu0 >> gbuf2a_0_0_430_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#0, %u418s) [gbuf2a_0_0_391_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u368s#0, %u372s#3) [gbuf2a_0_0_422_head1_neck0_data_pmu0 >> sub_0_0_322_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u368s#1, %u366s#4) [gbuf2a_0_0_422_head1_neck0_data_pmu0 >> gbuf2a_0_0_431_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u368s#2, %u366s#5) [gbuf2a_0_0_422_head1_neck0_data_pmu0 >> gbuf2a_0_0_431_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u369s#0, %u370s#2) [gbuf1a_0_0_421_head1_neck0_data_pmu0 >> realign_0_0_409_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u369s#1, %u406s#2) [gbuf1a_0_0_421_head1_neck0_data_pmu0 >> s0_fronting_pmu_load_group_25] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u370s#0, %u371s#1) [realign_0_0_409_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_392_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u370s#1, %u369s#2) [realign_0_0_409_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_421_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u371s#0, %u372s#4) [gbuf1a_0_0_392_head1_neck0_data_pmu0 >> sub_0_0_322_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u372s#0, %u372s#2) [sub_0_0_322_output >> sub_0_0_322_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u372s#1, %u373s#2) [sub_0_0_322_output >> gbuf1a_0_0_432_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u373s#0, %u374s#3) [gbuf1a_0_0_432_head0_head1_neck0_data_pmu0 >> mul_0_0_323_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u373s#1, %u374s#4) [gbuf1a_0_0_432_head0_head1_neck0_data_pmu0 >> mul_0_0_323_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u374s#0, %u374s#2) [mul_0_0_323_output >> mul_0_0_323_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u374s#1, %u375s#7) [mul_0_0_323_output >> mean_unalign_0_0_324_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u375s#0, %u375s#4) [mean_unalign_0_0_324_output >> mean_unalign_0_0_324_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u375s#1, %u375s#5) [mean_unalign_0_0_324_output >> mean_unalign_0_0_324_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u375s#2, %u375s#6) [mean_unalign_0_0_324_output >> mean_unalign_0_0_324_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u375s#3, %u376s#1) [mean_unalign_0_0_324_output >> gbuf1a_0_0_393_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u376s#0, %u419s) [gbuf1a_0_0_393_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u377s#0, %u4s#2) [gbuf2u_0_0_196_head1_neck0_data_pmu0 >> sbuf2u_0_0_287_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u377s#1, %u403s#4) [gbuf2u_0_0_196_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_194_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u377s#2, %u403s#5) [gbuf2u_0_0_196_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_194_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u378s#0, %u379s#1) [gbuf2u_0_0_200_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra0_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u378s#0, %u380s#1) [gbuf2u_0_0_200_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra1_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u378s#0, %u381s#1) [gbuf2u_0_0_200_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra2_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u378s#0, %u382s#1) [gbuf2u_0_0_200_head1_neck0_data_pmu0 >> gbuf2u_0_0_200_head1_neck0_hydra3_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u378s#1, %u98s#4) [gbuf2u_0_0_200_head1_neck0_data_pmu0 >> gbuf2u_0_0_198_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u378s#2, %u98s#5) [gbuf2u_0_0_200_head1_neck0_data_pmu0 >> gbuf2u_0_0_198_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u379s#0, %u99s#4) [gbuf2u_0_0_200_head1_neck0_hydra0_pmu >> ptconvlstm__dense_layer__linear_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u380s#0, %u163s#4) [gbuf2u_0_0_200_head1_neck0_hydra1_pmu >> ptconvlstm__dense_layer__linear_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u381s#0, %u227s#4) [gbuf2u_0_0_200_head1_neck0_hydra2_pmu >> ptconvlstm__dense_layer__linear_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u382s#0, %u291s#4) [gbuf2u_0_0_200_head1_neck0_hydra3_pmu >> ptconvlstm__dense_layer__linear_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u383s#1, %u377s#4) [lbuf1a_0_0_388_head1_neck0_data_pmu0 >> gbuf2u_0_0_196_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u384s#0, %u400s#3) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u400s#0, %u384s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u385s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_417792_max_835584] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u386s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_835584_max_1253376] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u387s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1253376_max_1671168] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u388s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1671168_max_2088960] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u389s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2088960_max_2506752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u390s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2506752_max_2924544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u391s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2924544_max_3342336] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u392s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3342336_max_3760128] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u393s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3760128_max_4177920] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u394s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4177920_max_4595712] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u395s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4595712_max_5013504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u396s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5013504_max_5431296] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u397s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5431296_max_5849088] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u398s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5849088_max_6266880] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#0, %u399s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_6266880_max_6684672] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u384s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_0_max_417792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u385s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_417792_max_835584] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u386s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_835584_max_1253376] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u387s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1253376_max_1671168] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u388s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_1671168_max_2088960] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u389s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2088960_max_2506752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u390s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2506752_max_2924544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u391s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_2924544_max_3342336] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u392s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3342336_max_3760128] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u393s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_3760128_max_4177920] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u394s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4177920_max_4595712] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u395s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_4595712_max_5013504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u396s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5013504_max_5431296] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u397s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5431296_max_5849088] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u398s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_5849088_max_6266880] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#1, %u399s#2) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_D_0_0_0_0_0_min_6266880_max_6684672] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u400s#2, %u2s#1) [LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_ROB_R_0_0_0_0 >> vector_transpose_0_0_405_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u401s#1, %u403s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_189_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_194_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u402s#1, %u401s#2) [LogregTorchSamba_partition_0_0__tbuf1u_0_0_190_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_189_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u403s#0, %u401s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_194_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_189_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u403s#1, %u401s#4) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_194_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_189_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u403s#2, %u377s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_194_D_0_0 >> gbuf2u_0_0_196_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u404s#1, %u100s#1) [s0_fronting_pmu_load_group_4 >> ptconvlstm__dense_layer__linear_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u405s#1, %u361s#1) [s0_fronting_pmu_load_group_12 >> bias_add_0_0_382_wbufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u406s#1, %u369s#3) [s0_fronting_pmu_load_group_25 >> gbuf1a_0_0_421_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u407s#1, %u365s#4) [s0_backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266 >> gbuf2a_0_0_389_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u407s#0, %u416s) [s0_backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266 >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u408s#0, %u0s#0) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> gbuf1a_0_0_387_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u408s#1, %u0s#2) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> gbuf1a_0_0_387_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u409s#0, %u402s#0) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> LogregTorchSamba_partition_0_0__tbuf1u_0_0_190_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u409s#1, %u402s#2) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> LogregTorchSamba_partition_0_0__tbuf1u_0_0_190_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u410s#0, %u96s#0) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> bias_transpose_add_0_0_314_bias_add_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u410s#1, %u96s#2) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> bias_transpose_add_0_0_314_bias_add_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u411s#0, %u404s#0) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u411s#1, %u404s#2) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_4] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u412s#0, %u405s#0) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u412s#1, %u405s#2) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_12] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u413s#0, %u401s#0) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_189_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u413s#1, %u401s#5) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_189_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u414s#0, %u383s#0) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> lbuf1a_0_0_388_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u414s#1, %u383s#2) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> lbuf1a_0_0_388_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u415s#0, %u406s#0) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_25] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u415s#1, %u406s#3) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_25] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_0_0_387()  {
          "plasma.BindUnit"(%u0r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @realign_0_0_404()  {
          plasma.SuperNode @realign_0_0_404.gbuffer()  {
            "plasma.BindUnit"(%u1r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @vector_transpose_0_0_405()  {
          plasma.SuperNode @vector_transpose_0_0_405.buffer()  {
            "plasma.BindUnit"(%u2r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2a_0_0_427()  {
          "plasma.BindUnit"(%u3r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sbuf2u_0_0_287()  {
          "plasma.BindUnit"(%u4r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @split_kernel_gbuf_0_0_288()  {
          "plasma.BindUnit"(%u5r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u6r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u7r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u8r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u9r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u10r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u11r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u12r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u13r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u14r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u15r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @biggemm_0_0_289()  {
          "plasma.BindUnit"(%u16r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u17r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u18r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_289_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_290()  {
          "plasma.BindUnit"(%u19r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u20r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u21r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_290_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_291()  {
          "plasma.BindUnit"(%u22r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u23r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u24r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_291_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_292()  {
          "plasma.BindUnit"(%u25r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u26r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u27r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_292_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_293()  {
          "plasma.BindUnit"(%u28r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u29r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u30r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_293_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_294()  {
          "plasma.BindUnit"(%u31r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u32r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u33r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_294_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_295()  {
          "plasma.BindUnit"(%u34r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u35r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u36r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_295_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_296()  {
          "plasma.BindUnit"(%u37r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u38r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u39r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_296_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_297()  {
          "plasma.BindUnit"(%u40r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u41r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u42r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_297_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_298()  {
          "plasma.BindUnit"(%u43r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u44r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u45r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_298_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_299()  {
          "plasma.BindUnit"(%u46r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u47r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u48r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_299_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_300()  {
          "plasma.BindUnit"(%u49r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u50r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u51r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_300_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_301()  {
          "plasma.BindUnit"(%u52r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u53r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u54r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_301_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_302()  {
          "plasma.BindUnit"(%u55r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u56r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u57r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_302_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_303()  {
          "plasma.BindUnit"(%u58r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u59r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u60r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_303_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_304()  {
          "plasma.BindUnit"(%u61r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u62r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u63r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_304_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_305()  {
          "plasma.BindUnit"(%u64r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u65r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u66r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_305_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_306()  {
          "plasma.BindUnit"(%u67r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u68r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u69r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_306_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_307()  {
          "plasma.BindUnit"(%u70r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u71r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u72r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_307_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_308()  {
          "plasma.BindUnit"(%u73r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u74r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u75r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_308_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_309()  {
          "plasma.BindUnit"(%u76r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u77r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u78r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_309_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_0_0_310()  {
          "plasma.BindUnit"(%u79r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u80r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u81r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_0_0_310_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf2u_0_0_313()  {
          "plasma.BindUnit"(%u82r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u83r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u84r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u85r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u86r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u87r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u88r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u89r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u90r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u91r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u92r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u93r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u94r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @bias_transpose_add_0_0_314()  {
          "plasma.BindUnit"(%u95r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u96r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @bias_transpose_add_0_0_314.bias_wbuf() {}
        }
        plasma.SuperNode @streaming_transpose_0_0_315()  {
          "plasma.BindUnit"(%u97r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_0_0_198()  {
          "plasma.BindUnit"(%u98r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear()  {
          "plasma.BindUnit"(%u99r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u100r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u101r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u102r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u103r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u104r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u105r) : (!plasma.Unitref) -> ()
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
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_rowcolpargemm_4()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_rowcolpargemm_3()  {
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
          plasma.SuperNode @ptconvlstm__dense_layer__linear_rowcolpargemm_2()  {
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
          plasma.SuperNode @ptconvlstm__dense_layer__linear_rowcolpargemm_1()  {
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
          plasma.SuperNode @ptconvlstm__dense_layer__linear_rowcolpargemm_0()  {
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
        plasma.SuperNode @gbuf1a_0_0_385()  {
          "plasma.BindUnit"(%u355r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u356r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u357r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u358r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u359r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u360r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @bias_add_0_0_382()  {
          plasma.SuperNode @bias_add_0_0_382.add0()  {
            "plasma.BindUnit"(%u362r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @bias_add_0_0_382.wbuf()  {
            "plasma.BindUnit"(%u361r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_0_0_202()  {
          "plasma.BindUnit"(%u363r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_430()  {
          "plasma.BindUnit"(%u364r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_389()  {
          "plasma.BindUnit"(%u365r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_431()  {
          "plasma.BindUnit"(%u366r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_391()  {
          "plasma.BindUnit"(%u367r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_422()  {
          "plasma.BindUnit"(%u368r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_421()  {
          "plasma.BindUnit"(%u369r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @realign_0_0_409()  {
          plasma.SuperNode @realign_0_0_409.gbuffer()  {
            "plasma.BindUnit"(%u370r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_0_0_392()  {
          "plasma.BindUnit"(%u371r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sub_0_0_322()  {
          "plasma.BindUnit"(%u372r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_432()  {
          "plasma.BindUnit"(%u373r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mul_0_0_323()  {
          "plasma.BindUnit"(%u374r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mean_unalign_0_0_324()  {
          "plasma.BindUnit"(%u375r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_393()  {
          "plasma.BindUnit"(%u376r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_0_0_196()  {
          "plasma.BindUnit"(%u377r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_0_0_200()  {
          "plasma.BindUnit"(%u378r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u379r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u380r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u381r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u382r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @lbuf1a_0_0_388()  {
          "plasma.BindUnit"(%u383r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__conv_layer__conv2d_weight_permute()  {
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u384r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u385r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u386r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u387r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u388r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u389r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u390r) : (!plasma.Unitref) -> ()
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
          }
        }
        plasma.SuperNode @tbuf2u_0_0_189()  {
          "plasma.BindUnit"(%u401r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1u_0_0_190()  {
          "plasma.BindUnit"(%u402r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_0_0_194()  {
          "plasma.BindUnit"(%u403r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_4()  {
          "plasma.BindUnit"(%u404r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_12()  {
          "plasma.BindUnit"(%u405r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_25()  {
          "plasma.BindUnit"(%u406r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266()  {
          "plasma.BindUnit"(%u407r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_1:ptconvlstm__conv_layer__weight"()  {
          "plasma.BindUnit"(%u408r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_2:inp_window_slice_1"()  {
          "plasma.BindUnit"(%u409r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_3:ptconvlstm__conv_layer__bias"()  {
          "plasma.BindUnit"(%u410r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_4:group_4"()  {
          "plasma.BindUnit"(%u411r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_5:group_12"()  {
          "plasma.BindUnit"(%u412r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_6:inp_window"()  {
          "plasma.BindUnit"(%u413r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_7:ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list"()  {
          "plasma.BindUnit"(%u414r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_8:out_window"()  {
          "plasma.BindUnit"(%u415r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_1:ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight"()  {
          "plasma.BindUnit"(%u416r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_2:ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub"()  {
          "plasma.BindUnit"(%u417r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_3:ptconvlstm__view__outputs__0"()  {
          "plasma.BindUnit"(%u418r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_4:ptconvlstm__criterion__mseloss__outputs__0"()  {
          "plasma.BindUnit"(%u419r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s1() attributes {kControlBlockId = 1 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>, %arg10: !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, %arg11: !plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>, %arg12: !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>):  // no predecessors
      %u420r, %u420s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_218_head1_neck0_data_pmu0", kUnitId = 420 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u421r, %u421s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_221_head1_neck0_data_pmu0", kUnitId = 421 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u422r, %u422s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_224_head1_neck0_data_pmu0", kUnitId = 422 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u423r, %u423s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__criterion__mseloss_bwd_sub_output", kUnitId = 423 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u424r, %u424s:4 = plasma.unit.Pcu() attributes {kName = "scale_1_0_331_scaling_pcu", kUnitId = 424 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u425r, %u425s:3 = plasma.unit.Pmu() attributes {kName = "scale_1_0_332_input_B_pmu", kUnitId = 425 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.ScalarSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u426r, %u426s:5 = plasma.unit.Pcu() attributes {kName = "scale_1_0_332_scaling_pcu", kUnitId = 426 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ScalarSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink, !plasma.VectorSink)
      %u427r, %u427s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_229_head1_neck0_data_pmu0", kUnitId = 427 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u428r, %u428s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output", kUnitId = 428 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u429r, %u429s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_236_head1_neck0_data_pmu0", kUnitId = 429 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u430r, %u430s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_394_head1_neck0_data_pmu0", kUnitId = 430 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u431r, %u431s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_394_head1_neck0_data_pmu1", kUnitId = 431 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u432r, %u432s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_394_head1_neck0_data_pmu2", kUnitId = 432 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u433r, %u433s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_394_head1_neck0_data_pmu3", kUnitId = 433 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u434r, %u434s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_394_head1_neck0_rob_pmu", kUnitId = 434 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u435r, %u435s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU", kUnitId = 435 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u436r, %u436s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU", kUnitId = 436 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u437r, %u437s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU", kUnitId = 437 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u438r, %u438s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU", kUnitId = 438 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u439r, %u439s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU", kUnitId = 439 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u440r, %u440s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PMU", kUnitId = 440 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u441r, %u441s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU", kUnitId = 441 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u442r, %u442s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PMU", kUnitId = 442 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u443r, %u443s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU", kUnitId = 443 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u444r, %u444s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PMU", kUnitId = 444 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u445r, %u445s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU", kUnitId = 445 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u446r, %u446s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PMU", kUnitId = 446 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u447r, %u447s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU", kUnitId = 447 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u448r, %u448s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PMU", kUnitId = 448 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u449r, %u449s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU", kUnitId = 449 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u450r, %u450s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PMU", kUnitId = 450 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u451r, %u451s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_239_head1_neck0_reformat_pmu0", kUnitId = 451 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u452r, %u452s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_239_head1_neck0_data_pmu0", kUnitId = 452 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u453r, %u453s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_240_head0_head1_neck0_data_pmu0", kUnitId = 453 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u454r, %u454s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU", kUnitId = 454 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u455r, %u455s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU", kUnitId = 455 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u456r, %u456s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0", kUnitId = 456 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u457r, %u457s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU", kUnitId = 457 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u458r, %u458s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PMU", kUnitId = 458 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u459r, %u459s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1", kUnitId = 459 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u460r, %u460s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU", kUnitId = 460 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u461r, %u461s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PMU", kUnitId = 461 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u462r, %u462s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2", kUnitId = 462 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u463r, %u463s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU", kUnitId = 463 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u464r, %u464s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PMU", kUnitId = 464 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u465r, %u465s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3", kUnitId = 465 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u466r, %u466s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU", kUnitId = 466 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u467r, %u467s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PMU", kUnitId = 467 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u468r, %u468s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4", kUnitId = 468 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u469r, %u469s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU", kUnitId = 469 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u470r, %u470s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PMU", kUnitId = 470 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u471r, %u471s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5", kUnitId = 471 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u472r, %u472s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU", kUnitId = 472 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u473r, %u473s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PMU", kUnitId = 473 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u474r, %u474s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6", kUnitId = 474 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u475r, %u475s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU", kUnitId = 475 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u476r, %u476s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PMU", kUnitId = 476 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u477r, %u477s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7", kUnitId = 477 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u478r, %u478s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU", kUnitId = 478 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u479r, %u479s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PMU", kUnitId = 479 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u480r, %u480s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_8", kUnitId = 480 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u481r, %u481s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU", kUnitId = 481 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u482r, %u482s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PMU", kUnitId = 482 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u483r, %u483s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_9", kUnitId = 483 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u484r, %u484s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU", kUnitId = 484 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u485r, %u485s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PMU", kUnitId = 485 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u486r, %u486s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_10", kUnitId = 486 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u487r, %u487s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU", kUnitId = 487 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u488r, %u488s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PMU", kUnitId = 488 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u489r, %u489s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_11", kUnitId = 489 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u490r, %u490s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU", kUnitId = 490 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u491r, %u491s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PMU", kUnitId = 491 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u492r, %u492s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_12", kUnitId = 492 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u493r, %u493s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU", kUnitId = 493 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u494r, %u494s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PMU", kUnitId = 494 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u495r, %u495s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_13", kUnitId = 495 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u496r, %u496s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU", kUnitId = 496 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u497r, %u497s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PMU", kUnitId = 497 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u498r, %u498s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_14", kUnitId = 498 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u499r, %u499s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU", kUnitId = 499 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u500r, %u500s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PMU", kUnitId = 500 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u501r, %u501s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_15", kUnitId = 501 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u502r, %u502s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU", kUnitId = 502 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u503r, %u503s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PMU", kUnitId = 503 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u504r, %u504s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_16", kUnitId = 504 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u505r, %u505s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU", kUnitId = 505 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u506r, %u506s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PMU", kUnitId = 506 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u507r, %u507s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_17", kUnitId = 507 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u508r, %u508s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU", kUnitId = 508 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u509r, %u509s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PMU", kUnitId = 509 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u510r, %u510s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_18", kUnitId = 510 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u511r, %u511s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU", kUnitId = 511 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u512r, %u512s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PMU", kUnitId = 512 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u513r, %u513s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_19", kUnitId = 513 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u514r, %u514s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU", kUnitId = 514 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u515r, %u515s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PMU", kUnitId = 515 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u516r, %u516s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_20", kUnitId = 516 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u517r, %u517s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU", kUnitId = 517 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u518r, %u518s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PMU", kUnitId = 518 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u519r, %u519s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_21", kUnitId = 519 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u520r, %u520s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU", kUnitId = 520 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u521r, %u521s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PMU", kUnitId = 521 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u522r, %u522s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_22", kUnitId = 522 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u523r, %u523s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU", kUnitId = 523 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u524r, %u524s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PMU", kUnitId = 524 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u525r, %u525s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_23", kUnitId = 525 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u526r, %u526s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU", kUnitId = 526 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u527r, %u527s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PMU", kUnitId = 527 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u528r, %u528s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_24", kUnitId = 528 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u529r, %u529s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU", kUnitId = 529 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u530r, %u530s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PMU", kUnitId = 530 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u531r, %u531s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_25", kUnitId = 531 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u532r, %u532s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU", kUnitId = 532 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u533r, %u533s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PMU", kUnitId = 533 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u534r, %u534s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_26", kUnitId = 534 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u535r, %u535s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU", kUnitId = 535 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u536r, %u536s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PMU", kUnitId = 536 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u537r, %u537s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_27", kUnitId = 537 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u538r, %u538s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU", kUnitId = 538 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u539r, %u539s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PMU", kUnitId = 539 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u540r, %u540s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_28", kUnitId = 540 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u541r, %u541s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU", kUnitId = 541 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u542r, %u542s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PMU", kUnitId = 542 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u543r, %u543s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_29", kUnitId = 543 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u544r, %u544s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU", kUnitId = 544 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u545r, %u545s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PMU", kUnitId = 545 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u546r, %u546s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_30", kUnitId = 546 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u547r, %u547s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU", kUnitId = 547 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink, %arg17: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u548r, %u548s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PMU", kUnitId = 548 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u549r, %u549s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_31", kUnitId = 549 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u550r, %u550s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 550 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u551r, %u551s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 551 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u552r, %u552s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_242_head1_neck0_data_pmu0", kUnitId = 552 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u553r, %u553s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_433_head0_head1_neck0_data_pmu0", kUnitId = 553 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u554r, %u554s:2 = plasma.unit.Pmu() attributes {kName = "streaming_transpose_1_0_357_transpose_pmu", kUnitId = 554 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u555r, %u555s:3 = plasma.unit.Pmu() attributes {kName = "sbuf2u_1_0_361_head1_neck0_data_pmu0", kUnitId = 555 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u556r, %u556s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_1_0_362_head1_neck0_data_r0_r1_pmu0", kUnitId = 556 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u557r, %u557s:3 = plasma.unit.Pmu() attributes {kName = "split_kernel_gbuf_1_0_362_head1_neck0_data_r2_r3_pmu1", kUnitId = 557 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u558r, %u558s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_363_gemm_0_0_0_PCU", kUnitId = 558 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u559r, %u559s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_363_gemm_0_0_0_PMU", kUnitId = 559 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u560r, %u560s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_363_gemm_0_0_1_PCU", kUnitId = 560 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u561r, %u561s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_364_gemm_0_0_0_PCU", kUnitId = 561 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u562r, %u562s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_364_gemm_0_0_0_PMU", kUnitId = 562 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u563r, %u563s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_364_gemm_0_0_1_PCU", kUnitId = 563 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u564r, %u564s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_365_gemm_0_0_0_PCU", kUnitId = 564 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u565r, %u565s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_365_gemm_0_0_0_PMU", kUnitId = 565 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u566r, %u566s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_365_gemm_0_0_1_PCU", kUnitId = 566 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u567r, %u567s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_366_gemm_0_0_0_PCU", kUnitId = 567 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u568r, %u568s:2 = plasma.unit.Pmu() attributes {kName = "biggemm_1_0_366_gemm_0_0_0_PMU", kUnitId = 568 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u569r, %u569s:5 = plasma.unit.Pcu() attributes {kName = "biggemm_1_0_366_gemm_0_0_1_PCU", kUnitId = 569 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u570r, %u570s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_368_head1_neck0_data_pmu0", kUnitId = 570 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u571r, %u571s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_368_head1_neck0_data_pmu1", kUnitId = 571 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u572r, %u572s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0", kUnitId = 572 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u573r, %u573s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_368_head1_neck0_rob_pmu", kUnitId = 573 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u574r, %u574s:2 = plasma.unit.Pcu() attributes {kName = "bias_transpose_grad_1_0_370_bias_grad_pcu", kUnitId = 574 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u575r, %u575s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_398_head1_neck0_data_pmu0", kUnitId = 575 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u576r, %u576s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output", kUnitId = 576 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u577r, %u577s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_1_0_output", kUnitId = 577 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u578r, %u578s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_2_0_output", kUnitId = 578 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u579r, %u579s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_3_0_output", kUnitId = 579 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u580r, %u580s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_4_0_output", kUnitId = 580 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u581r, %u581s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_5_0_output", kUnitId = 581 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u582r, %u582s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_6_0_output", kUnitId = 582 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u583r, %u583s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_7_0_output", kUnitId = 583 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u584r, %u584s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_8_0_output", kUnitId = 584 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u585r, %u585s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_9_0_output", kUnitId = 585 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u586r, %u586s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_10_0_output", kUnitId = 586 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u587r, %u587s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_11_0_output", kUnitId = 587 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u588r, %u588s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_12_0_output", kUnitId = 588 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u589r, %u589s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_13_0_output", kUnitId = 589 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u590r, %u590s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_14_0_output", kUnitId = 590 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u591r, %u591s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_15_0_output", kUnitId = 591 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u592r, %u592s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_16_0_output", kUnitId = 592 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u593r, %u593s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_17_0_output", kUnitId = 593 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u594r, %u594s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_18_0_output", kUnitId = 594 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u595r, %u595s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_19_0_output", kUnitId = 595 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u596r, %u596s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_20_0_output", kUnitId = 596 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u597r, %u597s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_21_0_output", kUnitId = 597 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u598r, %u598s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_22_0_output", kUnitId = 598 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u599r, %u599s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_23_0_output", kUnitId = 599 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u600r, %u600s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_24_0_output", kUnitId = 600 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u601r, %u601s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_25_0_output", kUnitId = 601 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u602r, %u602s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_26_0_output", kUnitId = 602 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u603r, %u603s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_27_0_output", kUnitId = 603 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u604r, %u604s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_28_0_output", kUnitId = 604 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u605r, %u605s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_29_0_output", kUnitId = 605 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u606r, %u606s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_30_0_output", kUnitId = 606 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u607r, %u607s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_31_0_output", kUnitId = 607 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u608r, %u608s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_0", kUnitId = 608 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u609r, %u609s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_1", kUnitId = 609 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u610r, %u610s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_2", kUnitId = 610 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u611r, %u611s:4 = plasma.unit.Pmu() attributes {kName = "sbuf1a_1_0_400_head1_neck0_data_pmu0", kUnitId = 611 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink, %arg16: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %u612r, %u612s:2 = plasma.unit.Pmu() attributes {kName = "vector_transpose_1_0_417.buffer_head1_neck0_data_pmu0", kUnitId = 612 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u613r, %u613s:2 = plasma.unit.Pmu() attributes {kName = "realign_1_0_418.gbuffer_head1_neck0_data_pmu0", kUnitId = 613 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u614r, %u614s:2 = plasma.unit.Pmu() attributes {kName = "realign_1_0_419.gbuffer_head1_neck0_data_pmu0", kUnitId = 614 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u615r, %u615s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_420.buffer_head1_neck0_data_pmu0", kUnitId = 615 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u616r, %u616s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_401_head1_neck0_data_pmu0", kUnitId = 616 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u617r, %u617s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_401_head1_neck0_data_pmu1", kUnitId = 617 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u618r, %u618s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_401_head1_neck0_data_pmu2", kUnitId = 618 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u619r, %u619s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_401_head1_neck0_data_pmu3", kUnitId = 619 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u620r, %u620s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_401_head1_neck0_data_pmu4", kUnitId = 620 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u621r, %u621s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_401_head1_neck0_rob_pmu", kUnitId = 621 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u622r, %u622s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_358_head1_neck0_data_pmu0", kUnitId = 622 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ScalarSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink)
      %u623r, %u623s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_149_head1_neck0_data_pmu0", kUnitId = 623 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ScalarSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink)
      %u624r, %u624s:2 = plasma.unit.Pmu() attributes {kName = "lbuf1a_1_0_397_head1_neck0_data_pmu0", kUnitId = 624 : i64}  {
      ^bb0(%arg13: !plasma.ScalarSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.VectorSink)
      %u625r, %u625s:3 = plasma.unit.Pmu() attributes {kName = "lbuf1a_1_0_399_head0_head1_neck0_data_pmu0", kUnitId = 625 : i64}  {
      ^bb0(%arg13: !plasma.ScalarSrc, %arg14: !plasma.ScalarSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.ScalarSrc, !plasma.VectorSink)
      %u626r, %u626s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_245_D_0_0", kUnitId = 626 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u627r, %u627s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1u_1_0_246_D_0_0", kUnitId = 627 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.ScalarSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u628r, %u628s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_250_D_0_0", kUnitId = 628 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u629r, %u629s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_0_0_0_min_0_max_65536", kUnitId = 629 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u630r, %u630s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_1_0_0_min_65536_max_131072", kUnitId = 630 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u631r, %u631s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_2_0_0_min_131072_max_196608", kUnitId = 631 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u632r, %u632s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_3_0_0_min_196608_max_262144", kUnitId = 632 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u633r, %u633s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_4_0_0_min_262144_max_327680", kUnitId = 633 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u634r, %u634s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_5_0_0_min_327680_max_393216", kUnitId = 634 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u635r, %u635s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_6_0_0_min_393216_max_458752", kUnitId = 635 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u636r, %u636s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_7_0_0_min_458752_max_524288", kUnitId = 636 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u637r, %u637s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_8_0_0_min_524288_max_589824", kUnitId = 637 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u638r, %u638s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_9_0_0_min_589824_max_655360", kUnitId = 638 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u639r, %u639s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_10_0_0_min_655360_max_720896", kUnitId = 639 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u640r, %u640s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_11_0_0_min_720896_max_786432", kUnitId = 640 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u641r, %u641s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_12_0_0_min_786432_max_851968", kUnitId = 641 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u642r, %u642s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_13_0_0_min_851968_max_917504", kUnitId = 642 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u643r, %u643s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_14_0_0_min_917504_max_983040", kUnitId = 643 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u644r, %u644s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_15_0_0_min_983040_max_1048576", kUnitId = 644 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u645r, %u645s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_16_0_0_min_1048576_max_1114112", kUnitId = 645 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u646r, %u646s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_17_0_0_min_1114112_max_1179648", kUnitId = 646 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u647r, %u647s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_18_0_0_min_1179648_max_1245184", kUnitId = 647 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u648r, %u648s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_19_0_0_min_1245184_max_1310720", kUnitId = 648 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u649r, %u649s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_20_0_0_min_1310720_max_1376256", kUnitId = 649 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u650r, %u650s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_21_0_0_min_1376256_max_1441792", kUnitId = 650 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u651r, %u651s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_22_0_0_min_1441792_max_1507328", kUnitId = 651 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u652r, %u652s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_23_0_0_min_1507328_max_1572864", kUnitId = 652 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u653r, %u653s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_24_0_0_min_1572864_max_1638400", kUnitId = 653 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u654r, %u654s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_25_0_0_min_1638400_max_1703936", kUnitId = 654 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u655r, %u655s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_26_0_0_min_1703936_max_1769472", kUnitId = 655 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u656r, %u656s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_27_0_0_min_1769472_max_1835008", kUnitId = 656 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u657r, %u657s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_28_0_0_min_1835008_max_1900544", kUnitId = 657 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u658r, %u658s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_29_0_0_min_1900544_max_1966080", kUnitId = 658 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u659r, %u659s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_30_0_0_min_1966080_max_2031616", kUnitId = 659 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u660r, %u660s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_31_0_0_min_2031616_max_2097152", kUnitId = 660 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u661r, %u661s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_ROB_kBackReadCtx_0_0", kUnitId = 661 : i64}  {
      ^bb0(%arg13: !plasma.ControlSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.ControlSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSink, %arg18: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u662r, %u662s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum_1.tbuf_D_0_0_0", kUnitId = 662 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u663r, %u663s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__conv_layer__conv2d_bwd_accum.tbuf_D_0_0_0", kUnitId = 663 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u664r, %u664s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__conv_layer__conv2d_bwd_accum_1.tbuf_D_0_0_0", kUnitId = 664 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u665r, %u665s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.permute_1_0_416.tbuf_D_0_0_0_0_0", kUnitId = 665 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u666r, %u666s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__conv_layer__conv2d_weight_permute_bwd.tbuf_D_0_0_0_0_0", kUnitId = 666 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u667r, %u667s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_31", kUnitId = 667 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u668r, %u668s:5 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_32", kUnitId = 668 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u669r, %u669s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_18", kUnitId = 669 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink, %arg14: !plasma.VectorSrc, %arg15: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u670r, %u670s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor", kUnitId = 670 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSrc, %arg15: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u671r, %u671s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_1", kOnChipLayout = !plasma.TL<1xbf16:RVRM:64>, kUnitId = 671 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u672r, %u672s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_2", kOnChipLayout = !plasma.TL<3xi32:RVRM>, kUnitId = 672 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<3xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u673r, %u673s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_3", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 673 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u674r, %u674s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_4", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 674 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u675r, %u675s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_5", kOnChipLayout = !plasma.TL<4080xbf16:RVRM:64>, kUnitId = 675 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x4080xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u676r, %u676s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_6", kOnChipLayout = !plasma.TL<512x256xbf16:CVRM:64>, kUnitId = 676 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u677r, %u677s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_7", kOnChipLayout = !plasma.TL<256x1xbf16:CVCM:64>, kUnitId = 677 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x256x1xbf16:CVCM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u678r, %u678s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_8", kOnChipLayout = !plasma.TL<60x136xbf16:RVRM:64>, kUnitId = 678 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u679r, %u679s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_9", kOnChipLayout = !plasma.TL<7x64xui8:RVRM>, kUnitId = 679 : i64}  {
      ^bb0(%arg13: !plasma.VectorSrc, %arg14: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<112xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u680r, %u680s = plasma.unit.Vag(%arg9) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_1", kOnChipLayout = !plasma.TL<8192x64xui8:RVRM>, kUnitId = 680 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x256xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u681r, %u681s = plasma.unit.Vag(%arg10) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_2", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 681 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u682r, %u682s = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_3", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 682 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x1xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u683r, %u683s = plasma.unit.Vag(%arg12) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_4", kOnChipLayout = !plasma.TL<16x136x3xbf16:RVRM:64>, kUnitId = 683 : i64}  {
      ^bb0(%arg13: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u420s#1, %u428s#4) [gbuf2u_1_0_218_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u421s#1, %u423s#3) [gbuf2u_1_0_221_head1_neck0_data_pmu0 >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u422s#1, %u423s#4) [gbuf2u_1_0_224_head1_neck0_data_pmu0 >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u423s#0, %u423s#2) [ptconvlstm__criterion__mseloss_bwd_sub_output >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u423s#1, %u424s#3) [ptconvlstm__criterion__mseloss_bwd_sub_output >> scale_1_0_331_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u424s#0, %u424s#2) [scale_1_0_331_scaling_pcu >> scale_1_0_331_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u424s#1, %u426s#4) [scale_1_0_331_scaling_pcu >> scale_1_0_332_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u425s#1, %u426s#3) [scale_1_0_332_input_B_pmu >> scale_1_0_332_scaling_pcu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u426s#0, %u426s#2) [scale_1_0_332_scaling_pcu >> scale_1_0_332_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u426s#1, %u427s#3) [scale_1_0_332_scaling_pcu >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u427s#0, %u428s#3) [gbuf2u_1_0_229_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u427s#1, %u421s#2) [gbuf2u_1_0_229_head1_neck0_data_pmu0 >> gbuf2u_1_0_221_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u427s#2, %u421s#3) [gbuf2u_1_0_229_head1_neck0_data_pmu0 >> gbuf2u_1_0_221_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u427s#1, %u422s#2) [gbuf2u_1_0_229_head1_neck0_data_pmu0 >> gbuf2u_1_0_224_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u427s#2, %u422s#3) [gbuf2u_1_0_229_head1_neck0_data_pmu0 >> gbuf2u_1_0_224_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u428s#0, %u428s#2) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u428s#1, %u429s#3) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_236_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u428s#1, %u453s#3) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_240_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u429s#0, %u435s#4) [gbuf2u_1_0_236_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u429s#1, %u420s#2) [gbuf2u_1_0_236_head1_neck0_data_pmu0 >> gbuf2u_1_0_218_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u429s#2, %u420s#3) [gbuf2u_1_0_236_head1_neck0_data_pmu0 >> gbuf2u_1_0_218_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u429s#1, %u427s#4) [gbuf2u_1_0_236_head1_neck0_data_pmu0 >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u429s#2, %u427s#5) [gbuf2u_1_0_236_head1_neck0_data_pmu0 >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u430s#0, %u434s#3) [gbuf1a_1_0_394_head1_neck0_data_pmu0 >> gbuf1a_1_0_394_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u431s#0, %u434s#3) [gbuf1a_1_0_394_head1_neck0_data_pmu1 >> gbuf1a_1_0_394_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u432s#0, %u434s#3) [gbuf1a_1_0_394_head1_neck0_data_pmu2 >> gbuf1a_1_0_394_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u433s#0, %u434s#3) [gbuf1a_1_0_394_head1_neck0_data_pmu3 >> gbuf1a_1_0_394_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u434s#0, %u430s#1) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#1, %u430s#2) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#0, %u431s#1) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#1, %u431s#2) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#0, %u432s#1) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#1, %u432s#2) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#0, %u433s#1) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#1, %u433s#2) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> gbuf1a_1_0_394_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#2, %u436s#1) [gbuf1a_1_0_394_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u435s#0, %u435s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u435s#1, %u552s#4) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> gbuf2u_1_0_242_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u436s#0, %u435s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u437s#0, %u437s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u438s#0, %u437s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u439s#0, %u439s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u440s#0, %u439s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u441s#0, %u441s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u442s#0, %u441s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u443s#0, %u443s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u444s#0, %u443s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u445s#0, %u445s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u446s#0, %u445s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u447s#0, %u447s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u448s#0, %u447s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u449s#0, %u449s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u450s#0, %u449s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u451s#0, %u452s#4) [gbuf2u_1_0_239_head1_neck0_reformat_pmu0 >> gbuf2u_1_0_239_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u452s#0, %u451s#1) [gbuf2u_1_0_239_head1_neck0_data_pmu0 >> gbuf2u_1_0_239_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u452s#1, %u451s#2) [gbuf2u_1_0_239_head1_neck0_data_pmu0 >> gbuf2u_1_0_239_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u452s#2, %u454s#4) [gbuf2u_1_0_239_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u452s#3, %u668s#2) [gbuf2u_1_0_239_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_32] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u452s#1, %u668s#3) [gbuf2u_1_0_239_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_32] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u453s#0, %u551s#1) [gbuf2u_1_0_240_head0_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u453s#1, %u455s#1) [gbuf2u_1_0_240_head0_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u453s#2, %u420s#4) [gbuf2u_1_0_240_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_218_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u453s#2, %u427s#6) [gbuf2u_1_0_240_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_229_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u454s#0, %u456s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u455s#0, %u454s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u456s#0, %u454s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#1, %u454s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#2, %u576s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> AccumPCU_0_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u457s#0, %u459s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u458s#0, %u457s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u459s#0, %u457s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u459s#1, %u457s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u459s#2, %u577s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> AccumPCU_1_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u460s#0, %u462s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u461s#0, %u460s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u462s#0, %u460s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u462s#1, %u460s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u462s#2, %u578s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> AccumPCU_2_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u463s#0, %u465s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u464s#0, %u463s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u465s#0, %u463s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#1, %u463s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#2, %u579s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> AccumPCU_3_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u466s#0, %u468s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u467s#0, %u466s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u468s#0, %u466s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u468s#1, %u466s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u468s#2, %u580s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> AccumPCU_4_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u469s#0, %u471s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u470s#0, %u469s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u471s#0, %u469s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u471s#1, %u469s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u471s#2, %u581s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> AccumPCU_5_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u472s#0, %u474s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u473s#0, %u472s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u474s#0, %u472s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u474s#1, %u472s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u474s#2, %u582s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> AccumPCU_6_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u475s#0, %u477s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u476s#0, %u475s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u477s#0, %u475s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u477s#1, %u475s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u477s#2, %u583s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> AccumPCU_7_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u478s#0, %u480s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u479s#0, %u478s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u480s#0, %u478s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_8 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u480s#1, %u478s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_8 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_8_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u480s#2, %u584s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_8 >> AccumPCU_8_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u481s#0, %u483s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u482s#0, %u481s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u483s#0, %u481s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_9 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u483s#1, %u481s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_9 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_9_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u483s#2, %u585s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_9 >> AccumPCU_9_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#0, %u486s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u485s#0, %u484s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u486s#0, %u484s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_10 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u486s#1, %u484s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_10 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_10_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u486s#2, %u586s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_10 >> AccumPCU_10_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u487s#0, %u489s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u488s#0, %u487s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u489s#0, %u487s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_11 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u489s#1, %u487s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_11 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_11_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u489s#2, %u587s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_11 >> AccumPCU_11_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u490s#0, %u492s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u491s#0, %u490s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u492s#0, %u490s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_12 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u492s#1, %u490s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_12 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_12_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u492s#2, %u588s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_12 >> AccumPCU_12_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u493s#0, %u495s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u494s#0, %u493s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u495s#0, %u493s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_13 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u495s#1, %u493s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_13 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_13_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u495s#2, %u589s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_13 >> AccumPCU_13_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u496s#0, %u498s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u497s#0, %u496s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u498s#0, %u496s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_14 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u498s#1, %u496s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_14 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_14_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u498s#2, %u590s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_14 >> AccumPCU_14_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u499s#0, %u501s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u500s#0, %u499s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u501s#0, %u499s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_15 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u501s#1, %u499s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_15 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_15_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u501s#2, %u591s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_15 >> AccumPCU_15_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u502s#0, %u504s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u503s#0, %u502s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u504s#0, %u502s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_16 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u504s#1, %u502s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_16 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_16_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u504s#2, %u592s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_16 >> AccumPCU_16_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u505s#0, %u507s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_17] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u506s#0, %u505s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u507s#0, %u505s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_17 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u507s#1, %u505s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_17 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_17_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u507s#2, %u593s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_17 >> AccumPCU_17_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u508s#0, %u510s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_18] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u509s#0, %u508s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u510s#0, %u508s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_18 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u510s#1, %u508s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_18 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_18_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u510s#2, %u594s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_18 >> AccumPCU_18_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u511s#0, %u513s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_19] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u512s#0, %u511s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u513s#0, %u511s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_19 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u513s#1, %u511s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_19 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_19_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u513s#2, %u595s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_19 >> AccumPCU_19_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u514s#0, %u516s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_20] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u515s#0, %u514s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u516s#0, %u514s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_20 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u516s#1, %u514s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_20 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_20_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u516s#2, %u596s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_20 >> AccumPCU_20_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u517s#0, %u519s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_21] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u518s#0, %u517s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u519s#0, %u517s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_21 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u519s#1, %u517s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_21 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_21_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u519s#2, %u597s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_21 >> AccumPCU_21_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u520s#0, %u522s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_22] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u521s#0, %u520s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u522s#0, %u520s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_22 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u522s#1, %u520s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_22 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_22_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u522s#2, %u598s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_22 >> AccumPCU_22_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u523s#0, %u525s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_23] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u524s#0, %u523s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u525s#0, %u523s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_23 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u525s#1, %u523s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_23 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_23_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u525s#2, %u599s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_23 >> AccumPCU_23_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u526s#0, %u528s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_24] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u527s#0, %u526s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u528s#0, %u526s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_24 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u528s#1, %u526s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_24 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_24_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u528s#2, %u600s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_24 >> AccumPCU_24_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u529s#0, %u531s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_25] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u530s#0, %u529s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u531s#0, %u529s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_25 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u531s#1, %u529s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_25 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_25_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u531s#2, %u601s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_25 >> AccumPCU_25_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u532s#0, %u534s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u533s#0, %u532s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u534s#0, %u532s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_26 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u534s#1, %u532s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_26 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_26_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u534s#2, %u602s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_26 >> AccumPCU_26_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u535s#0, %u537s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u536s#0, %u535s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u537s#0, %u535s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_27 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u537s#1, %u535s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_27 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_27_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u537s#2, %u603s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_27 >> AccumPCU_27_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u538s#0, %u540s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_28] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u539s#0, %u538s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u540s#0, %u538s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_28 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u540s#1, %u538s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_28 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_28_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u540s#2, %u604s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_28 >> AccumPCU_28_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u541s#0, %u543s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_29] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u542s#0, %u541s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u543s#0, %u541s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_29 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u543s#1, %u541s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_29 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_29_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u543s#2, %u605s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_29 >> AccumPCU_29_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u544s#0, %u546s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_30] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u545s#0, %u544s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u546s#0, %u544s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_30 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u546s#1, %u544s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_30 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_30_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u546s#2, %u606s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_30 >> AccumPCU_30_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#0, %u549s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_31] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#0, %u547s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#0, %u547s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_31 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u549s#1, %u547s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_31 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_31_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u549s#2, %u607s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_31 >> AccumPCU_31_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u550s#0, %u608s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u550s#1, %u453s#4) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2u_1_0_240_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u551s#0, %u550s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u552s#0, %u553s#3) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> gbuf2a_1_0_433_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u552s#1, %u429s#4) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> gbuf2u_1_0_236_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#2, %u429s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> gbuf2u_1_0_236_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u435s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u437s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u439s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u441s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u443s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u445s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u447s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#3, %u449s#5) [gbuf2u_1_0_242_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_7_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u553s#0, %u554s#1) [gbuf2a_1_0_433_head0_head1_neck0_data_pmu0 >> streaming_transpose_1_0_357_transpose_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u553s#1, %u574s#1) [gbuf2a_1_0_433_head0_head1_neck0_data_pmu0 >> bias_transpose_grad_1_0_370_bias_grad_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u553s#2, %u552s#5) [gbuf2a_1_0_433_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_242_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u554s#0, %u556s#2) [streaming_transpose_1_0_357_transpose_pmu >> split_kernel_gbuf_1_0_362_head1_neck0_data_r0_r1_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#0, %u559s#1) [sbuf2u_1_0_361_head1_neck0_data_pmu0 >> biggemm_1_0_363_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#0, %u562s#1) [sbuf2u_1_0_361_head1_neck0_data_pmu0 >> biggemm_1_0_364_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#0, %u565s#1) [sbuf2u_1_0_361_head1_neck0_data_pmu0 >> biggemm_1_0_365_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#0, %u568s#1) [sbuf2u_1_0_361_head1_neck0_data_pmu0 >> biggemm_1_0_366_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#1, %u622s#5) [sbuf2u_1_0_361_head1_neck0_data_pmu0 >> gbuf2u_1_0_358_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u556s#0, %u558s#2) [split_kernel_gbuf_1_0_362_head1_neck0_data_r0_r1_pmu0 >> biggemm_1_0_363_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u556s#1, %u561s#2) [split_kernel_gbuf_1_0_362_head1_neck0_data_r0_r1_pmu0 >> biggemm_1_0_364_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u557s#0, %u564s#2) [split_kernel_gbuf_1_0_362_head1_neck0_data_r2_r3_pmu1 >> biggemm_1_0_365_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u557s#1, %u567s#2) [split_kernel_gbuf_1_0_362_head1_neck0_data_r2_r3_pmu1 >> biggemm_1_0_366_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u558s#0, %u572s#3) [biggemm_1_0_363_gemm_0_0_0_PCU >> gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u559s#0, %u558s#1) [biggemm_1_0_363_gemm_0_0_0_PMU >> biggemm_1_0_363_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u559s#0, %u560s#1) [biggemm_1_0_363_gemm_0_0_0_PMU >> biggemm_1_0_363_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u561s#0, %u572s#3) [biggemm_1_0_364_gemm_0_0_0_PCU >> gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u562s#0, %u561s#1) [biggemm_1_0_364_gemm_0_0_0_PMU >> biggemm_1_0_364_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u562s#0, %u563s#1) [biggemm_1_0_364_gemm_0_0_0_PMU >> biggemm_1_0_364_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u564s#0, %u572s#3) [biggemm_1_0_365_gemm_0_0_0_PCU >> gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u565s#0, %u564s#1) [biggemm_1_0_365_gemm_0_0_0_PMU >> biggemm_1_0_365_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u565s#0, %u566s#1) [biggemm_1_0_365_gemm_0_0_0_PMU >> biggemm_1_0_365_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u567s#0, %u572s#3) [biggemm_1_0_366_gemm_0_0_0_PCU >> gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u568s#0, %u567s#1) [biggemm_1_0_366_gemm_0_0_0_PMU >> biggemm_1_0_366_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u568s#0, %u569s#1) [biggemm_1_0_366_gemm_0_0_0_PMU >> biggemm_1_0_366_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u570s#0, %u573s#3) [gbuf2u_1_0_368_head1_neck0_data_pmu0 >> gbuf2u_1_0_368_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u571s#0, %u573s#3) [gbuf2u_1_0_368_head1_neck0_data_pmu1 >> gbuf2u_1_0_368_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u572s#0, %u570s#1) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> gbuf2u_1_0_368_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u572s#1, %u558s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_363_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#1, %u560s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_363_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u558s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_363_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u560s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_363_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#1, %u561s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_364_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#1, %u563s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_364_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u561s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_364_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u563s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_364_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#1, %u564s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_365_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#1, %u566s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_365_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u564s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_365_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u566s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_365_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#1, %u567s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_366_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#1, %u569s#3) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_366_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u567s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_366_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u569s#4) [gbuf2u_1_0_368_head1_neck0_write_fronting_pmu0 >> biggemm_1_0_366_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u573s#0, %u570s#2) [gbuf2u_1_0_368_head1_neck0_rob_pmu >> gbuf2u_1_0_368_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u573s#1, %u570s#3) [gbuf2u_1_0_368_head1_neck0_rob_pmu >> gbuf2u_1_0_368_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u573s#0, %u571s#2) [gbuf2u_1_0_368_head1_neck0_rob_pmu >> gbuf2u_1_0_368_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u573s#1, %u571s#3) [gbuf2u_1_0_368_head1_neck0_rob_pmu >> gbuf2u_1_0_368_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u573s#2, %u609s#1) [gbuf2u_1_0_368_head1_neck0_rob_pmu >> AccumPCU_0_0_output_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u574s#0, %u575s#3) [bias_transpose_grad_1_0_370_bias_grad_pcu >> gbuf2a_1_0_398_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u575s#0, %u610s#1) [gbuf2a_1_0_398_head1_neck0_data_pmu0 >> AccumPCU_0_0_output_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u575s#1, %u553s#4) [gbuf2a_1_0_398_head1_neck0_data_pmu0 >> gbuf2a_1_0_433_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u575s#2, %u553s#5) [gbuf2a_1_0_398_head1_neck0_data_pmu0 >> gbuf2a_1_0_433_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u576s#0, %u629s#3) [AccumPCU_0_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u577s#0, %u630s#3) [AccumPCU_1_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u578s#0, %u631s#3) [AccumPCU_2_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u579s#0, %u632s#3) [AccumPCU_3_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u580s#0, %u633s#3) [AccumPCU_4_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u581s#0, %u634s#3) [AccumPCU_5_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u582s#0, %u635s#3) [AccumPCU_6_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u583s#0, %u636s#3) [AccumPCU_7_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u584s#0, %u637s#3) [AccumPCU_8_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_8_0_0_min_524288_max_589824] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u585s#0, %u638s#3) [AccumPCU_9_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_9_0_0_min_589824_max_655360] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#0, %u639s#3) [AccumPCU_10_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_10_0_0_min_655360_max_720896] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u587s#0, %u640s#3) [AccumPCU_11_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_11_0_0_min_720896_max_786432] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u588s#0, %u641s#3) [AccumPCU_12_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_12_0_0_min_786432_max_851968] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u589s#0, %u642s#3) [AccumPCU_13_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_13_0_0_min_851968_max_917504] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u590s#0, %u643s#3) [AccumPCU_14_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_14_0_0_min_917504_max_983040] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u591s#0, %u644s#3) [AccumPCU_15_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_15_0_0_min_983040_max_1048576] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u592s#0, %u645s#3) [AccumPCU_16_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_16_0_0_min_1048576_max_1114112] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u593s#0, %u646s#3) [AccumPCU_17_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_17_0_0_min_1114112_max_1179648] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u594s#0, %u647s#3) [AccumPCU_18_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_18_0_0_min_1179648_max_1245184] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u595s#0, %u648s#3) [AccumPCU_19_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_19_0_0_min_1245184_max_1310720] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u596s#0, %u649s#3) [AccumPCU_20_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_20_0_0_min_1310720_max_1376256] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u597s#0, %u650s#3) [AccumPCU_21_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_21_0_0_min_1376256_max_1441792] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u598s#0, %u651s#3) [AccumPCU_22_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_22_0_0_min_1441792_max_1507328] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u599s#0, %u652s#3) [AccumPCU_23_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_23_0_0_min_1507328_max_1572864] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u600s#0, %u653s#3) [AccumPCU_24_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_24_0_0_min_1572864_max_1638400] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u601s#0, %u654s#3) [AccumPCU_25_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_25_0_0_min_1638400_max_1703936] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u602s#0, %u655s#3) [AccumPCU_26_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_26_0_0_min_1703936_max_1769472] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u603s#0, %u656s#3) [AccumPCU_27_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_27_0_0_min_1769472_max_1835008] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u604s#0, %u657s#3) [AccumPCU_28_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_28_0_0_min_1835008_max_1900544] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u605s#0, %u658s#3) [AccumPCU_29_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_29_0_0_min_1900544_max_1966080] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u606s#0, %u659s#3) [AccumPCU_30_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_30_0_0_min_1966080_max_2031616] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u607s#0, %u660s#3) [AccumPCU_31_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_31_0_0_min_2031616_max_2097152] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u608s#0, %u662s#2) [AccumPCU_0_0_output_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u609s#0, %u663s#2) [AccumPCU_0_0_output_1 >> LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u610s#0, %u664s#2) [AccumPCU_0_0_output_2 >> LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u611s#0, %u612s#1) [sbuf1a_1_0_400_head1_neck0_data_pmu0 >> vector_transpose_1_0_417_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u611s#1, %u623s#3) [sbuf1a_1_0_400_head1_neck0_data_pmu0 >> gbuf2u_1_0_149_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u612s#0, %u613s#1) [vector_transpose_1_0_417_buffer_head1_neck0_data_pmu0 >> realign_1_0_418_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u613s#0, %u614s#1) [realign_1_0_418_gbuffer_head1_neck0_data_pmu0 >> realign_1_0_419_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u614s#0, %u665s#1) [realign_1_0_419_gbuffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_D_0_0_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u615s#0, %u666s#1) [transpose_1_0_420_buffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_D_0_0_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u616s#0, %u621s#3) [gbuf1a_1_0_401_head1_neck0_data_pmu0 >> gbuf1a_1_0_401_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u617s#0, %u621s#3) [gbuf1a_1_0_401_head1_neck0_data_pmu1 >> gbuf1a_1_0_401_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u618s#0, %u621s#3) [gbuf1a_1_0_401_head1_neck0_data_pmu2 >> gbuf1a_1_0_401_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u619s#0, %u621s#3) [gbuf1a_1_0_401_head1_neck0_data_pmu3 >> gbuf1a_1_0_401_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u620s#0, %u621s#3) [gbuf1a_1_0_401_head1_neck0_data_pmu4 >> gbuf1a_1_0_401_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u621s#1, %u616s#1) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#2, %u616s#2) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#1, %u617s#1) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#2, %u617s#2) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#1, %u618s#1) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#2, %u618s#2) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#1, %u619s#1) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#2, %u619s#2) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#1, %u620s#1) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#2, %u620s#2) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> gbuf1a_1_0_401_head1_neck0_data_pmu4] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#0, %u683s) [gbuf1a_1_0_401_head1_neck0_rob_pmu >> LogicalAGCU_for_DRAM_output_s1_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u622s#0, %u555s#2) [gbuf2u_1_0_358_head1_neck0_data_pmu0 >> sbuf2u_1_0_361_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u622s#1, %u628s#4) [gbuf2u_1_0_358_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_250_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u622s#2, %u628s#5) [gbuf2u_1_0_358_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_250_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u623s#0, %u611s#2) [gbuf2u_1_0_149_head1_neck0_data_pmu0 >> sbuf1a_1_0_400_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u624s#0, %u622s#4) [lbuf1a_1_0_397_head1_neck0_data_pmu0 >> gbuf2u_1_0_358_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u625s#0, %u623s#2) [lbuf1a_1_0_399_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_149_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u625s#1, %u611s#3) [lbuf1a_1_0_399_head0_head1_neck0_data_pmu0 >> sbuf1a_1_0_400_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u626s#1, %u628s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_245_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_250_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u627s#1, %u626s#2) [LogregTorchSamba_partition_1_0__tbuf1u_1_0_246_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_245_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u628s#0, %u626s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_250_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_245_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u628s#1, %u626s#4) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_250_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_245_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u628s#2, %u622s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_250_D_0_0 >> gbuf2u_1_0_358_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u629s#0, %u661s#4) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u661s#0, %u629s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u630s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u631s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u632s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u633s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u634s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u635s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u636s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u637s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_8_0_0_min_524288_max_589824] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u638s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_9_0_0_min_589824_max_655360] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u639s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_10_0_0_min_655360_max_720896] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u640s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_11_0_0_min_720896_max_786432] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u641s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_12_0_0_min_786432_max_851968] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u642s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_13_0_0_min_851968_max_917504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u643s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_14_0_0_min_917504_max_983040] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u644s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_15_0_0_min_983040_max_1048576] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u645s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_16_0_0_min_1048576_max_1114112] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u646s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_17_0_0_min_1114112_max_1179648] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u647s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_18_0_0_min_1179648_max_1245184] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u648s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_19_0_0_min_1245184_max_1310720] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u649s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_20_0_0_min_1310720_max_1376256] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u650s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_21_0_0_min_1376256_max_1441792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u651s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_22_0_0_min_1441792_max_1507328] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u652s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_23_0_0_min_1507328_max_1572864] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u653s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_24_0_0_min_1572864_max_1638400] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u654s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_25_0_0_min_1638400_max_1703936] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u655s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_26_0_0_min_1703936_max_1769472] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u656s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_27_0_0_min_1769472_max_1835008] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u657s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_28_0_0_min_1835008_max_1900544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u658s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_29_0_0_min_1900544_max_1966080] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u659s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_30_0_0_min_1966080_max_2031616] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#0, %u660s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_31_0_0_min_2031616_max_2097152] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u629s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u630s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u631s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u632s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u633s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u634s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u635s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u636s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u637s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_8_0_0_min_524288_max_589824] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u638s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_9_0_0_min_589824_max_655360] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u639s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_10_0_0_min_655360_max_720896] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u640s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_11_0_0_min_720896_max_786432] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u641s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_12_0_0_min_786432_max_851968] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u642s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_13_0_0_min_851968_max_917504] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u643s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_14_0_0_min_917504_max_983040] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u644s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_15_0_0_min_983040_max_1048576] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u645s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_16_0_0_min_1048576_max_1114112] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u646s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_17_0_0_min_1114112_max_1179648] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u647s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_18_0_0_min_1179648_max_1245184] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u648s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_19_0_0_min_1245184_max_1310720] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u649s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_20_0_0_min_1310720_max_1376256] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u650s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_21_0_0_min_1376256_max_1441792] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u651s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_22_0_0_min_1441792_max_1507328] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u652s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_23_0_0_min_1507328_max_1572864] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u653s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_24_0_0_min_1572864_max_1638400] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u654s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_25_0_0_min_1638400_max_1703936] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u655s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_26_0_0_min_1703936_max_1769472] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u656s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_27_0_0_min_1769472_max_1835008] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u657s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_28_0_0_min_1835008_max_1900544] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u658s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_29_0_0_min_1900544_max_1966080] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u659s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_30_0_0_min_1966080_max_2031616] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#1, %u660s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_31_0_0_min_2031616_max_2097152] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#2, %u452s#5) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> gbuf2u_1_0_239_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u661s#3, %u670s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> s1_backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u662s#1, %u452s#6) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> gbuf2u_1_0_239_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u662s#0, %u681s) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u663s#0, %u623s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_D_0_0_0 >> gbuf2u_1_0_149_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u663s#1, %u573s#4) [LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_D_0_0_0 >> gbuf2u_1_0_368_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u664s#1, %u575s#4) [LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_D_0_0_0 >> gbuf2a_1_0_398_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u664s#0, %u682s) [LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_D_0_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u665s#0, %u615s#1) [LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_D_0_0_0_0_0 >> transpose_1_0_420_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u666s#0, %u616s#3) [LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_D_0_0_0_0_0 >> gbuf1a_1_0_401_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u667s#1, %u430s#3) [s1_fronting_pmu_load_group_31 >> gbuf1a_1_0_394_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u668s#1, %u451s#3) [s1_fronting_pmu_load_group_32 >> gbuf2u_1_0_239_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u669s#1, %u625s#2) [s1_fronting_pmu_load_group_18 >> lbuf1a_1_0_399_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u669s#1, %u624s#1) [s1_fronting_pmu_load_group_18 >> lbuf1a_1_0_397_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u670s#1, %u661s#5) [s1_backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u670s#0, %u680s) [s1_backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor >> LogicalAGCU_for_DRAM_output_s1_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u671s#0, %u425s#0) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> scale_1_0_332_input_B_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u671s#1, %u425s#2) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> scale_1_0_332_input_B_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u672s#0, %u627s#0) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1u_1_0_246_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u672s#1, %u627s#2) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1u_1_0_246_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u673s#0, %u420s#0) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> gbuf2u_1_0_218_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u673s#1, %u420s#5) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> gbuf2u_1_0_218_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u674s#0, %u421s#0) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> gbuf2u_1_0_221_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u674s#1, %u421s#4) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> gbuf2u_1_0_221_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u675s#0, %u422s#0) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> gbuf2u_1_0_224_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u675s#1, %u422s#4) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> gbuf2u_1_0_224_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u676s#0, %u667s#0) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> s1_fronting_pmu_load_group_31] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u676s#1, %u667s#2) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> s1_fronting_pmu_load_group_31] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u677s#0, %u668s#0) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_32] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u677s#1, %u668s#4) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_32] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u678s#0, %u626s#0) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_245_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u678s#1, %u626s#5) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_245_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u679s#0, %u669s#0) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> s1_fronting_pmu_load_group_18] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u679s#1, %u669s#2) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> s1_fronting_pmu_load_group_18] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf2u_1_0_218()  {
          "plasma.BindUnit"(%u420r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_221()  {
          "plasma.BindUnit"(%u421r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_224()  {
          "plasma.BindUnit"(%u422r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__criterion__mseloss_bwd_sub()  {
          "plasma.BindUnit"(%u423r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_331()  {
          "plasma.BindUnit"(%u424r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_332()  {
          "plasma.BindUnit"(%u425r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u426r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_229()  {
          "plasma.BindUnit"(%u427r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_t_output0_bwd_addn0()  {
          plasma.SuperNode @ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0()  {
            "plasma.BindUnit"(%u428r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_1_0_236()  {
          "plasma.BindUnit"(%u429r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_394()  {
          "plasma.BindUnit"(%u430r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u431r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u432r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u433r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u434r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_loss_grad_b()  {
          "plasma.BindUnit"(%u435r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u436r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u437r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u438r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u439r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u440r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u441r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u442r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u443r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u444r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u445r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u446r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u447r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u448r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u449r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u450r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_loss_grad_b_rowcolpargemm_0()  {
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
        plasma.SuperNode @gbuf2u_1_0_239()  {
          "plasma.BindUnit"(%u451r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u452r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_240()  {
          "plasma.BindUnit"(%u453r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a()  {
          "plasma.BindUnit"(%u454r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u455r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u456r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u457r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u458r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u459r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u460r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u461r) : (!plasma.Unitref) -> ()
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
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_31()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_30()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_29()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_28()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_27()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_26()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_25()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_24()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_23()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_22()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_21()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_20()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_19()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_18()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_17()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_16()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_15()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_14()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_13()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_12()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_11()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_10()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_9()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_8()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_7()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_6()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_5()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_4()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_3()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_2()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_1()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u550r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u551r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2u_1_0_242()  {
          "plasma.BindUnit"(%u552r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_433()  {
          "plasma.BindUnit"(%u553r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @streaming_transpose_1_0_357()  {
          "plasma.BindUnit"(%u554r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sbuf2u_1_0_361()  {
          "plasma.BindUnit"(%u555r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @split_kernel_gbuf_1_0_362()  {
          "plasma.BindUnit"(%u556r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u557r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @biggemm_1_0_363()  {
          "plasma.BindUnit"(%u558r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u559r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u560r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_363_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_1_0_364()  {
          "plasma.BindUnit"(%u561r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u562r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u563r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_364_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_1_0_365()  {
          "plasma.BindUnit"(%u564r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u565r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u566r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_365_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @biggemm_1_0_366()  {
          "plasma.BindUnit"(%u567r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u568r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u569r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @biggemm_1_0_366_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf2u_1_0_368()  {
          "plasma.BindUnit"(%u570r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u571r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u572r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u573r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @bias_transpose_grad_1_0_370()  {
          "plasma.BindUnit"(%u574r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_398()  {
          "plasma.BindUnit"(%u575r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_accum()  {
          plasma.SuperNode @AccumPCU_31_0()  {
            "plasma.BindUnit"(%u607r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_30_0()  {
            "plasma.BindUnit"(%u606r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_29_0()  {
            "plasma.BindUnit"(%u605r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_28_0()  {
            "plasma.BindUnit"(%u604r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_27_0()  {
            "plasma.BindUnit"(%u603r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_26_0()  {
            "plasma.BindUnit"(%u602r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_25_0()  {
            "plasma.BindUnit"(%u601r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_24_0()  {
            "plasma.BindUnit"(%u600r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_23_0()  {
            "plasma.BindUnit"(%u599r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_22_0()  {
            "plasma.BindUnit"(%u598r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_21_0()  {
            "plasma.BindUnit"(%u597r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_20_0()  {
            "plasma.BindUnit"(%u596r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_19_0()  {
            "plasma.BindUnit"(%u595r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_18_0()  {
            "plasma.BindUnit"(%u594r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_17_0()  {
            "plasma.BindUnit"(%u593r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_16_0()  {
            "plasma.BindUnit"(%u592r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_15_0()  {
            "plasma.BindUnit"(%u591r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_14_0()  {
            "plasma.BindUnit"(%u590r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_13_0()  {
            "plasma.BindUnit"(%u589r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_12_0()  {
            "plasma.BindUnit"(%u588r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_11_0()  {
            "plasma.BindUnit"(%u587r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_10_0()  {
            "plasma.BindUnit"(%u586r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_9_0()  {
            "plasma.BindUnit"(%u585r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_8_0()  {
            "plasma.BindUnit"(%u584r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_7_0()  {
            "plasma.BindUnit"(%u583r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_6_0()  {
            "plasma.BindUnit"(%u582r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_5_0()  {
            "plasma.BindUnit"(%u581r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_4_0()  {
            "plasma.BindUnit"(%u580r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_3_0()  {
            "plasma.BindUnit"(%u579r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_2_0()  {
            "plasma.BindUnit"(%u578r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_1_0()  {
            "plasma.BindUnit"(%u577r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u576r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u629r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u630r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u631r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u632r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u633r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u634r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u635r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u636r) : (!plasma.Unitref) -> ()
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
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u608r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u662r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__conv_layer__conv2d_bwd_accum()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u609r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u663r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__conv_layer__conv2d_bwd_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u610r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u664r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @sbuf1a_1_0_400()  {
          "plasma.BindUnit"(%u611r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @vector_transpose_1_0_417()  {
          plasma.SuperNode @vector_transpose_1_0_417.buffer()  {
            "plasma.BindUnit"(%u612r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @realign_1_0_418()  {
          plasma.SuperNode @realign_1_0_418.gbuffer()  {
            "plasma.BindUnit"(%u613r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @realign_1_0_419()  {
          plasma.SuperNode @realign_1_0_419.gbuffer()  {
            "plasma.BindUnit"(%u614r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_420()  {
          plasma.SuperNode @transpose_1_0_420.buffer()  {
            "plasma.BindUnit"(%u615r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_401()  {
          "plasma.BindUnit"(%u616r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u617r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u618r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u619r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u620r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u621r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_358()  {
          "plasma.BindUnit"(%u622r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_149()  {
          "plasma.BindUnit"(%u623r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @lbuf1a_1_0_397()  {
          "plasma.BindUnit"(%u624r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @lbuf1a_1_0_399()  {
          "plasma.BindUnit"(%u625r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_245()  {
          "plasma.BindUnit"(%u626r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1u_1_0_246()  {
          "plasma.BindUnit"(%u627r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_250()  {
          "plasma.BindUnit"(%u628r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @permute_1_0_416()  {
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u665r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__conv_layer__conv2d_weight_permute_bwd()  {
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u666r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_31()  {
          "plasma.BindUnit"(%u667r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_32()  {
          "plasma.BindUnit"(%u668r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_18()  {
          "plasma.BindUnit"(%u669r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor()  {
          "plasma.BindUnit"(%u670r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_1:ptconvlstm__criterion__mseloss__outputs__0__grad"()  {
          "plasma.BindUnit"(%u671r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_2:inp_window_slice_1"()  {
          "plasma.BindUnit"(%u672r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_3:ptconvlstm__view__outputs__0__grad"()  {
          "plasma.BindUnit"(%u673r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_4:out_window"()  {
          "plasma.BindUnit"(%u674r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_5:ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub"()  {
          "plasma.BindUnit"(%u675r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_6:ptconvlstm__dense_layer__weight"()  {
          "plasma.BindUnit"(%u676r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_7:ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight"()  {
          "plasma.BindUnit"(%u677r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_8:inp_window"()  {
          "plasma.BindUnit"(%u678r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_9:group_18"()  {
          "plasma.BindUnit"(%u679r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_1:ptconvlstm__dense_layer__weight__grad"()  {
          "plasma.BindUnit"(%u680r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_2:ptconvlstm__dense_layer__bias__grad"()  {
          "plasma.BindUnit"(%u681r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_3:ptconvlstm__conv_layer__bias__grad"()  {
          "plasma.BindUnit"(%u682r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_4:ptconvlstm__conv_layer__weight__grad"()  {
          "plasma.BindUnit"(%u683r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s2() attributes {kControlBlockId = 2 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4352xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4352xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, %arg10: !plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>, %arg11: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, %arg12: !plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>, %arg13: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, %arg14: !plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>):  // no predecessors
      %u684r, %u684s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 684 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u685r, %u685s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 685 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u686r, %u686s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 686 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u687r, %u687s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 687 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u688r, %u688s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 688 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u689r, %u689s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU", kUnitId = 689 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u690r, %u690s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU", kUnitId = 690 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u691r, %u691s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU", kUnitId = 691 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u692r, %u692s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU", kUnitId = 692 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u693r, %u693s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw1", kUnitId = 693 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u694r, %u694s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU", kUnitId = 694 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u695r, %u695s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU", kUnitId = 695 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u696r, %u696s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU", kUnitId = 696 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u697r, %u697s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU", kUnitId = 697 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u698r, %u698s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw2", kUnitId = 698 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u699r, %u699s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU", kUnitId = 699 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u700r, %u700s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU", kUnitId = 700 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u701r, %u701s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU", kUnitId = 701 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u702r, %u702s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU", kUnitId = 702 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u703r, %u703s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw3", kUnitId = 703 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u704r, %u704s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 704 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u705r, %u705s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 705 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u706r, %u706s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 706 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u707r, %u707s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 707 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u708r, %u708s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 708 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u709r, %u709s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 709 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u710r, %u710s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 710 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u711r, %u711s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 711 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u712r, %u712s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 712 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u713r, %u713s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_dw0", kUnitId = 713 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u714r, %u714s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 714 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u715r, %u715s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 715 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u716r, %u716s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 716 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u717r, %u717s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 717 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u718r, %u718s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw0", kUnitId = 718 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u719r, %u719s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU", kUnitId = 719 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u720r, %u720s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU", kUnitId = 720 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u721r, %u721s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU", kUnitId = 721 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u722r, %u722s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU", kUnitId = 722 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u723r, %u723s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw1", kUnitId = 723 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u724r, %u724s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU", kUnitId = 724 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u725r, %u725s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU", kUnitId = 725 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u726r, %u726s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU", kUnitId = 726 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u727r, %u727s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU", kUnitId = 727 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u728r, %u728s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw2", kUnitId = 728 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u729r, %u729s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU", kUnitId = 729 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u730r, %u730s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU", kUnitId = 730 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u731r, %u731s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU", kUnitId = 731 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u732r, %u732s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU", kUnitId = 732 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u733r, %u733s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw3", kUnitId = 733 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u734r, %u734s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU", kUnitId = 734 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.ControlSink, %arg22: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u735r, %u735s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU", kUnitId = 735 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u736r, %u736s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU", kUnitId = 736 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u737r, %u737s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU", kUnitId = 737 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSrc, %arg17: !plasma.VectorSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u738r, %u738s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw4", kUnitId = 738 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u739r, %u739s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_4", kUnitId = 739 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u740r, %u740s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_15", kUnitId = 740 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u741r, %u741s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_13", kUnitId = 741 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u742r, %u742s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_12", kUnitId = 742 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u743r, %u743s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_16", kUnitId = 743 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u744r, %u744s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_14", kUnitId = 744 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u745r, %u745s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_3", kUnitId = 745 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u746r, %u746s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_38", kUnitId = 746 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u747r, %u747s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_39", kUnitId = 747 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u748r, %u748s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163", kUnitId = 748 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u749r, %u749s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164", kUnitId = 749 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u750r, %u750s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169", kUnitId = 750 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u751r, %u751s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170", kUnitId = 751 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ControlSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u752r, %u752s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175", kUnitId = 752 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u753r, %u753s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181", kUnitId = 753 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u754r, %u754s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_1", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 754 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u755r, %u755s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_2", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 755 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u756r, %u756s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_3", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 756 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u757r, %u757s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_4", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 757 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u758r, %u758s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_5", kOnChipLayout = !plasma.TL<136x64xui8:RVRM>, kUnitId = 758 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4352xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u759r, %u759s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_6", kOnChipLayout = !plasma.TL<2048x64xui8:RVRM>, kUnitId = 759 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u760r, %u760s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_7", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 760 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u761r, %u761s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_8", kOnChipLayout = !plasma.TL<512x64xui8:RVRM>, kUnitId = 761 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u762r, %u762s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_9", kOnChipLayout = !plasma.TL<512x64xui8:RVRM>, kUnitId = 762 : i64}  {
      ^bb0(%arg15: !plasma.VectorSrc, %arg16: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u763r, %u763s = plasma.unit.Vag(%arg9) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_1", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 763 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u764r, %u764s = plasma.unit.Vag(%arg10) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_2", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 764 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1048576xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u765r, %u765s = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_3", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 765 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u766r, %u766s = plasma.unit.Vag(%arg12) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_4", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 766 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1118464xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u767r, %u767s = plasma.unit.Vag(%arg13) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_5", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 767 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u768r, %u768s = plasma.unit.Vag(%arg14) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_6", kOnChipLayout = !plasma.TL<3264x64xui8:RVRM>, kUnitId = 768 : i64}  {
      ^bb0(%arg15: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256x136x3xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u684s#0, %u685s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u684s#1, %u684s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u684s#2, %u684s#7) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u685s#0, %u684s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u685s#1, %u686s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u685s#2, %u749s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u686s#0, %u687s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u686s#1, %u686s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u686s#2, %u686s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u687s#0, %u684s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u687s#1, %u686s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u687s#2, %u748s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u688s#0, %u684s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u689s#0, %u690s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u689s#1, %u689s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u689s#2, %u689s#7) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u690s#0, %u689s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u690s#1, %u691s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u691s#0, %u692s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u691s#1, %u691s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u691s#2, %u691s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u692s#0, %u689s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u692s#1, %u691s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u693s#0, %u689s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw1 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u694s#0, %u695s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u694s#1, %u694s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u694s#2, %u694s#7) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u695s#0, %u694s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u695s#1, %u696s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u696s#0, %u697s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u696s#1, %u696s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u696s#2, %u696s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u697s#0, %u694s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u697s#1, %u696s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u698s#0, %u694s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw2 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u699s#0, %u700s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u699s#1, %u699s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u699s#2, %u699s#7) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u700s#0, %u699s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u700s#1, %u701s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u701s#0, %u702s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u701s#1, %u701s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u701s#2, %u701s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u702s#0, %u699s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u702s#1, %u701s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u703s#0, %u699s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw3 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u704s#0, %u705s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u704s#1, %u704s#6) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u704s#2, %u704s#7) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u705s#0, %u704s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u705s#1, %u706s#4) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u705s#2, %u751s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u706s#0, %u707s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u706s#1, %u706s#5) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u706s#2, %u706s#6) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u707s#0, %u704s#5) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u707s#1, %u706s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u707s#2, %u750s#1) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u708s#0, %u704s#4) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u709s#0, %u710s#3) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u709s#1, %u709s#6) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u709s#2, %u709s#7) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u710s#0, %u709s#3) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u710s#1, %u711s#4) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u711s#0, %u712s#3) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u711s#1, %u711s#5) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u711s#2, %u711s#6) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u712s#0, %u709s#5) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u712s#1, %u711s#3) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u712s#2, %u752s#1) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u713s#0, %u709s#4) [ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u714s#0, %u715s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u714s#1, %u714s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u714s#2, %u714s#7) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u715s#0, %u714s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u715s#1, %u716s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u716s#0, %u717s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u716s#1, %u716s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u716s#2, %u716s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u717s#0, %u714s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u717s#1, %u716s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u717s#2, %u753s#1) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u718s#0, %u714s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u719s#0, %u720s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u719s#1, %u719s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u719s#2, %u719s#7) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u720s#0, %u719s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u720s#1, %u721s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u721s#0, %u722s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u721s#1, %u721s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u721s#2, %u721s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u722s#0, %u719s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u722s#1, %u721s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu21_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u723s#0, %u719s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw1 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u724s#0, %u725s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u724s#1, %u724s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u724s#2, %u724s#7) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u725s#0, %u724s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u725s#1, %u726s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u726s#0, %u727s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u726s#1, %u726s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u726s#2, %u726s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u727s#0, %u724s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u727s#1, %u726s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu22_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u728s#0, %u724s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw2 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u729s#0, %u730s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u729s#1, %u729s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u729s#2, %u729s#7) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u730s#0, %u729s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u730s#1, %u731s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u731s#0, %u732s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u731s#1, %u731s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u731s#2, %u731s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u732s#0, %u729s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u732s#1, %u731s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu23_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u733s#0, %u729s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw3 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u734s#0, %u735s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u734s#1, %u734s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u734s#2, %u734s#7) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u735s#0, %u734s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u735s#1, %u736s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u736s#0, %u737s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u736s#1, %u736s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u736s#2, %u736s#6) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u737s#0, %u734s#5) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u737s#1, %u736s#3) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PMU >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu24_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u738s#0, %u734s#4) [ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw4 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u739s#1, %u687s#4) [s2_fronting_pmu_load_group_4 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u740s#1, %u688s#1) [s2_fronting_pmu_load_group_15 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u741s#1, %u685s#4) [s2_fronting_pmu_load_group_13 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u742s#1, %u707s#4) [s2_fronting_pmu_load_group_12 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u743s#1, %u708s#1) [s2_fronting_pmu_load_group_16 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u743s#1, %u713s#1) [s2_fronting_pmu_load_group_16 >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u744s#1, %u705s#4) [s2_fronting_pmu_load_group_14 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u744s#1, %u710s#4) [s2_fronting_pmu_load_group_14 >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u744s#1, %u715s#4) [s2_fronting_pmu_load_group_14 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u745s#1, %u712s#4) [s2_fronting_pmu_load_group_3 >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u746s#1, %u717s#4) [s2_fronting_pmu_load_group_38 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u747s#1, %u718s#1) [s2_fronting_pmu_load_group_39 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u748s#1, %u687s#5) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#2, %u687s#6) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#1, %u692s#5) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#2, %u692s#6) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu21_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#1, %u697s#5) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#2, %u697s#6) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu22_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#1, %u702s#5) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#2, %u702s#6) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu23_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u748s#0, %u763s) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 >> LogicalAGCU_for_DRAM_output_s2_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u749s#1, %u685s#5) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#2, %u685s#6) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#1, %u690s#5) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#2, %u690s#6) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#1, %u695s#5) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#2, %u695s#6) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#1, %u700s#5) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#2, %u700s#6) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u749s#0, %u764s) [s2_backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 >> LogicalAGCU_for_DRAM_output_s2_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u750s#0, %u765s) [s2_backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169 >> LogicalAGCU_for_DRAM_output_s2_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u751s#1, %u705s#5) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#2, %u705s#6) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#1, %u710s#5) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#2, %u710s#6) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#1, %u715s#5) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#2, %u715s#6) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#1, %u720s#5) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#2, %u720s#6) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu11_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#1, %u725s#5) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#2, %u725s#6) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu12_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#1, %u730s#5) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#2, %u730s#6) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu13_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#1, %u735s#5) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#2, %u735s#6) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_OptimizerSGD_mw_pcu14_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u751s#0, %u766s) [s2_backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 >> LogicalAGCU_for_DRAM_output_s2_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u752s#0, %u767s) [s2_backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175 >> LogicalAGCU_for_DRAM_output_s2_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u753s#0, %u768s) [s2_backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181 >> LogicalAGCU_for_DRAM_output_s2_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u754s#0, %u739s#0) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u754s#1, %u739s#2) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_4] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u755s#0, %u740s#0) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u755s#1, %u740s#2) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_15] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u756s#0, %u741s#0) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u756s#1, %u741s#2) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_13] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u757s#0, %u742s#0) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u757s#1, %u742s#2) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_12] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u758s#0, %u743s#0) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u758s#1, %u743s#2) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_16] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u759s#0, %u744s#0) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u759s#1, %u744s#2) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_14] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u760s#0, %u745s#0) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u760s#1, %u745s#2) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_3] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u761s#0, %u746s#0) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_38] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u761s#1, %u746s#2) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_38] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u762s#0, %u747s#0) [LogicalAGCU_for_DRAM_input_s2_c0_9 >> s2_fronting_pmu_load_group_39] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u762s#1, %u747s#2) [LogicalAGCU_for_DRAM_input_s2_c0_9 >> s2_fronting_pmu_load_group_39] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u684r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u685r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u686r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u687r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u688r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u689r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u690r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u691r) : (!plasma.Unitref) -> ()
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
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u704r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u705r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u706r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u707r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u708r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt()  {
          "plasma.BindUnit"(%u709r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u710r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u711r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u712r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u713r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt()  {
          "plasma.BindUnit"(%u714r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u715r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u716r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u717r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u718r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u719r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u720r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u721r) : (!plasma.Unitref) -> ()
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
          plasma.SuperNode @ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_4()  {
          "plasma.BindUnit"(%u739r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_15()  {
          "plasma.BindUnit"(%u740r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_13()  {
          "plasma.BindUnit"(%u741r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_12()  {
          "plasma.BindUnit"(%u742r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_16()  {
          "plasma.BindUnit"(%u743r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_14()  {
          "plasma.BindUnit"(%u744r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_3()  {
          "plasma.BindUnit"(%u745r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_38()  {
          "plasma.BindUnit"(%u746r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_39()  {
          "plasma.BindUnit"(%u747r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163()  {
          "plasma.BindUnit"(%u748r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164()  {
          "plasma.BindUnit"(%u749r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169()  {
          "plasma.BindUnit"(%u750r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170()  {
          "plasma.BindUnit"(%u751r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175()  {
          "plasma.BindUnit"(%u752r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181()  {
          "plasma.BindUnit"(%u753r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_1:group_4"()  {
          "plasma.BindUnit"(%u754r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_2:group_15"()  {
          "plasma.BindUnit"(%u755r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_3:group_13"()  {
          "plasma.BindUnit"(%u756r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_4:group_12"()  {
          "plasma.BindUnit"(%u757r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_5:group_16"()  {
          "plasma.BindUnit"(%u758r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_6:group_14"()  {
          "plasma.BindUnit"(%u759r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_7:group_3"()  {
          "plasma.BindUnit"(%u760r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_8:ptconvlstm__conv_layer__weight"()  {
          "plasma.BindUnit"(%u761r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_9:ptconvlstm__conv_layer__weight__grad"()  {
          "plasma.BindUnit"(%u762r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_1:group_4"()  {
          "plasma.BindUnit"(%u763r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_2:group_13"()  {
          "plasma.BindUnit"(%u764r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_3:group_12"()  {
          "plasma.BindUnit"(%u765r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_4:group_14"()  {
          "plasma.BindUnit"(%u766r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_5:group_3"()  {
          "plasma.BindUnit"(%u767r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_6:ptconvlstm__conv_layer__weight"()  {
          "plasma.BindUnit"(%u768r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
}
