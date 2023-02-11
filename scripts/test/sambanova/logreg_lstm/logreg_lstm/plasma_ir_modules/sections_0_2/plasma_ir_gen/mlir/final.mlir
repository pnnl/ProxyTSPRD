module @sections_0_2 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = false}  {
  plasma.Section @s0() attributes {kControlBlockId = 0 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg10: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg11: !plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,W>, %arg12: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, %arg13: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, %arg14: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, %arg15: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, %arg16: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>, %arg17: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>, %arg18: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, %arg19: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, %arg20: !plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,W>, %arg21: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM>,0,W>):  // no predecessors
      %u0r, %u0s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_871_head1_neck0_data_pmu0", kUnitId = 0 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u1r, %u1s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_807_head1_neck0_data_pmu0", kUnitId = 1 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u2r, %u2s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_809_head1_neck0_data_pmu0", kUnitId = 2 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u3r, %u3s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_810_head1_neck0_data_pmu0", kUnitId = 3 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u4r, %u4s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_0 WBuf 0_PCU", kUnitId = 4 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u5r, %u5s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_0 WBuf 0_PMU", kUnitId = 5 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u6r, %u6s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_0_fwd_output_pmu", kUnitId = 6 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u7r, %u7s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output", kUnitId = 7 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u8r, %u8s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_0Bias_W_Bufpmu0", kUnitId = 8 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u9r, %u9s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_923_head1_neck0_data_pmu0", kUnitId = 9 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u10r, %u10s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_0 WBuf 0_PCU", kUnitId = 10 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u11r, %u11s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_0 WBuf 0_PMU", kUnitId = 11 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u12r, %u12s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_0_fwd_output_pmu", kUnitId = 12 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u13r, %u13s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output", kUnitId = 13 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u14r, %u14s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_0Bias_W_Bufpmu0", kUnitId = 14 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u15r, %u15s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_922_head1_neck0_data_pmu0", kUnitId = 15 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u16r, %u16s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_add_0_output", kUnitId = 16 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u17r, %u17s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_1 WBuf 0_PCU", kUnitId = 17 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u18r, %u18s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_1 WBuf 0_PMU", kUnitId = 18 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u19r, %u19s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_1_fwd_output_pmu", kUnitId = 19 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u20r, %u20s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output", kUnitId = 20 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u21r, %u21s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_1Bias_W_Bufpmu0", kUnitId = 21 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u22r, %u22s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_925_head1_neck0_data_pmu0", kUnitId = 22 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u23r, %u23s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_1 WBuf 0_PCU", kUnitId = 23 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u24r, %u24s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_1 WBuf 0_PMU", kUnitId = 24 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u25r, %u25s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_1_fwd_output_pmu", kUnitId = 25 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u26r, %u26s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output", kUnitId = 26 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u27r, %u27s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_1Bias_W_Bufpmu0", kUnitId = 27 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u28r, %u28s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_924_head1_neck0_data_pmu0", kUnitId = 28 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u29r, %u29s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_add_1_output", kUnitId = 29 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u30r, %u30s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_2 WBuf 0_PCU", kUnitId = 30 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u31r, %u31s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_2 WBuf 0_PMU", kUnitId = 31 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u32r, %u32s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_2_fwd_output_pmu", kUnitId = 32 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u33r, %u33s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output", kUnitId = 33 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u34r, %u34s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_2Bias_W_Bufpmu0", kUnitId = 34 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u35r, %u35s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_927_head1_neck0_data_pmu0", kUnitId = 35 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u36r, %u36s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_2 WBuf 0_PCU", kUnitId = 36 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u37r, %u37s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_2 WBuf 0_PMU", kUnitId = 37 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u38r, %u38s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_2_fwd_output_pmu", kUnitId = 38 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u39r, %u39s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output", kUnitId = 39 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u40r, %u40s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_2Bias_W_Bufpmu0", kUnitId = 40 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u41r, %u41s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_926_head1_neck0_data_pmu0", kUnitId = 41 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u42r, %u42s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_add_2_output", kUnitId = 42 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u43r, %u43s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_3 WBuf 0_PCU", kUnitId = 43 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u44r, %u44s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_3 WBuf 0_PMU", kUnitId = 44 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u45r, %u45s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_3_fwd_output_pmu", kUnitId = 45 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u46r, %u46s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output", kUnitId = 46 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u47r, %u47s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_w_3Bias_W_Bufpmu0", kUnitId = 47 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u48r, %u48s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_929_head1_neck0_data_pmu0", kUnitId = 48 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u49r, %u49s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_3 WBuf 0_PCU", kUnitId = 49 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u50r, %u50s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_3 WBuf 0_PMU", kUnitId = 50 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u51r, %u51s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_3_fwd_output_pmu", kUnitId = 51 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u52r, %u52s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output", kUnitId = 52 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u53r, %u53s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_linear_v_3Bias_W_Bufpmu0", kUnitId = 53 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u54r, %u54s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_928_head1_neck0_data_pmu0", kUnitId = 54 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u55r, %u55s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_add_3_output", kUnitId = 55 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u56r, %u56s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_i_t_output", kUnitId = 56 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u57r, %u57s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_931_head1_neck0_data_pmu0", kUnitId = 57 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u58r, %u58s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_f_t_output", kUnitId = 58 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u59r, %u59s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_930_head1_neck0_data_pmu0", kUnitId = 59 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u60r, %u60s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_g_t_output", kUnitId = 60 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u61r, %u61s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_932_head1_neck0_data_pmu0", kUnitId = 61 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u62r, %u62s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_o_t_output", kUnitId = 62 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u63r, %u63s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_935_head1_neck0_data_pmu0", kUnitId = 63 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u64r, %u64s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_811_head1_neck0_data_pmu0", kUnitId = 64 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u65r, %u65s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_mul0_output", kUnitId = 65 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u66r, %u66s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_933_head1_neck0_data_pmu0", kUnitId = 66 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u67r, %u67s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_mul1_output", kUnitId = 67 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u68r, %u68s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_934_head1_neck0_data_pmu0", kUnitId = 68 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u69r, %u69s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_cell_output", kUnitId = 69 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u70r, %u70s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_tanh_cell_output", kUnitId = 70 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u71r, %u71s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_936_head1_neck0_data_pmu0", kUnitId = 71 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u72r, %u72s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_hidden_output", kUnitId = 72 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u73r, %u73s:2 = plasma.unit.Pmu() attributes {kName = "vector_transpose_0_0_886.buffer_head1_neck0_data_pmu0", kUnitId = 73 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u74r, %u74s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PCU", kUnitId = 74 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u75r, %u75s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PMU", kUnitId = 75 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u76r, %u76s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_1_0_PCU", kUnitId = 76 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u77r, %u77s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_1_0_PMU", kUnitId = 77 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u78r, %u78s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_2_0_PCU", kUnitId = 78 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u79r, %u79s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_2_0_PMU", kUnitId = 79 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u80r, %u80s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_3_0_PCU", kUnitId = 80 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u81r, %u81s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_3_0_PMU", kUnitId = 81 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u82r, %u82s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_4_0_PCU", kUnitId = 82 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u83r, %u83s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_4_0_PMU", kUnitId = 83 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u84r, %u84s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_5_0_PCU", kUnitId = 84 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u85r, %u85s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_5_0_PMU", kUnitId = 85 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u86r, %u86s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_6_0_PCU", kUnitId = 86 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u87r, %u87s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_0_6_0_PMU", kUnitId = 87 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u88r, %u88s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PCU", kUnitId = 88 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u89r, %u89s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PMU", kUnitId = 89 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u90r, %u90s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_1_0_PCU", kUnitId = 90 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u91r, %u91s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_1_0_PMU", kUnitId = 91 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u92r, %u92s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_2_0_PCU", kUnitId = 92 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u93r, %u93s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_2_0_PMU", kUnitId = 93 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u94r, %u94s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_3_0_PCU", kUnitId = 94 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u95r, %u95s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_3_0_PMU", kUnitId = 95 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u96r, %u96s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_4_0_PCU", kUnitId = 96 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u97r, %u97s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_4_0_PMU", kUnitId = 97 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u98r, %u98s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_5_0_PCU", kUnitId = 98 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u99r, %u99s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_5_0_PMU", kUnitId = 99 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u100r, %u100s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_6_0_PCU", kUnitId = 100 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u101r, %u101s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_1_6_0_PMU", kUnitId = 101 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u102r, %u102s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PCU", kUnitId = 102 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u103r, %u103s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PMU", kUnitId = 103 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u104r, %u104s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_1_0_PCU", kUnitId = 104 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u105r, %u105s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_1_0_PMU", kUnitId = 105 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u106r, %u106s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_2_0_PCU", kUnitId = 106 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u107r, %u107s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_2_0_PMU", kUnitId = 107 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u108r, %u108s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_3_0_PCU", kUnitId = 108 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u109r, %u109s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_2_3_0_PMU", kUnitId = 109 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u110r, %u110s:10 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU", kUnitId = 110 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink, %arg30: !plasma.VectorSink, %arg31: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u111r, %u111s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PMU", kUnitId = 111 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u112r, %u112s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0", kUnitId = 112 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u113r, %u113s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1", kUnitId = 113 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u114r, %u114s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2", kUnitId = 114 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u115r, %u115s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w3_pmu3", kUnitId = 115 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u116r, %u116s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu", kUnitId = 116 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u117r, %u117s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_add_bias.wbufpmu0", kUnitId = 117 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u118r, %u118s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_add_bias.add0_output", kUnitId = 118 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u119r, %u119s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_344_head1_neck0_data_pmu0", kUnitId = 119 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u120r, %u120s:8 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_974_head0_head1_neck0_data_pmu0", kUnitId = 120 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u121r, %u121s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_819_head1_neck0_data_pmu0", kUnitId = 121 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSink, %arg25: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u122r, %u122s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_813_head1_neck0_data_pmu0", kUnitId = 122 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u123r, %u123s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_814_head1_neck0_data_pmu0", kUnitId = 123 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u124r, %u124s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_815_head1_neck0_data_pmu0", kUnitId = 124 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u125r, %u125s:3 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_816_head1_neck0_data_pmu0", kUnitId = 125 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u126r, %u126s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_812_head1_neck0_data_pmu0", kUnitId = 126 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u127r, %u127s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_820_head1_neck0_data_pmu0", kUnitId = 127 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u128r, %u128s:3 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_818_head1_neck0_data_pmu0", kUnitId = 128 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u129r, %u129s:3 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_817_head1_neck0_data_pmu0", kUnitId = 129 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u130r, %u130s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_921_head1_neck0_data_pmu0", kUnitId = 130 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u131r, %u131s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_821_head1_neck0_data_pmu0", kUnitId = 131 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink, %arg24: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u132r, %u132s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_822_head1_neck0_data_pmu0", kUnitId = 132 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink, %arg24: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u133r, %u133s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_808_head1_neck0_data_pmu0", kUnitId = 133 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink, %arg24: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u134r, %u134s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_914_head1_neck0_data_pmu0", kUnitId = 134 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u135r, %u135s:3 = plasma.unit.Pmu() attributes {kName = "realign_0_0_889.gbuffer_head1_neck0_data_pmu0", kUnitId = 135 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u136r, %u136s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_823_head1_neck0_data_pmu0", kUnitId = 136 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u137r, %u137s:5 = plasma.unit.Pcu() attributes {kName = "sub_0_0_558_output", kUnitId = 137 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u138r, %u138s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_975_head0_head1_neck0_data_pmu0", kUnitId = 138 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u139r, %u139s:5 = plasma.unit.Pcu() attributes {kName = "mul_0_0_559_output", kUnitId = 139 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u140r, %u140s:8 = plasma.unit.Pcu() attributes {kName = "mean_unalign_0_0_560_output", kUnitId = 140 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSrc, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink, %arg29: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u141r, %u141s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_824_head1_neck0_data_pmu0", kUnitId = 141 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u142r, %u142s:12 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0", kUnitId = 142 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink, %arg29: !plasma.VectorSink, %arg30: !plasma.ControlSink, %arg31: !plasma.ControlSink, %arg32: !plasma.ControlSink, %arg33: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u143r, %u143s:12 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0", kUnitId = 143 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink, %arg29: !plasma.VectorSink, %arg30: !plasma.ControlSink, %arg31: !plasma.ControlSink, %arg32: !plasma.ControlSink, %arg33: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u144r, %u144s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_334_D_0_0", kUnitId = 144 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ScalarSink, %arg25: !plasma.ControlSink, %arg26: !plasma.ControlSink, %arg27: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u145r, %u145s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1u_0_0_335_D_0_0", kUnitId = 145 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.ScalarSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u146r, %u146s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_342_D_0_0", kUnitId = 146 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u147r, %u147s:4 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_32", kUnitId = 147 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u148r, %u148s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_4", kUnitId = 148 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u149r, %u149s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_27", kUnitId = 149 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u150r, %u150s:4 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_34", kUnitId = 150 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u151r, %u151s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_26", kUnitId = 151 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u152r, %u152s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_25", kUnitId = 152 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u153r, %u153s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_24", kUnitId = 153 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u154r, %u154s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_23", kUnitId = 154 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u155r, %u155s:4 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_45", kUnitId = 155 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u156r, %u156s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerBacking_pmu", kUnitId = 156 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.ScalarSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u157r, %u157s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor", kUnitId = 157 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u158r, %u158s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1", kUnitId = 158 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u159r, %u159s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu", kUnitId = 159 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.ScalarSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u160r, %u160s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_1", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 160 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u161r, %u161s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_2", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 161 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u162r, %u162s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_3", kOnChipLayout = !plasma.TL<1xi32:RVRM>, kUnitId = 162 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u163r, %u163s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_4", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 163 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u164r, %u164s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 164 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u165r, %u165s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_6", kOnChipLayout = !plasma.TL<136x60xbf16:CVCM:64>, kUnitId = 165 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u166r, %u166s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_7", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 166 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u167r, %u167s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_8", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 167 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u168r, %u168s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_9", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 168 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u169r, %u169s:2 = plasma.unit.Vag(%arg9) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_10", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 169 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u170r, %u170s:2 = plasma.unit.Vag(%arg10) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_11", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM>, kUnitId = 170 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u171r, %u171s:2 = plasma.unit.Vag(%arg20) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_1", kOnChipLayout = !plasma.TL<60x64xbf16:RVRM>, kUnitId = 171 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.ScalarSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSink)
      %u172r, %u172s = plasma.unit.Vag(%arg12) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_2", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 172 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u173r, %u173s = plasma.unit.Vag(%arg13) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_3", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 173 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u174r, %u174s = plasma.unit.Vag(%arg14) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_4", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 174 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u175r, %u175s = plasma.unit.Vag(%arg15) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_5", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 175 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u176r, %u176s = plasma.unit.Vag(%arg16) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_6", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 176 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u177r, %u177s = plasma.unit.Vag(%arg17) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_7", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 177 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u178r, %u178s = plasma.unit.Vag(%arg18) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_8", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 178 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u179r, %u179s = plasma.unit.Vag(%arg19) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_9", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 179 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u180r, %u180s:2 = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_10", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM>, kUnitId = 180 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.ScalarSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSink)
      %u181r, %u181s = plasma.unit.Vag(%arg21) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_11", kOnChipLayout = !plasma.TL<1xbf16:RVRM:64>, kUnitId = 181 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u0s#1, %u1s#1) [gbuf1a_0_0_871_head1_neck0_data_pmu0 >> gbuf1a_0_0_807_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u0s#1, %u133s#1) [gbuf1a_0_0_871_head1_neck0_data_pmu0 >> gbuf1a_0_0_808_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u1s#0, %u142s#6) [gbuf1a_0_0_807_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#0, %u143s#6) [gbuf1a_0_0_809_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#1, %u147s#2) [gbuf1a_0_0_809_head1_neck0_data_pmu0 >> s0_fronting_pmu_load_group_32] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u3s#0, %u4s#4) [gbuf2a_0_0_810_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u17s#4) [gbuf2a_0_0_810_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u30s#4) [gbuf2a_0_0_810_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u43s#4) [gbuf2a_0_0_810_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#1, %u150s#2) [gbuf2a_0_0_810_head1_neck0_data_pmu0 >> s0_fronting_pmu_load_group_34] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u4s#0, %u4s#2) [ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u4s#1, %u6s#1) [ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u5s#0, %u4s#3) [ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u6s#0, %u7s#3) [ptconvlstm__lstm_layer__lstm_linear_w_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u7s#0, %u7s#2) [ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u7s#1, %u9s#1) [ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output >> gbuf1a_0_0_923_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u8s#0, %u7s#4) [ptconvlstm__lstm_layer__lstm_linear_w_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#0, %u16s#3) [gbuf1a_0_0_923_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#0, %u10s#2) [ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u10s#1, %u12s#1) [ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u10s#3) [ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u12s#0, %u13s#3) [ptconvlstm__lstm_layer__lstm_linear_v_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#0, %u13s#2) [ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u13s#1, %u15s#1) [ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output >> gbuf1a_0_0_922_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#0, %u13s#4) [ptconvlstm__lstm_layer__lstm_linear_v_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#0, %u16s#4) [gbuf1a_0_0_922_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#0, %u16s#2) [ptconvlstm__lstm_layer__lstm_add_0_output >> ptconvlstm__lstm_layer__lstm_add_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u16s#1, %u56s#3) [ptconvlstm__lstm_layer__lstm_add_0_output >> ptconvlstm__lstm_layer__lstm_i_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u17s#0, %u17s#2) [ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u17s#1, %u19s#1) [ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u18s#0, %u17s#3) [ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u19s#0, %u20s#3) [ptconvlstm__lstm_layer__lstm_linear_w_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u20s#0, %u20s#2) [ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u20s#1, %u22s#1) [ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output >> gbuf1a_0_0_925_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#0, %u20s#4) [ptconvlstm__lstm_layer__lstm_linear_w_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u22s#0, %u29s#3) [gbuf1a_0_0_925_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#0, %u23s#2) [ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u23s#1, %u25s#1) [ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u24s#0, %u23s#3) [ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u25s#0, %u26s#3) [ptconvlstm__lstm_layer__lstm_linear_v_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#0, %u26s#2) [ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u26s#1, %u28s#1) [ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output >> gbuf1a_0_0_924_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u27s#0, %u26s#4) [ptconvlstm__lstm_layer__lstm_linear_v_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u28s#0, %u29s#4) [gbuf1a_0_0_924_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u29s#0, %u29s#2) [ptconvlstm__lstm_layer__lstm_add_1_output >> ptconvlstm__lstm_layer__lstm_add_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u29s#1, %u58s#3) [ptconvlstm__lstm_layer__lstm_add_1_output >> ptconvlstm__lstm_layer__lstm_f_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u30s#0, %u30s#2) [ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u30s#1, %u32s#1) [ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u31s#0, %u30s#3) [ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u33s#3) [ptconvlstm__lstm_layer__lstm_linear_w_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#0, %u33s#2) [ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#1, %u35s#1) [ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output >> gbuf1a_0_0_927_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u34s#0, %u33s#4) [ptconvlstm__lstm_layer__lstm_linear_w_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u35s#0, %u42s#3) [gbuf1a_0_0_927_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u36s#0, %u36s#2) [ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u36s#1, %u38s#1) [ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u37s#0, %u36s#3) [ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u38s#0, %u39s#3) [ptconvlstm__lstm_layer__lstm_linear_v_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u39s#0, %u39s#2) [ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u39s#1, %u41s#1) [ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output >> gbuf1a_0_0_926_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u40s#0, %u39s#4) [ptconvlstm__lstm_layer__lstm_linear_v_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u41s#0, %u42s#4) [gbuf1a_0_0_926_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u42s#0, %u42s#2) [ptconvlstm__lstm_layer__lstm_add_2_output >> ptconvlstm__lstm_layer__lstm_add_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#1, %u60s#3) [ptconvlstm__lstm_layer__lstm_add_2_output >> ptconvlstm__lstm_layer__lstm_g_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u43s#0, %u43s#2) [ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u43s#1, %u45s#1) [ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u44s#0, %u43s#3) [ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u45s#0, %u46s#3) [ptconvlstm__lstm_layer__lstm_linear_w_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#0, %u46s#2) [ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#1, %u48s#1) [ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output >> gbuf1a_0_0_929_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#0, %u46s#4) [ptconvlstm__lstm_layer__lstm_linear_w_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u48s#0, %u55s#3) [gbuf1a_0_0_929_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u49s#0, %u49s#2) [ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u49s#1, %u51s#1) [ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u50s#0, %u49s#3) [ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u51s#0, %u52s#3) [ptconvlstm__lstm_layer__lstm_linear_v_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u52s#0, %u52s#2) [ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u52s#1, %u54s#1) [ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output >> gbuf1a_0_0_928_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u53s#0, %u52s#4) [ptconvlstm__lstm_layer__lstm_linear_v_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u54s#0, %u55s#4) [gbuf1a_0_0_928_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u55s#0, %u55s#2) [ptconvlstm__lstm_layer__lstm_add_3_output >> ptconvlstm__lstm_layer__lstm_add_3_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u55s#1, %u62s#3) [ptconvlstm__lstm_layer__lstm_add_3_output >> ptconvlstm__lstm_layer__lstm_o_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#0, %u56s#2) [ptconvlstm__lstm_layer__lstm_i_t_output >> ptconvlstm__lstm_layer__lstm_i_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u56s#1, %u57s#1) [ptconvlstm__lstm_layer__lstm_i_t_output >> gbuf1a_0_0_931_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#1, %u122s#1) [ptconvlstm__lstm_layer__lstm_i_t_output >> gbuf2a_0_0_813_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u57s#0, %u67s#3) [gbuf1a_0_0_931_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u58s#0, %u58s#2) [ptconvlstm__lstm_layer__lstm_f_t_output >> ptconvlstm__lstm_layer__lstm_f_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u58s#1, %u59s#1) [ptconvlstm__lstm_layer__lstm_f_t_output >> gbuf1a_0_0_930_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u58s#1, %u123s#1) [ptconvlstm__lstm_layer__lstm_f_t_output >> gbuf2a_0_0_814_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u59s#0, %u65s#3) [gbuf1a_0_0_930_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#0, %u60s#2) [ptconvlstm__lstm_layer__lstm_g_t_output >> ptconvlstm__lstm_layer__lstm_g_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u60s#1, %u61s#1) [ptconvlstm__lstm_layer__lstm_g_t_output >> gbuf1a_0_0_932_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#1, %u124s#1) [ptconvlstm__lstm_layer__lstm_g_t_output >> gbuf2a_0_0_815_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u61s#0, %u67s#4) [gbuf1a_0_0_932_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#0, %u62s#2) [ptconvlstm__lstm_layer__lstm_o_t_output >> ptconvlstm__lstm_layer__lstm_o_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u62s#1, %u63s#1) [ptconvlstm__lstm_layer__lstm_o_t_output >> gbuf1a_0_0_935_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#1, %u125s#2) [ptconvlstm__lstm_layer__lstm_o_t_output >> gbuf2a_0_0_816_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u63s#0, %u72s#3) [gbuf1a_0_0_935_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u64s#0, %u65s#4) [gbuf1a_0_0_811_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u65s#0, %u65s#2) [ptconvlstm__lstm_layer__lstm_mul0_output >> ptconvlstm__lstm_layer__lstm_mul0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u65s#1, %u66s#1) [ptconvlstm__lstm_layer__lstm_mul0_output >> gbuf1a_0_0_933_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u66s#0, %u69s#3) [gbuf1a_0_0_933_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u67s#0, %u67s#2) [ptconvlstm__lstm_layer__lstm_mul1_output >> ptconvlstm__lstm_layer__lstm_mul1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u67s#1, %u68s#1) [ptconvlstm__lstm_layer__lstm_mul1_output >> gbuf1a_0_0_934_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u68s#0, %u69s#4) [gbuf1a_0_0_934_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u69s#0, %u69s#2) [ptconvlstm__lstm_layer__lstm_cell_output >> ptconvlstm__lstm_layer__lstm_cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u69s#1, %u70s#3) [ptconvlstm__lstm_layer__lstm_cell_output >> ptconvlstm__lstm_layer__lstm_tanh_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u69s#1, %u129s#2) [ptconvlstm__lstm_layer__lstm_cell_output >> gbuf2a_0_0_817_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u70s#0, %u70s#2) [ptconvlstm__lstm_layer__lstm_tanh_cell_output >> ptconvlstm__lstm_layer__lstm_tanh_cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u70s#1, %u71s#1) [ptconvlstm__lstm_layer__lstm_tanh_cell_output >> gbuf1a_0_0_936_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u71s#0, %u72s#4) [gbuf1a_0_0_936_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u72s#0, %u72s#2) [ptconvlstm__lstm_layer__lstm_hidden_output >> ptconvlstm__lstm_layer__lstm_hidden_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u72s#1, %u73s#1) [ptconvlstm__lstm_layer__lstm_hidden_output >> vector_transpose_0_0_886_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u72s#1, %u128s#2) [ptconvlstm__lstm_layer__lstm_hidden_output >> gbuf2a_0_0_818_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u73s#0, %u144s#5) [vector_transpose_0_0_886_buffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u73s#0, %u121s#2) [vector_transpose_0_0_886_buffer_head1_neck0_data_pmu0 >> gbuf2a_0_0_819_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u74s#0, %u74s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u74s#1, %u112s#4) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u75s#0, %u74s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u76s#0, %u76s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_1_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u77s#0, %u76s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_1_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u78s#0, %u78s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_2_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u79s#0, %u78s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_2_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u80s#0, %u80s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_3_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u81s#0, %u80s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_3_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u82s#0, %u82s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_4_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u83s#0, %u82s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_4_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u84s#0, %u84s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_5_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u85s#0, %u84s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_5_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u86s#0, %u86s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_6_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u87s#0, %u86s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_0_6_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u88s#0, %u88s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u113s#4) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u89s#0, %u88s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u90s#0, %u90s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_1_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u91s#0, %u90s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_1_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u92s#0, %u92s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_2_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u93s#0, %u92s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_2_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u94s#0, %u94s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_3_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u95s#0, %u94s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_3_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u96s#0, %u96s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_4_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u97s#0, %u96s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_4_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_4_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u98s#0, %u98s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_5_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#0, %u98s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_5_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_5_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u100s#0, %u100s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_6_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u100s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_1_6_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_6_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u102s#0, %u102s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u102s#1, %u114s#4) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PCU >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u103s#0, %u102s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u104s#0, %u104s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_1_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#0, %u104s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_1_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u106s#0, %u106s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_2_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u107s#0, %u106s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_2_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_2_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u108s#0, %u108s#2) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_3_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u109s#0, %u108s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_2_3_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_3_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u110s#0, %u110s#4) [ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#1, %u110s#5) [ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#0, %u110s#6) [ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#2, %u110s#7) [ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#3, %u115s#3) [ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w3_pmu3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u111s#0, %u110s#8) [ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PMU >> ptconvlstm__dense_layer__linear_wo_bias_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u112s#0, %u116s#3) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u112s#1, %u74s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u112s#1, %u76s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u112s#1, %u78s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u112s#1, %u80s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u112s#1, %u82s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u112s#1, %u84s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u112s#1, %u86s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#0, %u116s#3) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u113s#1, %u88s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u90s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u92s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u94s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u96s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_4_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u98s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_5_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u100s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_1_6_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u114s#0, %u116s#3) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u114s#1, %u102s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u114s#1, %u104s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u114s#1, %u106s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_2_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u114s#1, %u108s#5) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_2_3_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u115s#0, %u116s#3) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w3_pmu3 >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u116s#0, %u112s#2) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#1, %u112s#3) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#0, %u113s#2) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#1, %u113s#3) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#0, %u114s#2) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#1, %u114s#3) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w2_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#0, %u115s#1) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#1, %u115s#2) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_data_w3_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u116s#2, %u118s#4) [ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu >> ptconvlstm__dense_layer__linear_add_bias_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u117s#0, %u118s#3) [ptconvlstm__dense_layer__linear_add_bias_wbufpmu0 >> ptconvlstm__dense_layer__linear_add_bias_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u118s#0, %u118s#2) [ptconvlstm__dense_layer__linear_add_bias_add0_output >> ptconvlstm__dense_layer__linear_add_bias_add0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u118s#1, %u119s#3) [ptconvlstm__dense_layer__linear_add_bias_add0_output >> gbuf2u_0_0_344_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u119s#0, %u120s#3) [gbuf2u_0_0_344_head1_neck0_data_pmu0 >> gbuf2a_0_0_974_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u119s#1, %u116s#4) [gbuf2u_0_0_344_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u119s#2, %u116s#5) [gbuf2u_0_0_344_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_stage_buf_head1_neck0_rob_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u120s#0, %u130s#3) [gbuf2a_0_0_974_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_921_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u120s#1, %u127s#3) [gbuf2a_0_0_974_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_820_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u120s#2, %u119s#4) [gbuf2a_0_0_974_head0_head1_neck0_data_pmu0 >> gbuf2u_0_0_344_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u121s#0, %u142s#10) [gbuf2a_0_0_819_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u121s#0, %u143s#10) [gbuf2a_0_0_819_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u121s#0, %u3s#3) [gbuf2a_0_0_819_head1_neck0_data_pmu0 >> gbuf2a_0_0_810_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u121s#1, %u156s#5) [gbuf2a_0_0_819_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerBacking_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u122s#0, %u172s) [gbuf2a_0_0_813_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u123s#0, %u173s) [gbuf2a_0_0_814_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u124s#0, %u174s) [gbuf2a_0_0_815_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u125s#1, %u142s#11) [gbuf2a_0_0_816_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u125s#0, %u175s) [gbuf2a_0_0_816_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u126s#0, %u176s) [gbuf2a_0_0_812_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u127s#1, %u120s#4) [gbuf2a_0_0_820_head1_neck0_data_pmu0 >> gbuf2a_0_0_974_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u127s#2, %u120s#5) [gbuf2a_0_0_820_head1_neck0_data_pmu0 >> gbuf2a_0_0_974_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u127s#0, %u177s) [gbuf2a_0_0_820_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u128s#0, %u142s#6) [gbuf2a_0_0_818_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u128s#1, %u142s#8) [gbuf2a_0_0_818_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u128s#1, %u143s#11) [gbuf2a_0_0_818_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u128s#1, %u3s#4) [gbuf2a_0_0_818_head1_neck0_data_pmu0 >> gbuf2a_0_0_810_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u129s#0, %u143s#6) [gbuf2a_0_0_817_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u129s#1, %u143s#8) [gbuf2a_0_0_817_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u129s#1, %u3s#5) [gbuf2a_0_0_817_head1_neck0_data_pmu0 >> gbuf2a_0_0_810_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u130s#0, %u137s#3) [gbuf2a_0_0_921_head1_neck0_data_pmu0 >> sub_0_0_558_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u130s#1, %u120s#6) [gbuf2a_0_0_921_head1_neck0_data_pmu0 >> gbuf2a_0_0_974_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u130s#2, %u120s#7) [gbuf2a_0_0_921_head1_neck0_data_pmu0 >> gbuf2a_0_0_974_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u131s#0, %u157s#2) [gbuf1a_0_0_821_head1_neck0_data_pmu0 >> s0_backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u132s#0, %u158s#2) [gbuf1a_0_0_822_head1_neck0_data_pmu0 >> s0_backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u133s#0, %u159s#5) [gbuf1a_0_0_808_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u134s#0, %u135s#2) [gbuf1a_0_0_914_head1_neck0_data_pmu0 >> realign_0_0_889_gbuffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u134s#1, %u155s#2) [gbuf1a_0_0_914_head1_neck0_data_pmu0 >> s0_fronting_pmu_load_group_45] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u135s#0, %u136s#1) [realign_0_0_889_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_823_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u135s#1, %u134s#2) [realign_0_0_889_gbuffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_914_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u136s#0, %u137s#4) [gbuf1a_0_0_823_head1_neck0_data_pmu0 >> sub_0_0_558_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u137s#0, %u137s#2) [sub_0_0_558_output >> sub_0_0_558_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u137s#1, %u138s#2) [sub_0_0_558_output >> gbuf1a_0_0_975_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u138s#0, %u139s#3) [gbuf1a_0_0_975_head0_head1_neck0_data_pmu0 >> mul_0_0_559_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u138s#1, %u139s#4) [gbuf1a_0_0_975_head0_head1_neck0_data_pmu0 >> mul_0_0_559_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u139s#0, %u139s#2) [mul_0_0_559_output >> mul_0_0_559_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u139s#1, %u140s#7) [mul_0_0_559_output >> mean_unalign_0_0_560_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u140s#0, %u140s#4) [mean_unalign_0_0_560_output >> mean_unalign_0_0_560_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u140s#1, %u140s#5) [mean_unalign_0_0_560_output >> mean_unalign_0_0_560_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u140s#2, %u140s#6) [mean_unalign_0_0_560_output >> mean_unalign_0_0_560_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u140s#3, %u141s#1) [mean_unalign_0_0_560_output >> gbuf1a_0_0_824_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u141s#0, %u181s) [gbuf1a_0_0_824_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u142s#0, %u142s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u142s#1, %u142s#5) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u142s#2, %u10s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u142s#2, %u23s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u142s#2, %u36s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u142s#2, %u49s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u142s#3, %u131s#1) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_821_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u143s#0, %u143s#4) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u143s#1, %u143s#5) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u143s#2, %u64s#1) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_811_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u143s#2, %u126s#1) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_812_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u143s#3, %u132s#1) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_822_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u144s#0, %u146s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u144s#1, %u142s#9) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u144s#1, %u143s#9) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u144s#1, %u3s#2) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> gbuf2a_0_0_810_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u145s#1, %u144s#2) [LogregTorchSamba_partition_0_0__tbuf1u_0_0_335_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u146s#0, %u144s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u146s#1, %u144s#4) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u146s#2, %u74s#4) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u147s#1, %u2s#2) [s0_fronting_pmu_load_group_32 >> gbuf1a_0_0_809_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u148s#1, %u75s#1) [s0_fronting_pmu_load_group_4 >> ptconvlstm__dense_layer__linear_wo_bias_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u149s#1, %u117s#1) [s0_fronting_pmu_load_group_27 >> ptconvlstm__dense_layer__linear_add_bias_wbufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u150s#1, %u3s#6) [s0_fronting_pmu_load_group_34 >> gbuf2a_0_0_810_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u151s#1, %u5s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u151s#1, %u18s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u151s#1, %u31s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u151s#1, %u44s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u152s#1, %u11s#1) [s0_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u152s#1, %u24s#1) [s0_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u152s#1, %u37s#1) [s0_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u152s#1, %u50s#1) [s0_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u153s#1, %u8s#1) [s0_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_linear_w_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u153s#1, %u21s#1) [s0_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_linear_w_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u153s#1, %u34s#1) [s0_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_linear_w_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u153s#1, %u47s#1) [s0_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_linear_w_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u154s#1, %u14s#1) [s0_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_linear_v_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u154s#1, %u27s#1) [s0_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_linear_v_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u154s#1, %u40s#1) [s0_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_linear_v_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u154s#1, %u53s#1) [s0_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_linear_v_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u155s#1, %u134s#3) [s0_fronting_pmu_load_group_45 >> gbuf1a_0_0_914_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u156s#1, %u121s#3) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerBacking_pmu >> gbuf2a_0_0_819_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u156s#2, %u156s#4) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerBacking_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerBacking_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u156s#0, %u171s#0) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u156s#3, %u171s#1) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u157s#1, %u131s#2) [s0_backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor >> gbuf1a_0_0_821_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u157s#0, %u178s) [s0_backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor >> LogicalAGCU_for_DRAM_output_s0_c0_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u158s#1, %u132s#2) [s0_backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1 >> gbuf1a_0_0_822_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u158s#0, %u179s) [s0_backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1 >> LogicalAGCU_for_DRAM_output_s0_c0_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u159s#1, %u133s#2) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> gbuf1a_0_0_808_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u159s#2, %u159s#4) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u159s#0, %u180s#0) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u159s#3, %u180s#1) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_10] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u160s#0, %u0s#0) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> gbuf1a_0_0_871_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u160s#1, %u0s#2) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> gbuf1a_0_0_871_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u161s#0, %u147s#0) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> s0_fronting_pmu_load_group_32] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u161s#1, %u147s#3) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> s0_fronting_pmu_load_group_32] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u162s#0, %u145s#0) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__tbuf1u_0_0_335_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u162s#1, %u145s#2) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__tbuf1u_0_0_335_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u163s#0, %u148s#0) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u163s#1, %u148s#2) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_4] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u164s#0, %u149s#0) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u164s#1, %u149s#2) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_27] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u165s#0, %u150s#0) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> s0_fronting_pmu_load_group_34] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u165s#1, %u150s#3) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> s0_fronting_pmu_load_group_34] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u166s#0, %u151s#0) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> s0_fronting_pmu_load_group_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u166s#1, %u151s#2) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> s0_fronting_pmu_load_group_26] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u167s#0, %u152s#0) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_25] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u167s#1, %u152s#2) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_25] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u168s#0, %u153s#0) [LogicalAGCU_for_DRAM_input_s0_c0_9 >> s0_fronting_pmu_load_group_24] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u168s#1, %u153s#2) [LogicalAGCU_for_DRAM_input_s0_c0_9 >> s0_fronting_pmu_load_group_24] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u169s#0, %u154s#0) [LogicalAGCU_for_DRAM_input_s0_c0_10 >> s0_fronting_pmu_load_group_23] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u169s#1, %u154s#2) [LogicalAGCU_for_DRAM_input_s0_c0_10 >> s0_fronting_pmu_load_group_23] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u170s#0, %u155s#0) [LogicalAGCU_for_DRAM_input_s0_c0_11 >> s0_fronting_pmu_load_group_45] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u170s#1, %u155s#3) [LogicalAGCU_for_DRAM_input_s0_c0_11 >> s0_fronting_pmu_load_group_45] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_0_0_871()  {
          "plasma.BindUnit"(%u0r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_807()  {
          "plasma.BindUnit"(%u1r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_809()  {
          "plasma.BindUnit"(%u2r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_810()  {
          "plasma.BindUnit"(%u3r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_0()  {
          "plasma.BindUnit"(%u4r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u5r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u6r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_0Bias_W_Buf()  {
            "plasma.BindUnit"(%u8r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias()  {
            "plasma.BindUnit"(%u7r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_0W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_923()  {
          "plasma.BindUnit"(%u9r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_0()  {
          "plasma.BindUnit"(%u10r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u11r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u12r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_0Bias_W_Buf()  {
            "plasma.BindUnit"(%u14r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias()  {
            "plasma.BindUnit"(%u13r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_0W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_922()  {
          "plasma.BindUnit"(%u15r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_add_0()  {
          "plasma.BindUnit"(%u16r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_1()  {
          "plasma.BindUnit"(%u17r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u18r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u19r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_1Bias_W_Buf()  {
            "plasma.BindUnit"(%u21r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias()  {
            "plasma.BindUnit"(%u20r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_1W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_925()  {
          "plasma.BindUnit"(%u22r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_1()  {
          "plasma.BindUnit"(%u23r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u24r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u25r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_1Bias_W_Buf()  {
            "plasma.BindUnit"(%u27r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias()  {
            "plasma.BindUnit"(%u26r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_1W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_924()  {
          "plasma.BindUnit"(%u28r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_add_1()  {
          "plasma.BindUnit"(%u29r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_2()  {
          "plasma.BindUnit"(%u30r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u31r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u32r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_2Bias_W_Buf()  {
            "plasma.BindUnit"(%u34r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias()  {
            "plasma.BindUnit"(%u33r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_2W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_927()  {
          "plasma.BindUnit"(%u35r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_2()  {
          "plasma.BindUnit"(%u36r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u37r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u38r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_2Bias_W_Buf()  {
            "plasma.BindUnit"(%u40r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias()  {
            "plasma.BindUnit"(%u39r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_2W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_926()  {
          "plasma.BindUnit"(%u41r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_add_2()  {
          "plasma.BindUnit"(%u42r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_3()  {
          "plasma.BindUnit"(%u43r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u44r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u45r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_3Bias_W_Buf()  {
            "plasma.BindUnit"(%u47r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias()  {
            "plasma.BindUnit"(%u46r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_w_3W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_929()  {
          "plasma.BindUnit"(%u48r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_3()  {
          "plasma.BindUnit"(%u49r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u50r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u51r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_3Bias_W_Buf()  {
            "plasma.BindUnit"(%u53r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias()  {
            "plasma.BindUnit"(%u52r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_linear_v_3W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_928()  {
          "plasma.BindUnit"(%u54r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_add_3()  {
          "plasma.BindUnit"(%u55r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_i_t()  {
          "plasma.BindUnit"(%u56r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_931()  {
          "plasma.BindUnit"(%u57r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_f_t()  {
          "plasma.BindUnit"(%u58r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_930()  {
          "plasma.BindUnit"(%u59r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_g_t()  {
          "plasma.BindUnit"(%u60r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_932()  {
          "plasma.BindUnit"(%u61r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_o_t()  {
          "plasma.BindUnit"(%u62r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_935()  {
          "plasma.BindUnit"(%u63r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_811()  {
          "plasma.BindUnit"(%u64r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_mul0()  {
          "plasma.BindUnit"(%u65r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_933()  {
          "plasma.BindUnit"(%u66r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_mul1()  {
          "plasma.BindUnit"(%u67r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_934()  {
          "plasma.BindUnit"(%u68r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_cell()  {
          "plasma.BindUnit"(%u69r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_tanh_cell()  {
          "plasma.BindUnit"(%u70r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_936()  {
          "plasma.BindUnit"(%u71r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_hidden()  {
          "plasma.BindUnit"(%u72r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @vector_transpose_0_0_886()  {
          plasma.SuperNode @vector_transpose_0_0_886.buffer()  {
            "plasma.BindUnit"(%u73r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_wo_bias()  {
          "plasma.BindUnit"(%u74r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u75r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u76r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u77r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u78r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u79r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u80r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u81r) : (!plasma.Unitref) -> ()
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
          "plasma.BindUnit"(%u95r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u96r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u97r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u98r) : (!plasma.Unitref) -> ()
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
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_wo_bias_rowcolpargemm_3()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_wo_bias_rowcolpargemm_2()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_wo_bias_rowcolpargemm_1()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_wo_bias_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_stage_buf()  {
          "plasma.BindUnit"(%u112r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u113r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u114r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u115r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u116r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_add_bias()  {
          plasma.SuperNode @ptconvlstm__dense_layer__linear_add_bias.add0()  {
            "plasma.BindUnit"(%u118r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_add_bias.wbuf()  {
            "plasma.BindUnit"(%u117r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_0_0_344()  {
          "plasma.BindUnit"(%u119r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_974()  {
          "plasma.BindUnit"(%u120r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_819()  {
          "plasma.BindUnit"(%u121r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_813()  {
          "plasma.BindUnit"(%u122r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_814()  {
          "plasma.BindUnit"(%u123r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_815()  {
          "plasma.BindUnit"(%u124r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_816()  {
          "plasma.BindUnit"(%u125r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_812()  {
          "plasma.BindUnit"(%u126r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_820()  {
          "plasma.BindUnit"(%u127r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_818()  {
          "plasma.BindUnit"(%u128r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_817()  {
          "plasma.BindUnit"(%u129r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_921()  {
          "plasma.BindUnit"(%u130r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_821()  {
          "plasma.BindUnit"(%u131r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_822()  {
          "plasma.BindUnit"(%u132r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_808()  {
          "plasma.BindUnit"(%u133r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_914()  {
          "plasma.BindUnit"(%u134r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @realign_0_0_889()  {
          plasma.SuperNode @realign_0_0_889.gbuffer()  {
            "plasma.BindUnit"(%u135r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_0_0_823()  {
          "plasma.BindUnit"(%u136r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sub_0_0_558()  {
          "plasma.BindUnit"(%u137r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_975()  {
          "plasma.BindUnit"(%u138r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mul_0_0_559()  {
          "plasma.BindUnit"(%u139r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mean_unalign_0_0_560()  {
          "plasma.BindUnit"(%u140r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_824()  {
          "plasma.BindUnit"(%u141r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_hidden_loop_buffer()  {
          "plasma.BindUnit"(%u142r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_cell_loop_buffer()  {
          "plasma.BindUnit"(%u143r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_0_0_334()  {
          "plasma.BindUnit"(%u144r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1u_0_0_335()  {
          "plasma.BindUnit"(%u145r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_0_0_342()  {
          "plasma.BindUnit"(%u146r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_32()  {
          "plasma.BindUnit"(%u147r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_4()  {
          "plasma.BindUnit"(%u148r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_27()  {
          "plasma.BindUnit"(%u149r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_34()  {
          "plasma.BindUnit"(%u150r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_26()  {
          "plasma.BindUnit"(%u151r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_25()  {
          "plasma.BindUnit"(%u152r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_24()  {
          "plasma.BindUnit"(%u153r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_23()  {
          "plasma.BindUnit"(%u154r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_45()  {
          "plasma.BindUnit"(%u155r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler()  {
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTiler()  {
            "plasma.BindUnit"(%u156r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tilerSubStoreTilerTiler() {}
          }
        }
        plasma.SuperNode @s0.backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor()  {
          "plasma.BindUnit"(%u157r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1()  {
          "plasma.BindUnit"(%u158r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler()  {
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTiler()  {
            "plasma.BindUnit"(%u159r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerTiler() {}
          }
        }
        plasma.SuperNode @"DramInputNode:s0_c0_1:lstm_operand_0"()  {
          "plasma.BindUnit"(%u160r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_2:lstm_operand_1"()  {
          "plasma.BindUnit"(%u161r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_3:ptconvlstm__lstm_layer__lstm__outputs__0_slice_1"()  {
          "plasma.BindUnit"(%u162r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_4:group_4"()  {
          "plasma.BindUnit"(%u163r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_5:group_27"()  {
          "plasma.BindUnit"(%u164r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_6:inp_window"()  {
          "plasma.BindUnit"(%u165r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_7:group_26"()  {
          "plasma.BindUnit"(%u166r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_8:group_25"()  {
          "plasma.BindUnit"(%u167r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_9:group_24"()  {
          "plasma.BindUnit"(%u168r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_10:group_23"()  {
          "plasma.BindUnit"(%u169r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_11:out_window"()  {
          "plasma.BindUnit"(%u170r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_1:ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs"()  {
          "plasma.BindUnit"(%u171r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_2:ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u172r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_3:ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u173r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_4:ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u174r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_5:ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u175r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_6:ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u176r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_7:ptconvlstm__view__outputs__0"()  {
          "plasma.BindUnit"(%u177r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_8:ptconvlstm__lstm_layer__lstm__hidden__output"()  {
          "plasma.BindUnit"(%u178r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_9:ptconvlstm__lstm_layer__lstm__cell__output"()  {
          "plasma.BindUnit"(%u179r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_10:ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs"()  {
          "plasma.BindUnit"(%u180r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_11:ptconvlstm__criterion__mseloss__outputs__0"()  {
          "plasma.BindUnit"(%u181r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s1() attributes {kControlBlockId = 1 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, %arg10: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, %arg11: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg12: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg13: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg14: !plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>, %arg15: !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,R>, %arg16: !plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>, %arg17: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, %arg18: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, %arg19: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, %arg20: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, %arg21: !plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>, %arg22: !plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,R>, %arg23: !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,W>, %arg24: !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, %arg25: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg26: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg27: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg28: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg29: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg30: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg31: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg32: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg33: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg34: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg35: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg36: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg37: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg38: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg39: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg40: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>):  // no predecessors
      %u182r, %u182s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_825_head1_neck0_data_pmu0", kUnitId = 182 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u183r, %u183s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_826_head1_neck0_data_pmu0", kUnitId = 183 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u184r, %u184s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_872_head1_neck0_data_pmu0", kUnitId = 184 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u185r, %u185s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_827_head1_neck0_data_pmu0", kUnitId = 185 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u186r, %u186s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_828_head1_neck0_data_pmu0", kUnitId = 186 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u187r, %u187s:9 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_829_head1_neck0_data_pmu0", kUnitId = 187 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u188r, %u188s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0 WBuf 0_PCU", kUnitId = 188 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u189r, %u189s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0 WBuf 0_PMU", kUnitId = 189 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u190r, %u190s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_fwd_output_pmu", kUnitId = 190 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u191r, %u191s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output", kUnitId = 191 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u192r, %u192s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Bufpmu0", kUnitId = 192 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u193r, %u193s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_938_head1_neck0_data_pmu0", kUnitId = 193 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u194r, %u194s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0 WBuf 0_PCU", kUnitId = 194 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u195r, %u195s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0 WBuf 0_PMU", kUnitId = 195 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u196r, %u196s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_fwd_output_pmu", kUnitId = 196 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u197r, %u197s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output", kUnitId = 197 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u198r, %u198s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Bufpmu0", kUnitId = 198 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u199r, %u199s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_937_head1_neck0_data_pmu0", kUnitId = 199 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u200r, %u200s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_0_output", kUnitId = 200 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u201r, %u201s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1 WBuf 0_PCU", kUnitId = 201 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u202r, %u202s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1 WBuf 0_PMU", kUnitId = 202 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u203r, %u203s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_fwd_output_pmu", kUnitId = 203 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u204r, %u204s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output", kUnitId = 204 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u205r, %u205s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Bufpmu0", kUnitId = 205 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u206r, %u206s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_940_head1_neck0_data_pmu0", kUnitId = 206 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u207r, %u207s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1 WBuf 0_PCU", kUnitId = 207 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u208r, %u208s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1 WBuf 0_PMU", kUnitId = 208 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u209r, %u209s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_fwd_output_pmu", kUnitId = 209 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u210r, %u210s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output", kUnitId = 210 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u211r, %u211s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Bufpmu0", kUnitId = 211 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u212r, %u212s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_939_head1_neck0_data_pmu0", kUnitId = 212 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u213r, %u213s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_1_output", kUnitId = 213 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u214r, %u214s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2 WBuf 0_PCU", kUnitId = 214 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u215r, %u215s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2 WBuf 0_PMU", kUnitId = 215 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u216r, %u216s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_fwd_output_pmu", kUnitId = 216 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u217r, %u217s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output", kUnitId = 217 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u218r, %u218s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Bufpmu0", kUnitId = 218 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u219r, %u219s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_942_head1_neck0_data_pmu0", kUnitId = 219 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u220r, %u220s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2 WBuf 0_PCU", kUnitId = 220 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u221r, %u221s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2 WBuf 0_PMU", kUnitId = 221 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u222r, %u222s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_fwd_output_pmu", kUnitId = 222 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u223r, %u223s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output", kUnitId = 223 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u224r, %u224s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Bufpmu0", kUnitId = 224 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u225r, %u225s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_941_head1_neck0_data_pmu0", kUnitId = 225 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u226r, %u226s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_2_output", kUnitId = 226 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u227r, %u227s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3 WBuf 0_PCU", kUnitId = 227 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u228r, %u228s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3 WBuf 0_PMU", kUnitId = 228 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u229r, %u229s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_fwd_output_pmu", kUnitId = 229 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u230r, %u230s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output", kUnitId = 230 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u231r, %u231s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Bufpmu0", kUnitId = 231 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u232r, %u232s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_944_head1_neck0_data_pmu0", kUnitId = 232 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u233r, %u233s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3 WBuf 0_PCU", kUnitId = 233 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u234r, %u234s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3 WBuf 0_PMU", kUnitId = 234 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u235r, %u235s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_fwd_output_pmu", kUnitId = 235 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u236r, %u236s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output", kUnitId = 236 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u237r, %u237s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Bufpmu0", kUnitId = 237 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u238r, %u238s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_943_head1_neck0_data_pmu0", kUnitId = 238 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u239r, %u239s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_3_output", kUnitId = 239 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u240r, %u240s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__temp_cell_head1_neck0_data_pmu0", kUnitId = 240 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u241r, %u241s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__i_t_output", kUnitId = 241 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u242r, %u242s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_946_head1_neck0_data_pmu0", kUnitId = 242 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u243r, %u243s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__f_t_output", kUnitId = 243 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u244r, %u244s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_945_head1_neck0_data_pmu0", kUnitId = 244 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u245r, %u245s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__g_t_output", kUnitId = 245 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u246r, %u246s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_947_head1_neck0_data_pmu0", kUnitId = 246 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u247r, %u247s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__o_t_output", kUnitId = 247 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u248r, %u248s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_950_head1_neck0_data_pmu0", kUnitId = 248 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u249r, %u249s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__mul0_output", kUnitId = 249 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u250r, %u250s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_948_head1_neck0_data_pmu0", kUnitId = 250 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u251r, %u251s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__mul1_output", kUnitId = 251 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u252r, %u252s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_949_head1_neck0_data_pmu0", kUnitId = 252 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u253r, %u253s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__cell_output", kUnitId = 253 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u254r, %u254s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output", kUnitId = 254 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u255r, %u255s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_951_head1_neck0_data_pmu0", kUnitId = 255 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u256r, %u256s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__hidden_output", kUnitId = 256 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u257r, %u257s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_392_head1_neck0_data_pmu0", kUnitId = 257 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u258r, %u258s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PCU", kUnitId = 258 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u259r, %u259s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PMU", kUnitId = 259 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u260r, %u260s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute__gemm_0_1_0_PCU", kUnitId = 260 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u261r, %u261s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute__gemm_0_1_0_PMU", kUnitId = 261 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u262r, %u262s:10 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU", kUnitId = 262 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSrc, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.VectorSink, %arg50: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u263r, %u263s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PMU", kUnitId = 263 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u264r, %u264s:5 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_805_head1_neck0_data_w0_pmu0", kUnitId = 264 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u265r, %u265s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_805_head1_neck0_data_w1_pmu1", kUnitId = 265 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u266r, %u266s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_805_head1_neck0_rob_pmu", kUnitId = 266 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u267r, %u267s:2 = plasma.unit.Pmu() attributes {kName = "bias_add_1_0_802.wbufpmu0", kUnitId = 267 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u268r, %u268s:5 = plasma.unit.Pcu() attributes {kName = "bias_add_1_0_802.add0_output", kUnitId = 268 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u269r, %u269s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_406_head1_neck0_data_pmu0", kUnitId = 269 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u270r, %u270s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__criterion__mseloss_bwd_sub_output", kUnitId = 270 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u271r, %u271s:4 = plasma.unit.Pcu() attributes {kName = "scale_1_0_622_scaling_pcu", kUnitId = 271 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u272r, %u272s:3 = plasma.unit.Pmu() attributes {kName = "scale_1_0_623_input_B_pmu", kUnitId = 272 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.ScalarSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u273r, %u273s:5 = plasma.unit.Pcu() attributes {kName = "scale_1_0_623_scaling_pcu", kUnitId = 273 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink, !plasma.VectorSink)
      %u274r, %u274s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_412_head1_neck0_data_pmu0", kUnitId = 274 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u275r, %u275s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_414_head1_neck0_data_pmu0", kUnitId = 275 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u276r, %u276s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output", kUnitId = 276 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u277r, %u277s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_419_head1_neck0_data_pmu0", kUnitId = 277 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u278r, %u278s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_834_head1_neck0_data_pmu0", kUnitId = 278 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u279r, %u279s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU", kUnitId = 279 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u280r, %u280s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU", kUnitId = 280 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u281r, %u281s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU", kUnitId = 281 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u282r, %u282s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU", kUnitId = 282 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u283r, %u283s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_421_head1_neck0_reformat_pmu0", kUnitId = 283 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u284r, %u284s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_421_head1_neck0_data_pmu0", kUnitId = 284 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u285r, %u285s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_422_head0_head1_neck0_data_pmu0", kUnitId = 285 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u286r, %u286s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU", kUnitId = 286 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u287r, %u287s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU", kUnitId = 287 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u288r, %u288s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0", kUnitId = 288 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u289r, %u289s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU", kUnitId = 289 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u290r, %u290s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PMU", kUnitId = 290 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u291r, %u291s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1", kUnitId = 291 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u292r, %u292s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU", kUnitId = 292 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u293r, %u293s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PMU", kUnitId = 293 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u294r, %u294s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2", kUnitId = 294 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u295r, %u295s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU", kUnitId = 295 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u296r, %u296s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PMU", kUnitId = 296 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u297r, %u297s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3", kUnitId = 297 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u298r, %u298s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU", kUnitId = 298 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u299r, %u299s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PMU", kUnitId = 299 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u300r, %u300s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4", kUnitId = 300 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u301r, %u301s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU", kUnitId = 301 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u302r, %u302s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PMU", kUnitId = 302 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u303r, %u303s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5", kUnitId = 303 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u304r, %u304s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU", kUnitId = 304 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u305r, %u305s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PMU", kUnitId = 305 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u306r, %u306s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6", kUnitId = 306 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u307r, %u307s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU", kUnitId = 307 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u308r, %u308s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PMU", kUnitId = 308 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u309r, %u309s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7", kUnitId = 309 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u310r, %u310s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 310 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u311r, %u311s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 311 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u312r, %u312s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_424_head1_neck0_data_pmu0", kUnitId = 312 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u313r, %u313s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_430_head1_neck0_data_pmu0", kUnitId = 313 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u314r, %u314s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_indexin_indices", kUnitId = 314 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ScalarSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ControlSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ScalarSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u315r, %u315s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros", kUnitId = 315 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink)
      %u316r, %u316s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_indexindex2addr", kUnitId = 316 : i64}  {
      ^bb0(%arg41: !plasma.ScalarSrc, %arg42: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u317r, %u317s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_index_opcu_0", kUnitId = 317 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u318r, %u318s:9 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_index_opmu_0", kUnitId = 318 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ScalarSink, %arg46: !plasma.VectorSink, %arg47: !plasma.ScalarSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink)
      %u319r, %u319s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_433_head1_neck0_data_pmu0", kUnitId = 319 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u320r, %u320s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_436_head1_neck0_data_pmu0", kUnitId = 320 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u321r, %u321s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_438_head1_neck0_data_pmu0", kUnitId = 321 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u322r, %u322s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_440_head1_neck0_data_pmu0", kUnitId = 322 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u323r, %u323s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_442_head1_neck0_data_pmu0", kUnitId = 323 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u324r, %u324s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_444_head1_neck0_data_pmu0", kUnitId = 324 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u325r, %u325s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_980_head1_neck0_data_pmu0", kUnitId = 325 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u326r, %u326s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_916_head1_neck0_data_pmu0", kUnitId = 326 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u327r, %u327s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_446_head1_neck0_data_pmu0", kUnitId = 327 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u328r, %u328s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_915_head1_neck0_data_pmu0", kUnitId = 328 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u329r, %u329s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_448_head1_neck0_data_pmu0", kUnitId = 329 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u330r, %u330s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_head1_neck0_data_pmu0", kUnitId = 330 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u331r, %u331s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output", kUnitId = 331 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u332r, %u332s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_976_head0_head1_neck0_data_pmu0", kUnitId = 332 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u333r, %u333s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0", kUnitId = 333 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u334r, %u334s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0", kUnitId = 334 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u335r, %u335s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0", kUnitId = 335 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u336r, %u336s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_981_head1_neck0_data_pmu0", kUnitId = 336 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u337r, %u337s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_head1_neck0_data_pmu0", kUnitId = 337 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u338r, %u338s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_head1_neck0_data_pmu0", kUnitId = 338 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u339r, %u339s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output", kUnitId = 339 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u340r, %u340s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_952_head1_neck0_data_pmu0", kUnitId = 340 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u341r, %u341s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_head1_neck0_data_pmu0", kUnitId = 341 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u342r, %u342s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output", kUnitId = 342 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u343r, %u343s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_953_head1_neck0_data_pmu0", kUnitId = 343 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u344r, %u344s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output", kUnitId = 344 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u345r, %u345s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output", kUnitId = 345 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u346r, %u346s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_977_head0_head1_neck0_data_pmu0", kUnitId = 346 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u347r, %u347s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output", kUnitId = 347 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u348r, %u348s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_967_head1_neck0_data_pmu0", kUnitId = 348 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u349r, %u349s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output", kUnitId = 349 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u350r, %u350s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_958_head1_neck0_data_pmu0", kUnitId = 350 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u351r, %u351s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output", kUnitId = 351 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u352r, %u352s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_959_head1_neck0_data_pmu0", kUnitId = 352 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u353r, %u353s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output", kUnitId = 353 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u354r, %u354s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_978_head0_head1_neck0_data_pmu0", kUnitId = 354 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u355r, %u355s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_979_head0_head1_neck0_data_pmu0", kUnitId = 355 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u356r, %u356s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output", kUnitId = 356 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u357r, %u357s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_965_head1_neck0_data_pmu0", kUnitId = 357 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u358r, %u358s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_873_head1_neck0_data_pmu0", kUnitId = 358 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u359r, %u359s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output", kUnitId = 359 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u360r, %u360s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_igate_g_output", kUnitId = 360 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u361r, %u361s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_964_head1_neck0_data_pmu0", kUnitId = 361 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u362r, %u362s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_874_head1_neck0_data_pmu0", kUnitId = 362 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u363r, %u363s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output", kUnitId = 363 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u364r, %u364s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_966_head1_neck0_data_pmu0", kUnitId = 364 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u365r, %u365s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_875_head1_neck0_data_pmu0", kUnitId = 365 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u366r, %u366s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output", kUnitId = 366 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u367r, %u367s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_835_head1_neck0_reformat_pmu0", kUnitId = 367 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u368r, %u368s:10 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_835_head1_neck0_data_pmu0", kUnitId = 368 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink, %arg50: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u369r, %u369s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_840_head0_head1_neck0_data_pmu0", kUnitId = 369 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u370r, %u370s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU", kUnitId = 370 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u371r, %u371s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU", kUnitId = 371 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u372r, %u372s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0", kUnitId = 372 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u373r, %u373s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 373 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u374r, %u374s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 374 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u375r, %u375s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_836_head1_neck0_reformat_pmu0", kUnitId = 375 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u376r, %u376s:10 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_836_head1_neck0_data_pmu0", kUnitId = 376 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink, %arg50: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u377r, %u377s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_839_head0_head1_neck0_data_pmu0", kUnitId = 377 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u378r, %u378s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU", kUnitId = 378 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u379r, %u379s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU", kUnitId = 379 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u380r, %u380s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0", kUnitId = 380 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u381r, %u381s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 381 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u382r, %u382s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 382 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u383r, %u383s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b WBuf 0_PCU", kUnitId = 383 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u384r, %u384s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b WBuf 0_PMU", kUnitId = 384 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u385r, %u385s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_876_head1_neck0_data_pmu0", kUnitId = 385 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u386r, %u386s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output", kUnitId = 386 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u387r, %u387s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_844_head0_head1_neck0_data_pmu0", kUnitId = 387 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u388r, %u388s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU", kUnitId = 388 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u389r, %u389s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU", kUnitId = 389 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u390r, %u390s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0", kUnitId = 390 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u391r, %u391s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 391 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u392r, %u392s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 392 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u393r, %u393s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_843_head0_head1_neck0_data_pmu0", kUnitId = 393 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u394r, %u394s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU", kUnitId = 394 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u395r, %u395s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU", kUnitId = 395 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u396r, %u396s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0", kUnitId = 396 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u397r, %u397s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 397 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u398r, %u398s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 398 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u399r, %u399s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b WBuf 0_PCU", kUnitId = 399 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u400r, %u400s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b WBuf 0_PMU", kUnitId = 400 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u401r, %u401s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_877_head1_neck0_data_pmu0", kUnitId = 401 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u402r, %u402s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output", kUnitId = 402 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u403r, %u403s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_848_head0_head1_neck0_data_pmu0", kUnitId = 403 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u404r, %u404s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU", kUnitId = 404 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u405r, %u405s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU", kUnitId = 405 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u406r, %u406s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0", kUnitId = 406 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u407r, %u407s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 407 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u408r, %u408s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 408 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u409r, %u409s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_847_head0_head1_neck0_data_pmu0", kUnitId = 409 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u410r, %u410s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU", kUnitId = 410 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u411r, %u411s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU", kUnitId = 411 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u412r, %u412s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0", kUnitId = 412 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u413r, %u413s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 413 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u414r, %u414s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 414 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u415r, %u415s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b WBuf 0_PCU", kUnitId = 415 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u416r, %u416s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b WBuf 0_PMU", kUnitId = 416 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u417r, %u417s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output", kUnitId = 417 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u418r, %u418s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_852_head0_head1_neck0_data_pmu0", kUnitId = 418 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u419r, %u419s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU", kUnitId = 419 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u420r, %u420s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU", kUnitId = 420 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u421r, %u421s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0", kUnitId = 421 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u422r, %u422s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 422 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u423r, %u423s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 423 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u424r, %u424s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_851_head0_head1_neck0_data_pmu0", kUnitId = 424 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u425r, %u425s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU", kUnitId = 425 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u426r, %u426s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU", kUnitId = 426 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u427r, %u427s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0", kUnitId = 427 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u428r, %u428s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 428 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u429r, %u429s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 429 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u430r, %u430s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b WBuf 0_PCU", kUnitId = 430 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u431r, %u431s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b WBuf 0_PMU", kUnitId = 431 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u432r, %u432s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_841_head1_neck0_data_pmu0", kUnitId = 432 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u433r, %u433s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_845_head1_neck0_data_pmu0", kUnitId = 433 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u434r, %u434s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_849_head1_neck0_data_pmu0", kUnitId = 434 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u435r, %u435s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_853_head1_neck0_data_pmu0", kUnitId = 435 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u436r, %u436s:5 = plasma.unit.Pcu() attributes {kName = "addn_1_0_678ADD0_output", kUnitId = 436 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u437r, %u437s:5 = plasma.unit.Pcu() attributes {kName = "addn_1_0_678ADD1_output", kUnitId = 437 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u438r, %u438s:5 = plasma.unit.Pcu() attributes {kName = "addn_1_0_678ADD2_output", kUnitId = 438 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u439r, %u439s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output", kUnitId = 439 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u440r, %u440s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_1_0_output", kUnitId = 440 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u441r, %u441s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_2_0_output", kUnitId = 441 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u442r, %u442s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_3_0_output", kUnitId = 442 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u443r, %u443s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_4_0_output", kUnitId = 443 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u444r, %u444s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_5_0_output", kUnitId = 444 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u445r, %u445s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_6_0_output", kUnitId = 445 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u446r, %u446s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_7_0_output", kUnitId = 446 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u447r, %u447s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_0", kUnitId = 447 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u448r, %u448s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_1", kUnitId = 448 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u449r, %u449s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_2", kUnitId = 449 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u450r, %u450s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_3", kUnitId = 450 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u451r, %u451s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_4", kUnitId = 451 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u452r, %u452s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_5", kUnitId = 452 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u453r, %u453s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_6", kUnitId = 453 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u454r, %u454s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_7", kUnitId = 454 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u455r, %u455s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_8", kUnitId = 455 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u456r, %u456s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_9", kUnitId = 456 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u457r, %u457s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_10", kUnitId = 457 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u458r, %u458s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_11", kUnitId = 458 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u459r, %u459s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_12", kUnitId = 459 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u460r, %u460s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_13", kUnitId = 460 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u461r, %u461s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_14", kUnitId = 461 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u462r, %u462s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_15", kUnitId = 462 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u463r, %u463s:2 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_16", kUnitId = 463 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u464r, %u464s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_831_head1_neck0_data_pmu0", kUnitId = 464 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u465r, %u465s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_830_head1_neck0_data_pmu0", kUnitId = 465 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u466r, %u466s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_854_head1_neck0_data_pmu0", kUnitId = 466 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u467r, %u467s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_837_head1_neck0_data_pmu0", kUnitId = 467 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u468r, %u468s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_890.buffer_head1_neck0_data_pmu0", kUnitId = 468 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u469r, %u469s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_891.buffer_head1_neck0_data_pmu0", kUnitId = 469 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u470r, %u470s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_892.buffer_head1_neck0_data_pmu0", kUnitId = 470 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u471r, %u471s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_893.buffer_head1_neck0_data_pmu0", kUnitId = 471 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u472r, %u472s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_855_head1_neck0_data_pmu0", kUnitId = 472 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u473r, %u473s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_856_head1_neck0_data_pmu0", kUnitId = 473 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u474r, %u474s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_857_head1_neck0_data_pmu0", kUnitId = 474 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u475r, %u475s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_858_head1_neck0_data_pmu0", kUnitId = 475 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u476r, %u476s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_894.buffer_head1_neck0_data_pmu0", kUnitId = 476 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u477r, %u477s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_895.buffer_head1_neck0_data_pmu0", kUnitId = 477 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u478r, %u478s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_896.buffer_head1_neck0_data_pmu0", kUnitId = 478 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u479r, %u479s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_897.buffer_head1_neck0_data_pmu0", kUnitId = 479 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u480r, %u480s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_859_head1_neck0_data_pmu0", kUnitId = 480 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u481r, %u481s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_860_head1_neck0_data_pmu0", kUnitId = 481 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u482r, %u482s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_861_head1_neck0_data_pmu0", kUnitId = 482 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u483r, %u483s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_862_head1_neck0_data_pmu0", kUnitId = 483 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u484r, %u484s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_902.buffer_head1_neck0_data_pmu0", kUnitId = 484 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u485r, %u485s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_903.buffer_head1_neck0_data_pmu0", kUnitId = 485 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u486r, %u486s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_904.buffer_head1_neck0_data_pmu0", kUnitId = 486 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u487r, %u487s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_905.buffer_head1_neck0_data_pmu0", kUnitId = 487 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u488r, %u488s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_863_head1_neck0_data_pmu0", kUnitId = 488 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u489r, %u489s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_864_head1_neck0_data_pmu0", kUnitId = 489 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u490r, %u490s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_865_head1_neck0_data_pmu0", kUnitId = 490 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u491r, %u491s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_866_head1_neck0_data_pmu0", kUnitId = 491 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u492r, %u492s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_898.buffer_head1_neck0_data_pmu0", kUnitId = 492 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u493r, %u493s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_899.buffer_head1_neck0_data_pmu0", kUnitId = 493 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u494r, %u494s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_900.buffer_head1_neck0_data_pmu0", kUnitId = 494 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u495r, %u495s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_901.buffer_head1_neck0_data_pmu0", kUnitId = 495 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u496r, %u496s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_867_head1_neck0_data_pmu0", kUnitId = 496 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u497r, %u497s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_868_head1_neck0_data_pmu0", kUnitId = 497 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u498r, %u498s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_869_head1_neck0_data_pmu0", kUnitId = 498 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u499r, %u499s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_870_head1_neck0_data_pmu0", kUnitId = 499 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u500r, %u500s:11 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0", kUnitId = 500 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink, %arg50: !plasma.ControlSink, %arg51: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u501r, %u501s:11 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0", kUnitId = 501 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink, %arg50: !plasma.ControlSink, %arg51: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u502r, %u502s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0", kUnitId = 502 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u503r, %u503s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0", kUnitId = 503 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u504r, %u504s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_838_head1_neck0_data_pmu0", kUnitId = 504 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u505r, %u505s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_842_head1_neck0_data_pmu0", kUnitId = 505 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u506r, %u506s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_846_head1_neck0_data_pmu0", kUnitId = 506 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u507r, %u507s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_850_head1_neck0_data_pmu0", kUnitId = 507 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u508r, %u508s:9 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_394_D_0_0", kUnitId = 508 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ScalarSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u509r, %u509s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_832_D_0_0", kUnitId = 509 : i64}  {
      ^bb0(%arg41: !plasma.ScalarSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.VectorSink)
      %u510r, %u510s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_399_D_0_0", kUnitId = 510 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u511r, %u511s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_402_D_0_0", kUnitId = 511 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u512r, %u512s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_0_0_0_min_0_max_65536", kUnitId = 512 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u513r, %u513s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_1_0_0_min_65536_max_131072", kUnitId = 513 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u514r, %u514s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_2_0_0_min_131072_max_196608", kUnitId = 514 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u515r, %u515s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_3_0_0_min_196608_max_262144", kUnitId = 515 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u516r, %u516s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_4_0_0_min_262144_max_327680", kUnitId = 516 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u517r, %u517s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_5_0_0_min_327680_max_393216", kUnitId = 517 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u518r, %u518s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_6_0_0_min_393216_max_458752", kUnitId = 518 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u519r, %u519s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_7_0_0_min_458752_max_524288", kUnitId = 519 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u520r, %u520s:5 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_ROB_kBackReadCtx_0_0", kUnitId = 520 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u521r, %u521s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum_1.tbuf_D_0_0_0", kUnitId = 521 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u522r, %u522s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum.tbuf_D_0_0_0", kUnitId = 522 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u523r, %u523s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_1.tbuf_D_0_0_0", kUnitId = 523 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u524r, %u524s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_2.tbuf_D_0_0_0", kUnitId = 524 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u525r, %u525s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_3.tbuf_D_0_0_0", kUnitId = 525 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u526r, %u526s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_4.tbuf_D_0_0_0", kUnitId = 526 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u527r, %u527s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_5.tbuf_D_0_0_0", kUnitId = 527 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u528r, %u528s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_6.tbuf_D_0_0_0", kUnitId = 528 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u529r, %u529s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_7.tbuf_D_0_0_0", kUnitId = 529 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u530r, %u530s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_8.tbuf_D_0_0_0", kUnitId = 530 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u531r, %u531s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_9.tbuf_D_0_0_0", kUnitId = 531 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u532r, %u532s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_10.tbuf_D_0_0_0", kUnitId = 532 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u533r, %u533s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_11.tbuf_D_0_0_0", kUnitId = 533 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u534r, %u534s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_12.tbuf_D_0_0_0", kUnitId = 534 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u535r, %u535s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_13.tbuf_D_0_0_0", kUnitId = 535 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u536r, %u536s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_14.tbuf_D_0_0_0", kUnitId = 536 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u537r, %u537s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_15.tbuf_D_0_0_0", kUnitId = 537 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u538r, %u538s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_47", kUnitId = 538 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u539r, %u539s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_48", kUnitId = 539 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u540r, %u540s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_49", kUnitId = 540 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u541r, %u541s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_4", kUnitId = 541 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u542r, %u542s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_27", kUnitId = 542 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u543r, %u543s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_50", kUnitId = 543 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u544r, %u544s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_51", kUnitId = 544 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u545r, %u545s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_53", kUnitId = 545 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u546r, %u546s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_26", kUnitId = 546 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u547r, %u547s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_25", kUnitId = 547 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u548r, %u548s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_24", kUnitId = 548 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u549r, %u549s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_23", kUnitId = 549 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u550r, %u550s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_55", kUnitId = 550 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u551r, %u551s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_56", kUnitId = 551 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u552r, %u552s:8 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu", kUnitId = 552 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ScalarSrc, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u553r, %u553s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300", kUnitId = 553 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u554r, %u554s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301", kUnitId = 554 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u555r, %u555s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302", kUnitId = 555 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u556r, %u556s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303", kUnitId = 556 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u557r, %u557s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304", kUnitId = 557 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u558r, %u558s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305", kUnitId = 558 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u559r, %u559s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306", kUnitId = 559 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u560r, %u560s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307", kUnitId = 560 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u561r, %u561s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308", kUnitId = 561 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u562r, %u562s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309", kUnitId = 562 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u563r, %u563s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310", kUnitId = 563 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u564r, %u564s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311", kUnitId = 564 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u565r, %u565s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312", kUnitId = 565 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u566r, %u566s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313", kUnitId = 566 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u567r, %u567s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314", kUnitId = 567 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u568r, %u568s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315", kUnitId = 568 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u569r, %u569s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_1", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 569 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u570r, %u570s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_2", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 570 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u571r, %u571s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_3", kOnChipLayout = !plasma.TL<1xi32:RVRM>, kUnitId = 571 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u572r, %u572s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_4", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 572 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u573r, %u573s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 573 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u574r, %u574s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_6", kOnChipLayout = !plasma.TL<1xbf16:RVRM:64>, kUnitId = 574 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u575r, %u575s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_7", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 575 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u576r, %u576s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_8", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 576 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u577r, %u577s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_9", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 577 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u578r, %u578s:2 = plasma.unit.Vag(%arg16) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_10", kOnChipLayout = !plasma.TL<136x60xbf16:CVCM:64>, kUnitId = 578 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u579r, %u579s:2 = plasma.unit.Vag(%arg10) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_11", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 579 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u580r, %u580s:2 = plasma.unit.Vag(%arg11) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_12", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 580 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u581r, %u581s:2 = plasma.unit.Vag(%arg12) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_13", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 581 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u582r, %u582s:2 = plasma.unit.Vag(%arg13) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_14", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 582 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u583r, %u583s:2 = plasma.unit.Vag(%arg14) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_15", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 583 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u584r, %u584s:2 = plasma.unit.Vag(%arg15) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_16", kOnChipLayout = !plasma.TL<2048x64xbf16:CVRM:64>, kUnitId = 584 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u585r, %u585s:2 = plasma.unit.Vag(%arg9) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_17", kOnChipLayout = !plasma.TL<60x136xbf16:RVRM:64>, kUnitId = 585 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u586r, %u586s:2 = plasma.unit.Vag(%arg17) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_18", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 586 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u587r, %u587s:2 = plasma.unit.Vag(%arg18) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_19", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 587 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u588r, %u588s:2 = plasma.unit.Vag(%arg19) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_20", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 588 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u589r, %u589s:2 = plasma.unit.Vag(%arg20) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_21", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 589 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u590r, %u590s:2 = plasma.unit.Vag(%arg21) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_22", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 590 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u591r, %u591s:3 = plasma.unit.Vag(%arg22) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_23", kOnChipLayout = !plasma.TL<60x64xbf16:RVRM>, kUnitId = 591 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<2x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u592r, %u592s = plasma.unit.Vag(%arg23) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_1", kOnChipLayout = !plasma.TL<8192x64xui8:RVRM>, kUnitId = 592 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u593r, %u593s = plasma.unit.Vag(%arg24) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_2", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 593 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u594r, %u594s = plasma.unit.Vag(%arg28) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_3", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 594 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u595r, %u595s = plasma.unit.Vag(%arg27) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_4", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 595 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u596r, %u596s = plasma.unit.Vag(%arg26) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 596 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u597r, %u597s = plasma.unit.Vag(%arg25) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_6", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 597 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u598r, %u598s = plasma.unit.Vag(%arg32) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_7", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 598 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u599r, %u599s = plasma.unit.Vag(%arg31) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_8", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 599 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u600r, %u600s = plasma.unit.Vag(%arg30) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_9", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 600 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u601r, %u601s = plasma.unit.Vag(%arg29) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_10", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 601 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u602r, %u602s = plasma.unit.Vag(%arg36) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_11", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 602 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u603r, %u603s = plasma.unit.Vag(%arg35) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_12", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 603 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u604r, %u604s = plasma.unit.Vag(%arg34) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_13", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 604 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u605r, %u605s = plasma.unit.Vag(%arg33) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_14", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 605 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u606r, %u606s = plasma.unit.Vag(%arg40) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_15", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 606 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u607r, %u607s = plasma.unit.Vag(%arg39) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_16", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 607 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u608r, %u608s = plasma.unit.Vag(%arg38) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_17", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 608 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u609r, %u609s = plasma.unit.Vag(%arg37) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_18", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 609 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u182s#0, %u500s#3) [gbuf1a_1_0_825_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u182s#1, %u538s#2) [gbuf1a_1_0_825_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_47] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u183s#0, %u501s#3) [gbuf1a_1_0_826_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u183s#1, %u539s#2) [gbuf1a_1_0_826_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_48] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u184s#0, %u509s#1) [gbuf1a_1_0_872_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_832_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u184s#0, %u313s#1) [gbuf1a_1_0_872_head1_neck0_data_pmu0 >> gbuf2u_1_0_430_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u184s#1, %u540s#2) [gbuf1a_1_0_872_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_49] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u185s#0, %u502s#3) [gbuf1a_1_0_827_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u185s#1, %u543s#2) [gbuf1a_1_0_827_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_50] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u186s#0, %u503s#3) [gbuf1a_1_0_828_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u186s#1, %u544s#2) [gbuf1a_1_0_828_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_51] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u187s#0, %u188s#4) [gbuf2a_1_0_829_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u187s#0, %u201s#4) [gbuf2a_1_0_829_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u187s#0, %u214s#4) [gbuf2a_1_0_829_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u187s#0, %u227s#4) [gbuf2a_1_0_829_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u187s#1, %u545s#2) [gbuf2a_1_0_829_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_53] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u188s#0, %u188s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u188s#1, %u190s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u189s#0, %u188s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u190s#0, %u191s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u191s#0, %u191s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u191s#1, %u193s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output >> gbuf1a_1_0_938_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u192s#0, %u191s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u193s#0, %u200s#3) [gbuf1a_1_0_938_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u194s#0, %u194s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u194s#1, %u196s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u195s#0, %u194s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u196s#0, %u197s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u197s#0, %u197s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u197s#1, %u199s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output >> gbuf1a_1_0_937_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u198s#0, %u197s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u199s#0, %u200s#4) [gbuf1a_1_0_937_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u200s#0, %u200s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_0_output >> ptconvlstm__lstm_layer__lstm_recompute__add_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u200s#1, %u241s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_0_output >> ptconvlstm__lstm_layer__lstm_recompute__i_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u201s#0, %u201s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u201s#1, %u203s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u202s#0, %u201s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u203s#0, %u204s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u204s#0, %u204s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u204s#1, %u206s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output >> gbuf1a_1_0_940_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u205s#0, %u204s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u206s#0, %u213s#3) [gbuf1a_1_0_940_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u207s#0, %u207s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u207s#1, %u209s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u208s#0, %u207s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u209s#0, %u210s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u210s#0, %u210s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u210s#1, %u212s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output >> gbuf1a_1_0_939_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u211s#0, %u210s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u212s#0, %u213s#4) [gbuf1a_1_0_939_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u213s#0, %u213s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_1_output >> ptconvlstm__lstm_layer__lstm_recompute__add_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u213s#1, %u243s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_1_output >> ptconvlstm__lstm_layer__lstm_recompute__f_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u214s#0, %u214s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u214s#1, %u216s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u215s#0, %u214s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u216s#0, %u217s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u217s#0, %u217s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u217s#1, %u219s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output >> gbuf1a_1_0_942_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u218s#0, %u217s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u219s#0, %u226s#3) [gbuf1a_1_0_942_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u220s#0, %u220s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u220s#1, %u222s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u221s#0, %u220s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u222s#0, %u223s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u223s#0, %u223s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u223s#1, %u225s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output >> gbuf1a_1_0_941_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u224s#0, %u223s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u225s#0, %u226s#4) [gbuf1a_1_0_941_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u226s#0, %u226s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_2_output >> ptconvlstm__lstm_layer__lstm_recompute__add_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u226s#1, %u245s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_2_output >> ptconvlstm__lstm_layer__lstm_recompute__g_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u227s#0, %u227s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u227s#1, %u229s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u228s#0, %u227s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u229s#0, %u230s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u230s#0, %u230s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u230s#1, %u232s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output >> gbuf1a_1_0_944_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u231s#0, %u230s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u232s#0, %u239s#3) [gbuf1a_1_0_944_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u233s#0, %u233s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u233s#1, %u235s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u234s#0, %u233s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u235s#0, %u236s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u236s#0, %u236s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u236s#1, %u238s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output >> gbuf1a_1_0_943_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u237s#0, %u236s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u238s#0, %u239s#4) [gbuf1a_1_0_943_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u239s#0, %u239s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_3_output >> ptconvlstm__lstm_layer__lstm_recompute__add_3_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u239s#1, %u247s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_3_output >> ptconvlstm__lstm_layer__lstm_recompute__o_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u240s#0, %u249s#3) [ptconvlstm__lstm_layer__lstm_recompute__temp_cell_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u241s#0, %u241s#2) [ptconvlstm__lstm_layer__lstm_recompute__i_t_output >> ptconvlstm__lstm_layer__lstm_recompute__i_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u241s#1, %u242s#1) [ptconvlstm__lstm_layer__lstm_recompute__i_t_output >> gbuf1a_1_0_946_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u242s#0, %u251s#3) [gbuf1a_1_0_946_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u243s#0, %u243s#2) [ptconvlstm__lstm_layer__lstm_recompute__f_t_output >> ptconvlstm__lstm_layer__lstm_recompute__f_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u243s#1, %u244s#1) [ptconvlstm__lstm_layer__lstm_recompute__f_t_output >> gbuf1a_1_0_945_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u244s#0, %u249s#4) [gbuf1a_1_0_945_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u245s#0, %u245s#2) [ptconvlstm__lstm_layer__lstm_recompute__g_t_output >> ptconvlstm__lstm_layer__lstm_recompute__g_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u245s#1, %u246s#1) [ptconvlstm__lstm_layer__lstm_recompute__g_t_output >> gbuf1a_1_0_947_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u246s#0, %u251s#4) [gbuf1a_1_0_947_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u247s#0, %u247s#2) [ptconvlstm__lstm_layer__lstm_recompute__o_t_output >> ptconvlstm__lstm_layer__lstm_recompute__o_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u247s#1, %u248s#1) [ptconvlstm__lstm_layer__lstm_recompute__o_t_output >> gbuf1a_1_0_950_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u248s#0, %u256s#3) [gbuf1a_1_0_950_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u249s#0, %u249s#2) [ptconvlstm__lstm_layer__lstm_recompute__mul0_output >> ptconvlstm__lstm_layer__lstm_recompute__mul0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u249s#1, %u250s#1) [ptconvlstm__lstm_layer__lstm_recompute__mul0_output >> gbuf1a_1_0_948_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u250s#0, %u253s#3) [gbuf1a_1_0_948_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u251s#0, %u251s#2) [ptconvlstm__lstm_layer__lstm_recompute__mul1_output >> ptconvlstm__lstm_layer__lstm_recompute__mul1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u251s#1, %u252s#1) [ptconvlstm__lstm_layer__lstm_recompute__mul1_output >> gbuf1a_1_0_949_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u252s#0, %u253s#4) [gbuf1a_1_0_949_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u253s#0, %u253s#2) [ptconvlstm__lstm_layer__lstm_recompute__cell_output >> ptconvlstm__lstm_layer__lstm_recompute__cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u253s#1, %u254s#3) [ptconvlstm__lstm_layer__lstm_recompute__cell_output >> ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u253s#1, %u465s#3) [ptconvlstm__lstm_layer__lstm_recompute__cell_output >> gbuf2a_1_0_830_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u254s#0, %u254s#2) [ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output >> ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u254s#1, %u255s#1) [ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output >> gbuf1a_1_0_951_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u255s#0, %u256s#4) [gbuf1a_1_0_951_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u256s#0, %u256s#2) [ptconvlstm__lstm_layer__lstm_recompute__hidden_output >> ptconvlstm__lstm_layer__lstm_recompute__hidden_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u256s#1, %u464s#3) [ptconvlstm__lstm_layer__lstm_recompute__hidden_output >> gbuf2a_1_0_831_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u256s#1, %u508s#8) [ptconvlstm__lstm_layer__lstm_recompute__hidden_output >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u257s#1, %u270s#3) [gbuf2u_1_0_392_head1_neck0_data_pmu0 >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u258s#0, %u258s#2) [ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u258s#1, %u264s#4) [ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PCU >> gbuf1a_1_0_805_head1_neck0_data_w0_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u259s#0, %u258s#3) [ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u260s#0, %u260s#2) [ptconvlstm__dense_layer__linear_recompute__gemm_0_1_0_PCU >> ptconvlstm__dense_layer__linear_recompute__gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u261s#0, %u260s#3) [ptconvlstm__dense_layer__linear_recompute__gemm_0_1_0_PMU >> ptconvlstm__dense_layer__linear_recompute__gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u262s#0, %u262s#4) [ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u262s#1, %u262s#5) [ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u262s#0, %u262s#6) [ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u262s#2, %u262s#7) [ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u262s#3, %u265s#3) [ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU >> gbuf1a_1_0_805_head1_neck0_data_w1_pmu1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u263s#0, %u262s#8) [ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PMU >> ptconvlstm__dense_layer__linear_recompute__gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u264s#0, %u266s#3) [gbuf1a_1_0_805_head1_neck0_data_w0_pmu0 >> gbuf1a_1_0_805_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u264s#1, %u258s#5) [gbuf1a_1_0_805_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u264s#1, %u260s#5) [gbuf1a_1_0_805_head1_neck0_data_w0_pmu0 >> ptconvlstm__dense_layer__linear_recompute__gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u265s#0, %u266s#3) [gbuf1a_1_0_805_head1_neck0_data_w1_pmu1 >> gbuf1a_1_0_805_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u266s#0, %u264s#2) [gbuf1a_1_0_805_head1_neck0_rob_pmu >> gbuf1a_1_0_805_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u266s#1, %u264s#3) [gbuf1a_1_0_805_head1_neck0_rob_pmu >> gbuf1a_1_0_805_head1_neck0_data_w0_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u266s#0, %u265s#1) [gbuf1a_1_0_805_head1_neck0_rob_pmu >> gbuf1a_1_0_805_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u266s#1, %u265s#2) [gbuf1a_1_0_805_head1_neck0_rob_pmu >> gbuf1a_1_0_805_head1_neck0_data_w1_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u266s#2, %u268s#4) [gbuf1a_1_0_805_head1_neck0_rob_pmu >> bias_add_1_0_802_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u267s#0, %u268s#3) [bias_add_1_0_802_wbufpmu0 >> bias_add_1_0_802_add0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u268s#0, %u268s#2) [bias_add_1_0_802_add0_output >> bias_add_1_0_802_add0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u268s#1, %u269s#3) [bias_add_1_0_802_add0_output >> gbuf2u_1_0_406_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u269s#0, %u270s#4) [gbuf2u_1_0_406_head1_neck0_data_pmu0 >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u269s#1, %u511s#4) [gbuf2u_1_0_406_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_402_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u269s#2, %u511s#5) [gbuf2u_1_0_406_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_402_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u270s#0, %u270s#2) [ptconvlstm__criterion__mseloss_bwd_sub_output >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u270s#1, %u271s#3) [ptconvlstm__criterion__mseloss_bwd_sub_output >> scale_1_0_622_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u271s#0, %u271s#2) [scale_1_0_622_scaling_pcu >> scale_1_0_622_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u271s#1, %u273s#4) [scale_1_0_622_scaling_pcu >> scale_1_0_623_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u272s#1, %u273s#3) [scale_1_0_623_input_B_pmu >> scale_1_0_623_scaling_pcu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u273s#0, %u273s#2) [scale_1_0_623_scaling_pcu >> scale_1_0_623_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u273s#1, %u275s#3) [scale_1_0_623_scaling_pcu >> gbuf2u_1_0_414_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u274s#1, %u276s#4) [gbuf2u_1_0_412_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u275s#0, %u276s#3) [gbuf2u_1_0_414_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u275s#1, %u257s#2) [gbuf2u_1_0_414_head1_neck0_data_pmu0 >> gbuf2u_1_0_392_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u275s#2, %u257s#3) [gbuf2u_1_0_414_head1_neck0_data_pmu0 >> gbuf2u_1_0_392_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u275s#1, %u269s#4) [gbuf2u_1_0_414_head1_neck0_data_pmu0 >> gbuf2u_1_0_406_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u275s#2, %u269s#5) [gbuf2u_1_0_414_head1_neck0_data_pmu0 >> gbuf2u_1_0_406_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u276s#0, %u276s#2) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u276s#1, %u277s#3) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_419_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u276s#1, %u285s#3) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_422_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u277s#0, %u279s#4) [gbuf2u_1_0_419_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u277s#1, %u274s#2) [gbuf2u_1_0_419_head1_neck0_data_pmu0 >> gbuf2u_1_0_412_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u277s#2, %u274s#3) [gbuf2u_1_0_419_head1_neck0_data_pmu0 >> gbuf2u_1_0_412_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u277s#1, %u275s#4) [gbuf2u_1_0_419_head1_neck0_data_pmu0 >> gbuf2u_1_0_414_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u277s#2, %u275s#5) [gbuf2u_1_0_419_head1_neck0_data_pmu0 >> gbuf2u_1_0_414_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u278s#0, %u280s#1) [gbuf1a_1_0_834_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u278s#1, %u550s#2) [gbuf1a_1_0_834_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_55] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u279s#0, %u279s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u279s#1, %u312s#4) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> gbuf2u_1_0_424_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u280s#0, %u279s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u281s#0, %u281s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u282s#0, %u281s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u283s#0, %u284s#4) [gbuf2u_1_0_421_head1_neck0_reformat_pmu0 >> gbuf2u_1_0_421_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u284s#0, %u283s#1) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> gbuf2u_1_0_421_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u284s#1, %u283s#2) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> gbuf2u_1_0_421_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u284s#2, %u286s#4) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u284s#3, %u510s#4) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_399_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u284s#1, %u510s#5) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_399_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u285s#0, %u311s#1) [gbuf2u_1_0_422_head0_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u285s#1, %u287s#1) [gbuf2u_1_0_422_head0_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u285s#2, %u274s#4) [gbuf2u_1_0_422_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_412_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u285s#2, %u275s#6) [gbuf2u_1_0_422_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_414_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u286s#0, %u288s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u287s#0, %u286s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u288s#0, %u286s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u288s#1, %u286s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u288s#2, %u439s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> AccumPCU_0_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u289s#0, %u291s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u290s#0, %u289s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u291s#0, %u289s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u291s#1, %u289s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_1_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u291s#2, %u440s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_1 >> AccumPCU_1_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u292s#0, %u294s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u293s#0, %u292s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u294s#0, %u292s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u294s#1, %u292s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_2_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u294s#2, %u441s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_2 >> AccumPCU_2_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u295s#0, %u297s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u296s#0, %u295s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u297s#0, %u295s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u297s#1, %u295s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_3_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u297s#2, %u442s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_3 >> AccumPCU_3_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u298s#0, %u300s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u299s#0, %u298s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u300s#0, %u298s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u300s#1, %u298s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_4_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u300s#2, %u443s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_4 >> AccumPCU_4_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u301s#0, %u303s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u302s#0, %u301s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u303s#0, %u301s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u303s#1, %u301s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_5_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u303s#2, %u444s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_5 >> AccumPCU_5_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u304s#0, %u306s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u305s#0, %u304s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u306s#0, %u304s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u306s#1, %u304s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_6_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u306s#2, %u445s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_6 >> AccumPCU_6_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u307s#0, %u309s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u308s#0, %u307s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u309s#0, %u307s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u309s#1, %u307s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_7_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u309s#2, %u446s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_7 >> AccumPCU_7_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u310s#0, %u447s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u310s#1, %u285s#4) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2u_1_0_422_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u311s#0, %u310s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u312s#0, %u317s#3) [gbuf2u_1_0_424_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_index_opcu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u312s#1, %u277s#4) [gbuf2u_1_0_424_head1_neck0_data_pmu0 >> gbuf2u_1_0_419_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u312s#2, %u277s#5) [gbuf2u_1_0_424_head1_neck0_data_pmu0 >> gbuf2u_1_0_419_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u312s#3, %u279s#5) [gbuf2u_1_0_424_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u312s#3, %u281s#5) [gbuf2u_1_0_424_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u313s#0, %u314s#4) [gbuf2u_1_0_430_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_indexin_indices] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u314s#0, %u315s#1) [ptconvlstm__indexselect_bwd_loss_just_indexin_indices >> ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u314s#1, %u316s#1) [ptconvlstm__indexselect_bwd_loss_just_indexin_indices >> ptconvlstm__indexselect_bwd_loss_just_indexindex2addr] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u314s#2, %u313s#4) [ptconvlstm__indexselect_bwd_loss_just_indexin_indices >> gbuf2u_1_0_430_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u315s#0, %u318s#5) [ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u316s#0, %u318s#6) [ptconvlstm__indexselect_bwd_loss_just_indexindex2addr >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u317s#0, %u318s#3) [ptconvlstm__indexselect_bwd_loss_just_index_opcu_0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u317s#1, %u318s#4) [ptconvlstm__indexselect_bwd_loss_just_index_opcu_0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u318s#0, %u317s#2) [ptconvlstm__indexselect_bwd_loss_just_index_opmu_0 >> ptconvlstm__indexselect_bwd_loss_just_index_opcu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u318s#1, %u314s#3) [ptconvlstm__indexselect_bwd_loss_just_index_opmu_0 >> ptconvlstm__indexselect_bwd_loss_just_indexin_indices] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u318s#2, %u328s#4) [ptconvlstm__indexselect_bwd_loss_just_index_opmu_0 >> gbuf2a_1_0_915_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u319s#0, %u367s#3) [gbuf2u_1_0_433_head1_neck0_data_pmu0 >> gbuf2a_1_0_835_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u319s#1, %u551s#2) [gbuf2u_1_0_433_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_56] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u320s#1, %u333s#1) [gbuf2u_1_0_436_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u320s#1, %u365s#1) [gbuf2u_1_0_436_head1_neck0_data_pmu0 >> gbuf1a_1_0_875_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u321s#1, %u334s#1) [gbuf2u_1_0_438_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u321s#1, %u385s#1) [gbuf2u_1_0_438_head1_neck0_data_pmu0 >> gbuf1a_1_0_876_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u322s#1, %u335s#1) [gbuf2u_1_0_440_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u322s#1, %u401s#1) [gbuf2u_1_0_440_head1_neck0_data_pmu0 >> gbuf1a_1_0_877_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u323s#1, %u337s#1) [gbuf2u_1_0_442_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u323s#1, %u417s#3) [gbuf2u_1_0_442_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u324s#1, %u325s#1) [gbuf2u_1_0_444_head1_neck0_data_pmu0 >> gbuf1a_1_0_980_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u324s#1, %u339s#3) [gbuf2u_1_0_444_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u325s#0, %u356s#3) [gbuf1a_1_0_980_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u326s#0, %u327s#3) [gbuf2a_1_0_916_head1_neck0_data_pmu0 >> gbuf2u_1_0_446_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u326s#1, %u552s#4) [gbuf2a_1_0_916_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u327s#0, %u375s#3) [gbuf2u_1_0_446_head1_neck0_data_pmu0 >> gbuf2a_1_0_836_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u327s#1, %u326s#2) [gbuf2u_1_0_446_head1_neck0_data_pmu0 >> gbuf2a_1_0_916_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u327s#2, %u326s#3) [gbuf2u_1_0_446_head1_neck0_data_pmu0 >> gbuf2a_1_0_916_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#0, %u329s#3) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> gbuf2u_1_0_448_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u328s#1, %u312s#5) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> gbuf2u_1_0_424_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#2, %u312s#6) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> gbuf2u_1_0_424_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#1, %u313s#2) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> gbuf2u_1_0_430_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#2, %u313s#3) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> gbuf2u_1_0_430_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#2, %u318s#7) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#2, %u315s#2) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#3, %u318s#8) [gbuf2a_1_0_915_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u329s#0, %u331s#3) [gbuf2u_1_0_448_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u329s#1, %u328s#5) [gbuf2u_1_0_448_head1_neck0_data_pmu0 >> gbuf2a_1_0_915_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u329s#2, %u328s#6) [gbuf2u_1_0_448_head1_neck0_data_pmu0 >> gbuf2a_1_0_915_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u330s#0, %u331s#4) [ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u331s#0, %u331s#2) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u331s#1, %u332s#2) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output >> gbuf1a_1_0_976_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u332s#0, %u349s#3) [gbuf1a_1_0_976_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u332s#1, %u347s#3) [gbuf1a_1_0_976_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u333s#0, %u341s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u333s#0, %u362s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0 >> gbuf1a_1_0_874_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u334s#0, %u338s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u334s#0, %u358s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0 >> gbuf1a_1_0_873_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u335s#0, %u336s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0 >> gbuf1a_1_0_981_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u335s#0, %u342s#3) [ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u336s#0, %u360s#3) [gbuf1a_1_0_981_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_igate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u337s#0, %u349s#4) [ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u338s#0, %u339s#4) [ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u339s#0, %u339s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u339s#1, %u340s#1) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output >> gbuf1a_1_0_952_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u340s#0, %u344s#3) [gbuf1a_1_0_952_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u341s#0, %u342s#4) [ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u342s#0, %u342s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u342s#1, %u343s#1) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output >> gbuf1a_1_0_953_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u343s#0, %u344s#4) [gbuf1a_1_0_953_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u344s#0, %u344s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u344s#1, %u345s#3) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u345s#0, %u345s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u345s#1, %u346s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output >> gbuf1a_1_0_977_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u346s#0, %u351s#3) [gbuf1a_1_0_977_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u346s#1, %u347s#4) [gbuf1a_1_0_977_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u347s#0, %u347s#2) [ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u347s#1, %u348s#1) [ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output >> gbuf1a_1_0_967_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u348s#0, %u417s#4) [gbuf1a_1_0_967_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u349s#0, %u349s#2) [ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output >> ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u349s#1, %u350s#1) [ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output >> gbuf1a_1_0_958_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u350s#0, %u351s#4) [gbuf1a_1_0_958_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u351s#0, %u351s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u351s#1, %u352s#1) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output >> gbuf1a_1_0_959_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u352s#0, %u353s#4) [gbuf1a_1_0_959_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u353s#0, %u353s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u353s#1, %u354s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output >> gbuf1a_1_0_978_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u353s#1, %u355s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output >> gbuf1a_1_0_979_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u354s#0, %u363s#3) [gbuf1a_1_0_978_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u354s#1, %u360s#4) [gbuf1a_1_0_978_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_igate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u355s#0, %u359s#3) [gbuf1a_1_0_979_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u355s#1, %u356s#4) [gbuf1a_1_0_979_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u356s#0, %u356s#2) [ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u356s#1, %u357s#1) [ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output >> gbuf1a_1_0_965_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u357s#0, %u386s#3) [gbuf1a_1_0_965_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u358s#0, %u359s#4) [gbuf1a_1_0_873_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u359s#0, %u359s#2) [ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output >> ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u359s#1, %u467s#1) [ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output >> gbuf2a_1_0_837_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u360s#0, %u360s#2) [ptconvlstm__lstm_layer__lstm_bwd_igate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_igate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#1, %u361s#1) [ptconvlstm__lstm_layer__lstm_bwd_igate_g_output >> gbuf1a_1_0_964_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u361s#0, %u366s#3) [gbuf1a_1_0_964_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u362s#0, %u363s#4) [gbuf1a_1_0_874_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u363s#0, %u363s#2) [ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u363s#1, %u364s#1) [ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output >> gbuf1a_1_0_966_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u364s#0, %u402s#3) [gbuf1a_1_0_966_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u365s#0, %u366s#4) [gbuf1a_1_0_875_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u366s#0, %u366s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u366s#1, %u369s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> gbuf2a_1_0_840_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u366s#1, %u377s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> gbuf2a_1_0_839_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u366s#1, %u504s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> gbuf2a_1_0_838_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u367s#0, %u368s#4) [gbuf2a_1_0_835_head1_neck0_reformat_pmu0 >> gbuf2a_1_0_835_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u368s#0, %u367s#1) [gbuf2a_1_0_835_head1_neck0_data_pmu0 >> gbuf2a_1_0_835_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u368s#1, %u367s#2) [gbuf2a_1_0_835_head1_neck0_data_pmu0 >> gbuf2a_1_0_835_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u368s#2, %u370s#4) [gbuf2a_1_0_835_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u368s#3, %u319s#2) [gbuf2a_1_0_835_head1_neck0_data_pmu0 >> gbuf2u_1_0_433_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u368s#1, %u319s#3) [gbuf2a_1_0_835_head1_neck0_data_pmu0 >> gbuf2u_1_0_433_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u369s#0, %u374s#1) [gbuf2a_1_0_840_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u369s#1, %u371s#2) [gbuf2a_1_0_840_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u370s#0, %u372s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u371s#0, %u370s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u371s#1, %u369s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_840_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u372s#0, %u370s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u372s#1, %u370s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u372s#2, %u452s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0 >> AccumPCU_0_0_output_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u373s#0, %u460s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u373s#1, %u369s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_840_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u374s#0, %u373s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u375s#0, %u376s#4) [gbuf2a_1_0_836_head1_neck0_reformat_pmu0 >> gbuf2a_1_0_836_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u376s#0, %u375s#1) [gbuf2a_1_0_836_head1_neck0_data_pmu0 >> gbuf2a_1_0_836_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u376s#1, %u375s#2) [gbuf2a_1_0_836_head1_neck0_data_pmu0 >> gbuf2a_1_0_836_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u376s#2, %u378s#4) [gbuf2a_1_0_836_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u376s#3, %u327s#4) [gbuf2a_1_0_836_head1_neck0_data_pmu0 >> gbuf2u_1_0_446_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u376s#1, %u327s#5) [gbuf2a_1_0_836_head1_neck0_data_pmu0 >> gbuf2u_1_0_446_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u377s#0, %u382s#1) [gbuf2a_1_0_839_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u377s#1, %u379s#2) [gbuf2a_1_0_839_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u378s#0, %u380s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u379s#0, %u378s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u379s#1, %u377s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_839_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u380s#0, %u378s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u380s#1, %u378s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u380s#2, %u448s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0 >> AccumPCU_0_0_output_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u381s#0, %u456s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u381s#1, %u377s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_839_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u382s#0, %u381s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u383s#0, %u383s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u383s#1, %u432s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU >> gbuf2a_1_0_841_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u384s#0, %u383s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u385s#0, %u386s#4) [gbuf1a_1_0_876_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u386s#0, %u386s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u386s#1, %u387s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> gbuf2a_1_0_844_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u386s#1, %u393s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> gbuf2a_1_0_843_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u386s#1, %u505s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> gbuf2a_1_0_842_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u387s#0, %u392s#1) [gbuf2a_1_0_844_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u387s#1, %u389s#2) [gbuf2a_1_0_844_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u388s#0, %u390s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u389s#0, %u388s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u389s#1, %u387s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_844_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u390s#0, %u388s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u390s#1, %u388s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u390s#2, %u453s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0 >> AccumPCU_0_0_output_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u391s#0, %u461s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u391s#1, %u387s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_844_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u392s#0, %u391s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u393s#0, %u398s#1) [gbuf2a_1_0_843_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u393s#1, %u395s#2) [gbuf2a_1_0_843_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u394s#0, %u396s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u395s#0, %u394s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u395s#1, %u393s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_843_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u396s#0, %u394s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u396s#1, %u394s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u396s#2, %u449s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0 >> AccumPCU_0_0_output_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u397s#0, %u457s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u397s#1, %u393s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_843_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u398s#0, %u397s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u399s#0, %u399s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u399s#1, %u433s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU >> gbuf2a_1_0_845_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u400s#0, %u399s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u401s#0, %u402s#4) [gbuf1a_1_0_877_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u402s#0, %u402s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u402s#1, %u403s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> gbuf2a_1_0_848_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u402s#1, %u409s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> gbuf2a_1_0_847_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u402s#1, %u506s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> gbuf2a_1_0_846_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u403s#0, %u408s#1) [gbuf2a_1_0_848_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u403s#1, %u405s#2) [gbuf2a_1_0_848_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u404s#0, %u406s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u405s#0, %u404s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u405s#1, %u403s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_848_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u406s#0, %u404s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u406s#1, %u404s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u406s#2, %u454s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0 >> AccumPCU_0_0_output_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u407s#0, %u462s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u407s#1, %u403s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_848_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u408s#0, %u407s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u409s#0, %u414s#1) [gbuf2a_1_0_847_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u409s#1, %u411s#2) [gbuf2a_1_0_847_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u410s#0, %u412s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u411s#0, %u410s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u411s#1, %u409s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_847_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u412s#0, %u410s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u412s#1, %u410s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u412s#2, %u450s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0 >> AccumPCU_0_0_output_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u413s#0, %u458s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u413s#1, %u409s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_847_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u414s#0, %u413s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u415s#0, %u415s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u415s#1, %u434s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU >> gbuf2a_1_0_849_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u416s#0, %u415s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u417s#0, %u417s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u417s#1, %u418s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> gbuf2a_1_0_852_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u417s#1, %u424s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> gbuf2a_1_0_851_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u417s#1, %u507s#1) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> gbuf2a_1_0_850_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u418s#0, %u423s#1) [gbuf2a_1_0_852_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u418s#1, %u420s#2) [gbuf2a_1_0_852_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u419s#0, %u421s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u420s#0, %u419s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u420s#1, %u418s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_852_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u421s#0, %u419s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u421s#1, %u419s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u421s#2, %u455s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0 >> AccumPCU_0_0_output_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u422s#0, %u463s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u422s#1, %u418s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_852_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u423s#0, %u422s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u424s#0, %u429s#1) [gbuf2a_1_0_851_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u424s#1, %u426s#2) [gbuf2a_1_0_851_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u425s#0, %u427s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u426s#0, %u425s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u426s#1, %u424s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_851_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u427s#0, %u425s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u427s#1, %u425s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u427s#2, %u451s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0 >> AccumPCU_0_0_output_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u428s#0, %u459s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u428s#1, %u424s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_851_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u429s#0, %u428s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u430s#0, %u430s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u430s#1, %u435s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU >> gbuf2a_1_0_853_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u431s#0, %u430s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u432s#0, %u436s#3) [gbuf2a_1_0_841_head1_neck0_data_pmu0 >> addn_1_0_678ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u432s#1, %u504s#3) [gbuf2a_1_0_841_head1_neck0_data_pmu0 >> gbuf2a_1_0_838_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u432s#2, %u504s#4) [gbuf2a_1_0_841_head1_neck0_data_pmu0 >> gbuf2a_1_0_838_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u433s#0, %u436s#4) [gbuf2a_1_0_845_head1_neck0_data_pmu0 >> addn_1_0_678ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u433s#1, %u505s#3) [gbuf2a_1_0_845_head1_neck0_data_pmu0 >> gbuf2a_1_0_842_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u433s#2, %u505s#4) [gbuf2a_1_0_845_head1_neck0_data_pmu0 >> gbuf2a_1_0_842_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#0, %u437s#4) [gbuf2a_1_0_849_head1_neck0_data_pmu0 >> addn_1_0_678ADD1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u434s#1, %u506s#3) [gbuf2a_1_0_849_head1_neck0_data_pmu0 >> gbuf2a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u434s#2, %u506s#4) [gbuf2a_1_0_849_head1_neck0_data_pmu0 >> gbuf2a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u435s#0, %u438s#4) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> addn_1_0_678ADD2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u435s#1, %u507s#2) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2a_1_0_850_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u435s#2, %u507s#3) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2a_1_0_850_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u436s#0, %u436s#2) [addn_1_0_678ADD0_output >> addn_1_0_678ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u436s#1, %u437s#3) [addn_1_0_678ADD0_output >> addn_1_0_678ADD1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u437s#0, %u437s#2) [addn_1_0_678ADD1_output >> addn_1_0_678ADD1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u437s#1, %u438s#3) [addn_1_0_678ADD1_output >> addn_1_0_678ADD2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u438s#0, %u438s#2) [addn_1_0_678ADD2_output >> addn_1_0_678ADD2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u438s#1, %u466s#3) [addn_1_0_678ADD2_output >> gbuf2a_1_0_854_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u439s#0, %u512s#3) [AccumPCU_0_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u440s#0, %u513s#3) [AccumPCU_1_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u441s#0, %u514s#3) [AccumPCU_2_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u442s#0, %u515s#3) [AccumPCU_3_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u443s#0, %u516s#3) [AccumPCU_4_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u444s#0, %u517s#3) [AccumPCU_5_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u445s#0, %u518s#3) [AccumPCU_6_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u446s#0, %u519s#3) [AccumPCU_7_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u447s#0, %u521s#2) [AccumPCU_0_0_output_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u448s#0, %u522s#2) [AccumPCU_0_0_output_1 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u449s#0, %u523s#2) [AccumPCU_0_0_output_2 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u450s#0, %u524s#2) [AccumPCU_0_0_output_3 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u451s#0, %u525s#1) [AccumPCU_0_0_output_4 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u452s#0, %u526s#2) [AccumPCU_0_0_output_5 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u453s#0, %u527s#2) [AccumPCU_0_0_output_6 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u454s#0, %u528s#2) [AccumPCU_0_0_output_7 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u455s#0, %u529s#1) [AccumPCU_0_0_output_8 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u456s#0, %u530s#2) [AccumPCU_0_0_output_9 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u457s#0, %u531s#2) [AccumPCU_0_0_output_10 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u458s#0, %u532s#1) [AccumPCU_0_0_output_11 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u459s#0, %u533s#1) [AccumPCU_0_0_output_12 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u460s#0, %u534s#2) [AccumPCU_0_0_output_13 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u461s#0, %u535s#2) [AccumPCU_0_0_output_14 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u462s#0, %u536s#1) [AccumPCU_0_0_output_15 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u463s#0, %u537s#1) [AccumPCU_0_0_output_16 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u464s#0, %u500s#3) [gbuf2a_1_0_831_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u464s#1, %u500s#5) [gbuf2a_1_0_831_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u464s#2, %u500s#6) [gbuf2a_1_0_831_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u464s#1, %u501s#9) [gbuf2a_1_0_831_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u464s#2, %u501s#10) [gbuf2a_1_0_831_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u464s#1, %u187s#4) [gbuf2a_1_0_831_head1_neck0_data_pmu0 >> gbuf2a_1_0_829_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u464s#2, %u187s#5) [gbuf2a_1_0_831_head1_neck0_data_pmu0 >> gbuf2a_1_0_829_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#0, %u501s#3) [gbuf2a_1_0_830_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u465s#1, %u500s#9) [gbuf2a_1_0_830_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#2, %u500s#10) [gbuf2a_1_0_830_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#1, %u501s#5) [gbuf2a_1_0_830_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#2, %u501s#6) [gbuf2a_1_0_830_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#1, %u187s#6) [gbuf2a_1_0_830_head1_neck0_data_pmu0 >> gbuf2a_1_0_829_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u465s#2, %u187s#7) [gbuf2a_1_0_830_head1_neck0_data_pmu0 >> gbuf2a_1_0_829_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#0, %u502s#3) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u466s#1, %u432s#4) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_841_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#2, %u432s#5) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_841_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#1, %u433s#4) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_845_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#2, %u433s#5) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_845_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#1, %u434s#4) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_849_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#2, %u434s#5) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_849_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#1, %u435s#4) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_853_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u466s#2, %u435s#5) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> gbuf2a_1_0_853_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u467s#0, %u503s#3) [gbuf2a_1_0_837_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u468s#0, %u472s#1) [transpose_1_0_890_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_855_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u469s#0, %u473s#1) [transpose_1_0_891_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_856_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u470s#0, %u474s#1) [transpose_1_0_892_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_857_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u471s#0, %u475s#1) [transpose_1_0_893_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_858_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u472s#0, %u553s#2) [gbuf1a_1_0_855_head1_neck0_data_pmu0 >> s1_backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u473s#0, %u554s#2) [gbuf1a_1_0_856_head1_neck0_data_pmu0 >> s1_backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u474s#0, %u555s#2) [gbuf1a_1_0_857_head1_neck0_data_pmu0 >> s1_backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u475s#0, %u556s#2) [gbuf1a_1_0_858_head1_neck0_data_pmu0 >> s1_backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u476s#0, %u480s#1) [transpose_1_0_894_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_859_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u477s#0, %u481s#1) [transpose_1_0_895_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_860_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u478s#0, %u482s#1) [transpose_1_0_896_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_861_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u479s#0, %u483s#1) [transpose_1_0_897_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_862_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u480s#0, %u557s#2) [gbuf1a_1_0_859_head1_neck0_data_pmu0 >> s1_backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u481s#0, %u558s#2) [gbuf1a_1_0_860_head1_neck0_data_pmu0 >> s1_backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u482s#0, %u559s#2) [gbuf1a_1_0_861_head1_neck0_data_pmu0 >> s1_backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u483s#0, %u560s#2) [gbuf1a_1_0_862_head1_neck0_data_pmu0 >> s1_backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#0, %u488s#1) [transpose_1_0_902_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_863_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u485s#0, %u489s#1) [transpose_1_0_903_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_864_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u486s#0, %u490s#1) [transpose_1_0_904_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_865_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u487s#0, %u491s#1) [transpose_1_0_905_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_866_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u488s#0, %u561s#2) [gbuf1a_1_0_863_head1_neck0_data_pmu0 >> s1_backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u489s#0, %u562s#2) [gbuf1a_1_0_864_head1_neck0_data_pmu0 >> s1_backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u490s#0, %u563s#2) [gbuf1a_1_0_865_head1_neck0_data_pmu0 >> s1_backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u491s#0, %u564s#2) [gbuf1a_1_0_866_head1_neck0_data_pmu0 >> s1_backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u492s#0, %u496s#1) [transpose_1_0_898_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_867_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u493s#0, %u497s#1) [transpose_1_0_899_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_868_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u494s#0, %u498s#1) [transpose_1_0_900_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_869_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u495s#0, %u499s#1) [transpose_1_0_901_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_870_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u496s#0, %u565s#2) [gbuf1a_1_0_867_head1_neck0_data_pmu0 >> s1_backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u497s#0, %u566s#2) [gbuf1a_1_0_868_head1_neck0_data_pmu0 >> s1_backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u498s#0, %u567s#2) [gbuf1a_1_0_869_head1_neck0_data_pmu0 >> s1_backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u499s#0, %u568s#2) [gbuf1a_1_0_870_head1_neck0_data_pmu0 >> s1_backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u500s#0, %u500s#2) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u500s#1, %u194s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u500s#1, %u207s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u500s#1, %u220s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u500s#1, %u233s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u501s#0, %u501s#2) [ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u501s#1, %u240s#1) [ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__temp_cell_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u502s#0, %u502s#2) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u502s#1, %u330s#1) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u503s#0, %u503s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u503s#1, %u353s#3) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u504s#0, %u383s#4) [gbuf2a_1_0_838_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u504s#1, %u322s#2) [gbuf2a_1_0_838_head1_neck0_data_pmu0 >> gbuf2u_1_0_440_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u505s#0, %u399s#4) [gbuf2a_1_0_842_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u505s#1, %u324s#2) [gbuf2a_1_0_842_head1_neck0_data_pmu0 >> gbuf2u_1_0_444_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#0, %u415s#4) [gbuf2a_1_0_846_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u506s#1, %u502s#5) [gbuf2a_1_0_846_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#1, %u503s#5) [gbuf2a_1_0_846_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#1, %u320s#2) [gbuf2a_1_0_846_head1_neck0_data_pmu0 >> gbuf2u_1_0_436_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#1, %u321s#2) [gbuf2a_1_0_846_head1_neck0_data_pmu0 >> gbuf2u_1_0_438_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#1, %u323s#2) [gbuf2a_1_0_846_head1_neck0_data_pmu0 >> gbuf2u_1_0_442_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u506s#1, %u329s#4) [gbuf2a_1_0_846_head1_neck0_data_pmu0 >> gbuf2u_1_0_448_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u507s#0, %u430s#4) [gbuf2a_1_0_850_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u508s#0, %u510s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_399_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u508s#0, %u511s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_402_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u508s#1, %u500s#7) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u508s#2, %u500s#8) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u508s#1, %u501s#7) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u508s#2, %u501s#8) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u508s#1, %u187s#2) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> gbuf2a_1_0_829_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u508s#2, %u187s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0 >> gbuf2a_1_0_829_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u509s#0, %u508s#3) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_832_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u510s#0, %u508s#4) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_399_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u510s#1, %u508s#5) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_399_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u510s#2, %u283s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_399_D_0_0 >> gbuf2u_1_0_421_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u511s#0, %u508s#6) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_402_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u511s#1, %u508s#7) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_402_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_394_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u511s#2, %u258s#4) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_402_D_0_0 >> ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u512s#0, %u520s#4) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u520s#1, %u512s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#1, %u513s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#1, %u514s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#1, %u515s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#1, %u516s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#1, %u517s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#1, %u518s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#1, %u519s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u512s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0_min_0_max_65536] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u513s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_1_0_0_min_65536_max_131072] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u514s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_2_0_0_min_131072_max_196608] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u515s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_3_0_0_min_196608_max_262144] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u516s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_4_0_0_min_262144_max_327680] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u517s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_5_0_0_min_327680_max_393216] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u518s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_6_0_0_min_393216_max_458752] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#2, %u519s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_7_0_0_min_458752_max_524288] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#3, %u284s#5) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> gbuf2u_1_0_421_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u520s#0, %u592s) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_ROB_kBackReadCtx_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u521s#1, %u284s#6) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> gbuf2u_1_0_421_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u521s#0, %u593s) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u522s#0, %u468s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_D_0_0_0 >> transpose_1_0_890_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u522s#1, %u376s#5) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_D_0_0_0 >> gbuf2a_1_0_836_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u523s#0, %u469s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_D_0_0_0 >> transpose_1_0_891_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u523s#1, %u376s#7) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_D_0_0_0 >> gbuf2a_1_0_836_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u524s#0, %u470s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_D_0_0_0 >> transpose_1_0_892_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u524s#1, %u376s#9) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_D_0_0_0 >> gbuf2a_1_0_836_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u525s#0, %u471s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_D_0_0_0 >> transpose_1_0_893_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u526s#0, %u476s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_D_0_0_0 >> transpose_1_0_894_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u526s#1, %u368s#5) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_D_0_0_0 >> gbuf2a_1_0_835_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u527s#0, %u477s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_D_0_0_0 >> transpose_1_0_895_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u527s#1, %u368s#7) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_D_0_0_0 >> gbuf2a_1_0_835_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u528s#0, %u478s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_D_0_0_0 >> transpose_1_0_896_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u528s#1, %u368s#9) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_D_0_0_0 >> gbuf2a_1_0_835_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u529s#0, %u479s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_D_0_0_0 >> transpose_1_0_897_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u530s#0, %u492s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_D_0_0_0 >> transpose_1_0_898_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u530s#1, %u376s#6) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_D_0_0_0 >> gbuf2a_1_0_836_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u531s#0, %u493s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_D_0_0_0 >> transpose_1_0_899_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u531s#1, %u376s#8) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_D_0_0_0 >> gbuf2a_1_0_836_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u532s#0, %u494s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_D_0_0_0 >> transpose_1_0_900_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u533s#0, %u495s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_D_0_0_0 >> transpose_1_0_901_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u534s#0, %u484s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_D_0_0_0 >> transpose_1_0_902_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u534s#1, %u368s#6) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_D_0_0_0 >> gbuf2a_1_0_835_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u535s#0, %u485s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_D_0_0_0 >> transpose_1_0_903_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u535s#1, %u368s#8) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_D_0_0_0 >> gbuf2a_1_0_835_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u536s#0, %u486s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_D_0_0_0 >> transpose_1_0_904_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u537s#0, %u487s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_D_0_0_0 >> transpose_1_0_905_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u538s#1, %u182s#2) [s1_fronting_pmu_load_group_47 >> gbuf1a_1_0_825_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u539s#1, %u183s#2) [s1_fronting_pmu_load_group_48 >> gbuf1a_1_0_826_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u540s#1, %u184s#2) [s1_fronting_pmu_load_group_49 >> gbuf1a_1_0_872_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u541s#1, %u259s#1) [s1_fronting_pmu_load_group_4 >> ptconvlstm__dense_layer__linear_recompute__gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u542s#1, %u267s#1) [s1_fronting_pmu_load_group_27 >> bias_add_1_0_802_wbufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u543s#1, %u185s#2) [s1_fronting_pmu_load_group_50 >> gbuf1a_1_0_827_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u544s#1, %u186s#2) [s1_fronting_pmu_load_group_51 >> gbuf1a_1_0_828_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u545s#1, %u187s#8) [s1_fronting_pmu_load_group_53 >> gbuf2a_1_0_829_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u546s#1, %u189s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u546s#1, %u202s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u546s#1, %u215s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u546s#1, %u228s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u195s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u384s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u208s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u400s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u221s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u416s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u234s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u431s#1) [s1_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#1, %u192s#1) [s1_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#1, %u205s#1) [s1_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#1, %u218s#1) [s1_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#1, %u231s#1) [s1_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#1, %u198s#1) [s1_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#1, %u211s#1) [s1_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#1, %u224s#1) [s1_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#1, %u237s#1) [s1_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u550s#1, %u278s#2) [s1_fronting_pmu_load_group_55 >> gbuf1a_1_0_834_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u551s#1, %u319s#4) [s1_fronting_pmu_load_group_56 >> gbuf2u_1_0_433_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u552s#1, %u552s#5) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#1, %u552s#6) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#2, %u326s#4) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu >> gbuf2a_1_0_916_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u552s#3, %u591s#2) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu >> LogicalAGCU_for_DRAM_input_s1_c0_23] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u553s#1, %u472s#2) [s1_backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 >> gbuf1a_1_0_855_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u553s#0, %u594s) [s1_backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 >> LogicalAGCU_for_DRAM_output_s1_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u554s#1, %u473s#2) [s1_backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 >> gbuf1a_1_0_856_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u554s#0, %u595s) [s1_backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 >> LogicalAGCU_for_DRAM_output_s1_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#1, %u474s#2) [s1_backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 >> gbuf1a_1_0_857_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u555s#0, %u596s) [s1_backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 >> LogicalAGCU_for_DRAM_output_s1_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u556s#1, %u475s#2) [s1_backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 >> gbuf1a_1_0_858_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u556s#0, %u597s) [s1_backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 >> LogicalAGCU_for_DRAM_output_s1_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u557s#1, %u480s#2) [s1_backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 >> gbuf1a_1_0_859_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u557s#0, %u598s) [s1_backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 >> LogicalAGCU_for_DRAM_output_s1_c0_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u558s#1, %u481s#2) [s1_backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 >> gbuf1a_1_0_860_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u558s#0, %u599s) [s1_backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 >> LogicalAGCU_for_DRAM_output_s1_c0_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u559s#1, %u482s#2) [s1_backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 >> gbuf1a_1_0_861_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u559s#0, %u600s) [s1_backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 >> LogicalAGCU_for_DRAM_output_s1_c0_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u560s#1, %u483s#2) [s1_backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 >> gbuf1a_1_0_862_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#0, %u601s) [s1_backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 >> LogicalAGCU_for_DRAM_output_s1_c0_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u561s#1, %u488s#2) [s1_backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 >> gbuf1a_1_0_863_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u561s#0, %u602s) [s1_backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 >> LogicalAGCU_for_DRAM_output_s1_c0_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u562s#1, %u489s#2) [s1_backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 >> gbuf1a_1_0_864_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u562s#0, %u603s) [s1_backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 >> LogicalAGCU_for_DRAM_output_s1_c0_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#1, %u490s#2) [s1_backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 >> gbuf1a_1_0_865_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u563s#0, %u604s) [s1_backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 >> LogicalAGCU_for_DRAM_output_s1_c0_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u564s#1, %u491s#2) [s1_backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 >> gbuf1a_1_0_866_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u564s#0, %u605s) [s1_backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 >> LogicalAGCU_for_DRAM_output_s1_c0_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u565s#1, %u496s#2) [s1_backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 >> gbuf1a_1_0_867_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u565s#0, %u606s) [s1_backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 >> LogicalAGCU_for_DRAM_output_s1_c0_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u566s#1, %u497s#2) [s1_backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 >> gbuf1a_1_0_868_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u566s#0, %u607s) [s1_backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 >> LogicalAGCU_for_DRAM_output_s1_c0_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u567s#1, %u498s#2) [s1_backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 >> gbuf1a_1_0_869_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u567s#0, %u608s) [s1_backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 >> LogicalAGCU_for_DRAM_output_s1_c0_17] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u568s#1, %u499s#2) [s1_backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 >> gbuf1a_1_0_870_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u568s#0, %u609s) [s1_backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 >> LogicalAGCU_for_DRAM_output_s1_c0_18] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u569s#0, %u538s#0) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_47] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u569s#1, %u538s#3) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_47] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u570s#0, %u539s#0) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> s1_fronting_pmu_load_group_48] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u570s#1, %u539s#3) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> s1_fronting_pmu_load_group_48] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u571s#0, %u540s#0) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> s1_fronting_pmu_load_group_49] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u571s#1, %u540s#3) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> s1_fronting_pmu_load_group_49] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u572s#0, %u541s#0) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u572s#1, %u541s#2) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_4] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u573s#0, %u542s#0) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u573s#1, %u542s#2) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_27] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u574s#0, %u272s#0) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> scale_1_0_623_input_B_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u574s#1, %u272s#2) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> scale_1_0_623_input_B_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u575s#0, %u543s#0) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_50] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u575s#1, %u543s#3) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_50] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u576s#0, %u544s#0) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> s1_fronting_pmu_load_group_51] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u576s#1, %u544s#3) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> s1_fronting_pmu_load_group_51] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u577s#0, %u274s#0) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> gbuf2u_1_0_412_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u577s#1, %u274s#5) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> gbuf2u_1_0_412_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u578s#0, %u545s#0) [LogicalAGCU_for_DRAM_input_s1_c0_10 >> s1_fronting_pmu_load_group_53] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u578s#1, %u545s#3) [LogicalAGCU_for_DRAM_input_s1_c0_10 >> s1_fronting_pmu_load_group_53] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u579s#0, %u546s#0) [LogicalAGCU_for_DRAM_input_s1_c0_11 >> s1_fronting_pmu_load_group_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u579s#1, %u546s#2) [LogicalAGCU_for_DRAM_input_s1_c0_11 >> s1_fronting_pmu_load_group_26] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u580s#0, %u547s#0) [LogicalAGCU_for_DRAM_input_s1_c0_12 >> s1_fronting_pmu_load_group_25] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u580s#1, %u547s#2) [LogicalAGCU_for_DRAM_input_s1_c0_12 >> s1_fronting_pmu_load_group_25] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u581s#0, %u548s#0) [LogicalAGCU_for_DRAM_input_s1_c0_13 >> s1_fronting_pmu_load_group_24] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u581s#1, %u548s#2) [LogicalAGCU_for_DRAM_input_s1_c0_13 >> s1_fronting_pmu_load_group_24] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u582s#0, %u549s#0) [LogicalAGCU_for_DRAM_input_s1_c0_14 >> s1_fronting_pmu_load_group_23] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u582s#1, %u549s#2) [LogicalAGCU_for_DRAM_input_s1_c0_14 >> s1_fronting_pmu_load_group_23] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u583s#0, %u257s#0) [LogicalAGCU_for_DRAM_input_s1_c0_15 >> gbuf2u_1_0_392_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u583s#1, %u257s#4) [LogicalAGCU_for_DRAM_input_s1_c0_15 >> gbuf2u_1_0_392_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u584s#0, %u550s#0) [LogicalAGCU_for_DRAM_input_s1_c0_16 >> s1_fronting_pmu_load_group_55] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u584s#1, %u550s#3) [LogicalAGCU_for_DRAM_input_s1_c0_16 >> s1_fronting_pmu_load_group_55] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u585s#0, %u551s#0) [LogicalAGCU_for_DRAM_input_s1_c0_17 >> s1_fronting_pmu_load_group_56] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u585s#1, %u551s#3) [LogicalAGCU_for_DRAM_input_s1_c0_17 >> s1_fronting_pmu_load_group_56] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u586s#0, %u320s#0) [LogicalAGCU_for_DRAM_input_s1_c0_18 >> gbuf2u_1_0_436_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#1, %u320s#3) [LogicalAGCU_for_DRAM_input_s1_c0_18 >> gbuf2u_1_0_436_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u587s#0, %u321s#0) [LogicalAGCU_for_DRAM_input_s1_c0_19 >> gbuf2u_1_0_438_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u587s#1, %u321s#3) [LogicalAGCU_for_DRAM_input_s1_c0_19 >> gbuf2u_1_0_438_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u588s#0, %u322s#0) [LogicalAGCU_for_DRAM_input_s1_c0_20 >> gbuf2u_1_0_440_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u588s#1, %u322s#3) [LogicalAGCU_for_DRAM_input_s1_c0_20 >> gbuf2u_1_0_440_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u589s#0, %u323s#0) [LogicalAGCU_for_DRAM_input_s1_c0_21 >> gbuf2u_1_0_442_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u589s#1, %u323s#3) [LogicalAGCU_for_DRAM_input_s1_c0_21 >> gbuf2u_1_0_442_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u590s#0, %u324s#0) [LogicalAGCU_for_DRAM_input_s1_c0_22 >> gbuf2u_1_0_444_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u590s#1, %u324s#3) [LogicalAGCU_for_DRAM_input_s1_c0_22 >> gbuf2u_1_0_444_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u591s#0, %u552s#0) [LogicalAGCU_for_DRAM_input_s1_c0_23 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u591s#1, %u552s#7) [LogicalAGCU_for_DRAM_input_s1_c0_23 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerFronting_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_1_0_825()  {
          "plasma.BindUnit"(%u182r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_826()  {
          "plasma.BindUnit"(%u183r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_872()  {
          "plasma.BindUnit"(%u184r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_827()  {
          "plasma.BindUnit"(%u185r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_828()  {
          "plasma.BindUnit"(%u186r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_829()  {
          "plasma.BindUnit"(%u187r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0()  {
          "plasma.BindUnit"(%u188r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u189r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u190r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Buf()  {
            "plasma.BindUnit"(%u192r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias()  {
            "plasma.BindUnit"(%u191r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_938()  {
          "plasma.BindUnit"(%u193r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0()  {
          "plasma.BindUnit"(%u194r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u195r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u196r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Buf()  {
            "plasma.BindUnit"(%u198r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias()  {
            "plasma.BindUnit"(%u197r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_937()  {
          "plasma.BindUnit"(%u199r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_0()  {
          "plasma.BindUnit"(%u200r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1()  {
          "plasma.BindUnit"(%u201r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u202r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u203r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Buf()  {
            "plasma.BindUnit"(%u205r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias()  {
            "plasma.BindUnit"(%u204r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_940()  {
          "plasma.BindUnit"(%u206r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1()  {
          "plasma.BindUnit"(%u207r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u208r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u209r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Buf()  {
            "plasma.BindUnit"(%u211r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias()  {
            "plasma.BindUnit"(%u210r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_939()  {
          "plasma.BindUnit"(%u212r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_1()  {
          "plasma.BindUnit"(%u213r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2()  {
          "plasma.BindUnit"(%u214r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u215r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u216r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Buf()  {
            "plasma.BindUnit"(%u218r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias()  {
            "plasma.BindUnit"(%u217r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_942()  {
          "plasma.BindUnit"(%u219r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2()  {
          "plasma.BindUnit"(%u220r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u221r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u222r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Buf()  {
            "plasma.BindUnit"(%u224r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias()  {
            "plasma.BindUnit"(%u223r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_941()  {
          "plasma.BindUnit"(%u225r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_2()  {
          "plasma.BindUnit"(%u226r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3()  {
          "plasma.BindUnit"(%u227r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u228r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u229r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Buf()  {
            "plasma.BindUnit"(%u231r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias()  {
            "plasma.BindUnit"(%u230r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_944()  {
          "plasma.BindUnit"(%u232r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3()  {
          "plasma.BindUnit"(%u233r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u234r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u235r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Buf()  {
            "plasma.BindUnit"(%u237r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias()  {
            "plasma.BindUnit"(%u236r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_943()  {
          "plasma.BindUnit"(%u238r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_3()  {
          "plasma.BindUnit"(%u239r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__temp_cell()  {
          "plasma.BindUnit"(%u240r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__i_t()  {
          "plasma.BindUnit"(%u241r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_946()  {
          "plasma.BindUnit"(%u242r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__f_t()  {
          "plasma.BindUnit"(%u243r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_945()  {
          "plasma.BindUnit"(%u244r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__g_t()  {
          "plasma.BindUnit"(%u245r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_947()  {
          "plasma.BindUnit"(%u246r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__o_t()  {
          "plasma.BindUnit"(%u247r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_950()  {
          "plasma.BindUnit"(%u248r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__mul0()  {
          "plasma.BindUnit"(%u249r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_948()  {
          "plasma.BindUnit"(%u250r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__mul1()  {
          "plasma.BindUnit"(%u251r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_949()  {
          "plasma.BindUnit"(%u252r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__cell()  {
          "plasma.BindUnit"(%u253r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__tanh_cell()  {
          "plasma.BindUnit"(%u254r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_951()  {
          "plasma.BindUnit"(%u255r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__hidden()  {
          "plasma.BindUnit"(%u256r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_392()  {
          "plasma.BindUnit"(%u257r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_recompute_()  {
          "plasma.BindUnit"(%u258r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u259r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u260r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u261r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u262r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u263r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_recompute__rowcolpargemm_1()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_recompute__rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_805()  {
          "plasma.BindUnit"(%u264r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u265r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u266r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @bias_add_1_0_802()  {
          plasma.SuperNode @bias_add_1_0_802.add0()  {
            "plasma.BindUnit"(%u268r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @bias_add_1_0_802.wbuf()  {
            "plasma.BindUnit"(%u267r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_1_0_406()  {
          "plasma.BindUnit"(%u269r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__criterion__mseloss_bwd_sub()  {
          "plasma.BindUnit"(%u270r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_622()  {
          "plasma.BindUnit"(%u271r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_623()  {
          "plasma.BindUnit"(%u272r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u273r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_412()  {
          "plasma.BindUnit"(%u274r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_414()  {
          "plasma.BindUnit"(%u275r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_t_output0_bwd_addn0()  {
          plasma.SuperNode @ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0()  {
            "plasma.BindUnit"(%u276r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_1_0_419()  {
          "plasma.BindUnit"(%u277r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_834()  {
          "plasma.BindUnit"(%u278r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_loss_grad_b()  {
          "plasma.BindUnit"(%u279r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u280r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u281r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u282r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_loss_grad_b_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf2u_1_0_421()  {
          "plasma.BindUnit"(%u283r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u284r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_422()  {
          "plasma.BindUnit"(%u285r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a()  {
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
          plasma.SuperNode @W_Buf() {}
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
            "plasma.BindUnit"(%u310r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u311r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2u_1_0_424()  {
          "plasma.BindUnit"(%u312r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_430()  {
          "plasma.BindUnit"(%u313r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__indexselect_bwd_loss_just_index()  {
          "plasma.BindUnit"(%u314r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u315r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u316r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u317r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u318r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_433()  {
          "plasma.BindUnit"(%u319r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_436()  {
          "plasma.BindUnit"(%u320r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_438()  {
          "plasma.BindUnit"(%u321r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_440()  {
          "plasma.BindUnit"(%u322r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_442()  {
          "plasma.BindUnit"(%u323r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_444()  {
          "plasma.BindUnit"(%u324r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_980()  {
          "plasma.BindUnit"(%u325r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_916()  {
          "plasma.BindUnit"(%u326r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_446()  {
          "plasma.BindUnit"(%u327r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_915()  {
          "plasma.BindUnit"(%u328r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_448()  {
          "plasma.BindUnit"(%u329r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg()  {
          "plasma.BindUnit"(%u330r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum()  {
          "plasma.BindUnit"(%u331r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_976()  {
          "plasma.BindUnit"(%u332r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_igates()  {
          "plasma.BindUnit"(%u333r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_fgates()  {
          "plasma.BindUnit"(%u334r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_ggates()  {
          "plasma.BindUnit"(%u335r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_981()  {
          "plasma.BindUnit"(%u336r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_ogates()  {
          "plasma.BindUnit"(%u337r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates()  {
          "plasma.BindUnit"(%u338r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0()  {
          "plasma.BindUnit"(%u339r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_952()  {
          "plasma.BindUnit"(%u340r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates()  {
          "plasma.BindUnit"(%u341r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1()  {
          "plasma.BindUnit"(%u342r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_953()  {
          "plasma.BindUnit"(%u343r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2()  {
          "plasma.BindUnit"(%u344r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh()  {
          "plasma.BindUnit"(%u345r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_977()  {
          "plasma.BindUnit"(%u346r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_ogate_g()  {
          "plasma.BindUnit"(%u347r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_967()  {
          "plasma.BindUnit"(%u348r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_tanh_g()  {
          "plasma.BindUnit"(%u349r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_958()  {
          "plasma.BindUnit"(%u350r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g()  {
          "plasma.BindUnit"(%u351r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_959()  {
          "plasma.BindUnit"(%u352r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum()  {
          "plasma.BindUnit"(%u353r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_978()  {
          "plasma.BindUnit"(%u354r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_979()  {
          "plasma.BindUnit"(%u355r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_fgate_g()  {
          "plasma.BindUnit"(%u356r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_965()  {
          "plasma.BindUnit"(%u357r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_873()  {
          "plasma.BindUnit"(%u358r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_ct_1_g()  {
          "plasma.BindUnit"(%u359r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_igate_g()  {
          "plasma.BindUnit"(%u360r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_964()  {
          "plasma.BindUnit"(%u361r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_874()  {
          "plasma.BindUnit"(%u362r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_ggate_g()  {
          "plasma.BindUnit"(%u363r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_966()  {
          "plasma.BindUnit"(%u364r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_875()  {
          "plasma.BindUnit"(%u365r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0()  {
          "plasma.BindUnit"(%u366r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_835()  {
          "plasma.BindUnit"(%u367r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u368r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_840()  {
          "plasma.BindUnit"(%u369r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a()  {
          "plasma.BindUnit"(%u370r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u371r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u372r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u373r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u374r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_836()  {
          "plasma.BindUnit"(%u375r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u376r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_839()  {
          "plasma.BindUnit"(%u377r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a()  {
          "plasma.BindUnit"(%u378r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u379r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u380r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u381r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u382r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b()  {
          "plasma.BindUnit"(%u383r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u384r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_876()  {
          "plasma.BindUnit"(%u385r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1()  {
          "plasma.BindUnit"(%u386r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_844()  {
          "plasma.BindUnit"(%u387r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a()  {
          "plasma.BindUnit"(%u388r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u389r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u390r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u391r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u392r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_843()  {
          "plasma.BindUnit"(%u393r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a()  {
          "plasma.BindUnit"(%u394r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u395r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u396r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u397r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u398r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b()  {
          "plasma.BindUnit"(%u399r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u400r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_877()  {
          "plasma.BindUnit"(%u401r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2()  {
          "plasma.BindUnit"(%u402r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_848()  {
          "plasma.BindUnit"(%u403r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a()  {
          "plasma.BindUnit"(%u404r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u405r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u406r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u407r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u408r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_847()  {
          "plasma.BindUnit"(%u409r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a()  {
          "plasma.BindUnit"(%u410r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u411r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u412r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u413r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u414r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b()  {
          "plasma.BindUnit"(%u415r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u416r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3()  {
          "plasma.BindUnit"(%u417r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_852()  {
          "plasma.BindUnit"(%u418r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a()  {
          "plasma.BindUnit"(%u419r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u420r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u421r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u422r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u423r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_851()  {
          "plasma.BindUnit"(%u424r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a()  {
          "plasma.BindUnit"(%u425r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u426r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u427r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u428r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u429r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b()  {
          "plasma.BindUnit"(%u430r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u431r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf2a_1_0_841()  {
          "plasma.BindUnit"(%u432r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_845()  {
          "plasma.BindUnit"(%u433r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_849()  {
          "plasma.BindUnit"(%u434r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_853()  {
          "plasma.BindUnit"(%u435r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @addn_1_0_678()  {
          plasma.SuperNode @addn_1_0_678ADD2()  {
            "plasma.BindUnit"(%u438r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @addn_1_0_678ADD1()  {
            "plasma.BindUnit"(%u437r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @addn_1_0_678ADD0()  {
            "plasma.BindUnit"(%u436r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_accum()  {
          plasma.SuperNode @AccumPCU_7_0()  {
            "plasma.BindUnit"(%u446r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_6_0()  {
            "plasma.BindUnit"(%u445r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_5_0()  {
            "plasma.BindUnit"(%u444r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_4_0()  {
            "plasma.BindUnit"(%u443r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_3_0()  {
            "plasma.BindUnit"(%u442r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_2_0()  {
            "plasma.BindUnit"(%u441r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_1_0()  {
            "plasma.BindUnit"(%u440r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u439r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u512r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u513r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u514r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u515r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u516r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u517r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u518r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u519r) : (!plasma.Unitref) -> ()
            "plasma.BindUnit"(%u520r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u447r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u521r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u448r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u522r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u449r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u523r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_2()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u450r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u524r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_3()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u451r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u525r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_4()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u452r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u526r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_5()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u453r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u527r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_6()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u454r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u528r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_7()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u455r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u529r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_8()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u456r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u530r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_9()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u457r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u531r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_10()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u458r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u532r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_11()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u459r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u533r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_12()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u460r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u534r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_13()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u461r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u535r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_14()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u462r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u536r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_15()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u463r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u537r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2a_1_0_831()  {
          "plasma.BindUnit"(%u464r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_830()  {
          "plasma.BindUnit"(%u465r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_854()  {
          "plasma.BindUnit"(%u466r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_837()  {
          "plasma.BindUnit"(%u467r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_890()  {
          plasma.SuperNode @transpose_1_0_890.buffer()  {
            "plasma.BindUnit"(%u468r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_891()  {
          plasma.SuperNode @transpose_1_0_891.buffer()  {
            "plasma.BindUnit"(%u469r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_892()  {
          plasma.SuperNode @transpose_1_0_892.buffer()  {
            "plasma.BindUnit"(%u470r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_893()  {
          plasma.SuperNode @transpose_1_0_893.buffer()  {
            "plasma.BindUnit"(%u471r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_855()  {
          "plasma.BindUnit"(%u472r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_856()  {
          "plasma.BindUnit"(%u473r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_857()  {
          "plasma.BindUnit"(%u474r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_858()  {
          "plasma.BindUnit"(%u475r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_894()  {
          plasma.SuperNode @transpose_1_0_894.buffer()  {
            "plasma.BindUnit"(%u476r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_895()  {
          plasma.SuperNode @transpose_1_0_895.buffer()  {
            "plasma.BindUnit"(%u477r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_896()  {
          plasma.SuperNode @transpose_1_0_896.buffer()  {
            "plasma.BindUnit"(%u478r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_897()  {
          plasma.SuperNode @transpose_1_0_897.buffer()  {
            "plasma.BindUnit"(%u479r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_859()  {
          "plasma.BindUnit"(%u480r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_860()  {
          "plasma.BindUnit"(%u481r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_861()  {
          "plasma.BindUnit"(%u482r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_862()  {
          "plasma.BindUnit"(%u483r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_902()  {
          plasma.SuperNode @transpose_1_0_902.buffer()  {
            "plasma.BindUnit"(%u484r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_903()  {
          plasma.SuperNode @transpose_1_0_903.buffer()  {
            "plasma.BindUnit"(%u485r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_904()  {
          plasma.SuperNode @transpose_1_0_904.buffer()  {
            "plasma.BindUnit"(%u486r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_905()  {
          plasma.SuperNode @transpose_1_0_905.buffer()  {
            "plasma.BindUnit"(%u487r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_863()  {
          "plasma.BindUnit"(%u488r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_864()  {
          "plasma.BindUnit"(%u489r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_865()  {
          "plasma.BindUnit"(%u490r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_866()  {
          "plasma.BindUnit"(%u491r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_898()  {
          plasma.SuperNode @transpose_1_0_898.buffer()  {
            "plasma.BindUnit"(%u492r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_899()  {
          plasma.SuperNode @transpose_1_0_899.buffer()  {
            "plasma.BindUnit"(%u493r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_900()  {
          plasma.SuperNode @transpose_1_0_900.buffer()  {
            "plasma.BindUnit"(%u494r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_901()  {
          plasma.SuperNode @transpose_1_0_901.buffer()  {
            "plasma.BindUnit"(%u495r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_867()  {
          "plasma.BindUnit"(%u496r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_868()  {
          "plasma.BindUnit"(%u497r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_869()  {
          "plasma.BindUnit"(%u498r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_870()  {
          "plasma.BindUnit"(%u499r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer()  {
          "plasma.BindUnit"(%u500r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer()  {
          "plasma.BindUnit"(%u501r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g()  {
          "plasma.BindUnit"(%u502r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_cell_i_g()  {
          "plasma.BindUnit"(%u503r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_838()  {
          "plasma.BindUnit"(%u504r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_842()  {
          "plasma.BindUnit"(%u505r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_846()  {
          "plasma.BindUnit"(%u506r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_850()  {
          "plasma.BindUnit"(%u507r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_394()  {
          "plasma.BindUnit"(%u508r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_832()  {
          "plasma.BindUnit"(%u509r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_399()  {
          "plasma.BindUnit"(%u510r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_402()  {
          "plasma.BindUnit"(%u511r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_47()  {
          "plasma.BindUnit"(%u538r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_48()  {
          "plasma.BindUnit"(%u539r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_49()  {
          "plasma.BindUnit"(%u540r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_4()  {
          "plasma.BindUnit"(%u541r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_27()  {
          "plasma.BindUnit"(%u542r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_50()  {
          "plasma.BindUnit"(%u543r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_51()  {
          "plasma.BindUnit"(%u544r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_53()  {
          "plasma.BindUnit"(%u545r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_26()  {
          "plasma.BindUnit"(%u546r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_25()  {
          "plasma.BindUnit"(%u547r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_24()  {
          "plasma.BindUnit"(%u548r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_23()  {
          "plasma.BindUnit"(%u549r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_55()  {
          "plasma.BindUnit"(%u550r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_56()  {
          "plasma.BindUnit"(%u551r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tiler()  {
          "plasma.BindUnit"(%u552r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tilerTiler() {}
        }
        plasma.SuperNode @s1.backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300()  {
          "plasma.BindUnit"(%u553r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301()  {
          "plasma.BindUnit"(%u554r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302()  {
          "plasma.BindUnit"(%u555r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303()  {
          "plasma.BindUnit"(%u556r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304()  {
          "plasma.BindUnit"(%u557r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305()  {
          "plasma.BindUnit"(%u558r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306()  {
          "plasma.BindUnit"(%u559r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307()  {
          "plasma.BindUnit"(%u560r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308()  {
          "plasma.BindUnit"(%u561r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309()  {
          "plasma.BindUnit"(%u562r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310()  {
          "plasma.BindUnit"(%u563r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311()  {
          "plasma.BindUnit"(%u564r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312()  {
          "plasma.BindUnit"(%u565r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313()  {
          "plasma.BindUnit"(%u566r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314()  {
          "plasma.BindUnit"(%u567r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315()  {
          "plasma.BindUnit"(%u568r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_1:lstm_operand_0"()  {
          "plasma.BindUnit"(%u569r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_2:lstm_operand_1"()  {
          "plasma.BindUnit"(%u570r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_3:ptconvlstm__lstm_layer__lstm__outputs__0_slice_1"()  {
          "plasma.BindUnit"(%u571r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_4:group_4"()  {
          "plasma.BindUnit"(%u572r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_5:group_27"()  {
          "plasma.BindUnit"(%u573r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_6:ptconvlstm__criterion__mseloss__outputs__0__grad"()  {
          "plasma.BindUnit"(%u574r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_7:ptconvlstm__lstm_layer__lstm__hidden__output__grad"()  {
          "plasma.BindUnit"(%u575r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_8:ptconvlstm__lstm_layer__lstm__cell__output__grad"()  {
          "plasma.BindUnit"(%u576r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_9:ptconvlstm__view__outputs__0__grad"()  {
          "plasma.BindUnit"(%u577r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_10:inp_window"()  {
          "plasma.BindUnit"(%u578r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_11:group_26"()  {
          "plasma.BindUnit"(%u579r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_12:group_25"()  {
          "plasma.BindUnit"(%u580r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_13:group_24"()  {
          "plasma.BindUnit"(%u581r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_14:group_23"()  {
          "plasma.BindUnit"(%u582r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_15:out_window"()  {
          "plasma.BindUnit"(%u583r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_16:ptconvlstm__dense_layer__weight"()  {
          "plasma.BindUnit"(%u584r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_17:inp_window"()  {
          "plasma.BindUnit"(%u585r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_18:ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u586r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_19:ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u587r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_20:ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u588r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_21:ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u589r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_22:ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u590r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_23:ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs"()  {
          "plasma.BindUnit"(%u591r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_1:ptconvlstm__dense_layer__weight__grad"()  {
          "plasma.BindUnit"(%u592r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_2:ptconvlstm__dense_layer__bias__grad"()  {
          "plasma.BindUnit"(%u593r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_3:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u594r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_4:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u595r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_5:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u596r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_6:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u597r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_7:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u598r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_8:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u599r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_9:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u600r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_10:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u601r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_11:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u602r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_12:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u603r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_13:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u604r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_14:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u605r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_15:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u606r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_16:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u607r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_17:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u608r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_18:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u609r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s2() attributes {kControlBlockId = 2 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,R>, %arg10: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg11: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, %arg12: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg13: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, %arg14: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, %arg15: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, %arg16: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, %arg17: !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,W>, %arg18: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,W>, %arg19: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>, %arg20: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, %arg21: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>):  // no predecessors
      %u610r, %u610s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 610 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u611r, %u611s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 611 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u612r, %u612s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 612 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u613r, %u613s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 613 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u614r, %u614s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 614 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u615r, %u615s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 615 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u616r, %u616s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 616 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u617r, %u617s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 617 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u618r, %u618s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 618 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u619r, %u619s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 619 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u620r, %u620s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_917_head1_neck0_data_pmu0", kUnitId = 620 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u621r, %u621s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 621 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u622r, %u622s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 622 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u623r, %u623s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 623 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u624r, %u624s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 624 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u625r, %u625s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 625 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u626r, %u626s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_918_head1_neck0_data_pmu0", kUnitId = 626 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u627r, %u627s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 627 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u628r, %u628s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 628 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u629r, %u629s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 629 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u630r, %u630s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 630 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u631r, %u631s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 631 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u632r, %u632s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_919_head1_neck0_data_pmu0", kUnitId = 632 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u633r, %u633s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 633 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u634r, %u634s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 634 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u635r, %u635s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 635 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u636r, %u636s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 636 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u637r, %u637s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 637 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u638r, %u638s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_920_head1_neck0_data_pmu0", kUnitId = 638 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u639r, %u639s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 639 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u640r, %u640s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 640 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u641r, %u641s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 641 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u642r, %u642s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 642 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u643r, %u643s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 643 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u644r, %u644s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_4", kUnitId = 644 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u645r, %u645s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_30", kUnitId = 645 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u646r, %u646s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_28", kUnitId = 646 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u647r, %u647s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_27", kUnitId = 647 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u648r, %u648s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_31", kUnitId = 648 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u649r, %u649s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_29", kUnitId = 649 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u650r, %u650s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_26", kUnitId = 650 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u651r, %u651s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_81", kUnitId = 651 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u652r, %u652s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_25", kUnitId = 652 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u653r, %u653s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_82", kUnitId = 653 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u654r, %u654s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_24", kUnitId = 654 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u655r, %u655s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_83", kUnitId = 655 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u656r, %u656s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_23", kUnitId = 656 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u657r, %u657s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_84", kUnitId = 657 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u658r, %u658s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", kUnitId = 658 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u659r, %u659s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", kUnitId = 659 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u660r, %u660s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", kUnitId = 660 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u661r, %u661s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", kUnitId = 661 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u662r, %u662s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 662 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u663r, %u663s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 663 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u664r, %u664s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 664 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u665r, %u665s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 665 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u666r, %u666s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_1", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 666 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u667r, %u667s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_2", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 667 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u668r, %u668s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_3", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 668 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u669r, %u669s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_4", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 669 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u670r, %u670s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 670 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u671r, %u671s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_6", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 671 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u672r, %u672s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_7", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 672 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u673r, %u673s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_8", kOnChipLayout = !plasma.TL<4x64x136xbf16:RVRM:64>, kUnitId = 673 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u674r, %u674s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_9", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 674 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u675r, %u675s:2 = plasma.unit.Vag(%arg9) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_10", kOnChipLayout = !plasma.TL<4x64x64xbf16:RVRM:64>, kUnitId = 675 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u676r, %u676s:2 = plasma.unit.Vag(%arg10) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_11", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 676 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u677r, %u677s:2 = plasma.unit.Vag(%arg11) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_12", kOnChipLayout = !plasma.TL<4x64x1xbf16:RVRM:64>, kUnitId = 677 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u678r, %u678s:2 = plasma.unit.Vag(%arg12) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_13", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 678 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u679r, %u679s:2 = plasma.unit.Vag(%arg13) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_14", kOnChipLayout = !plasma.TL<4x64x1xbf16:RVRM:64>, kUnitId = 679 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u680r, %u680s = plasma.unit.Vag(%arg14) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_1", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 680 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u681r, %u681s = plasma.unit.Vag(%arg15) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_2", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 681 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u682r, %u682s = plasma.unit.Vag(%arg16) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_3", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 682 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u683r, %u683s = plasma.unit.Vag(%arg17) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_4", kOnChipLayout = !plasma.TL<1744x64xui8:RVRM>, kUnitId = 683 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u684r, %u684s = plasma.unit.Vag(%arg18) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_5", kOnChipLayout = !plasma.TL<1088x64xui8:RVRM>, kUnitId = 684 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u685r, %u685s = plasma.unit.Vag(%arg19) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_6", kOnChipLayout = !plasma.TL<512x64xui8:RVRM>, kUnitId = 685 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u686r, %u686s = plasma.unit.Vag(%arg20) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_7", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 686 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u687r, %u687s = plasma.unit.Vag(%arg21) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_8", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 687 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u610s#0, %u611s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u610s#1, %u610s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u610s#2, %u610s#7) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u611s#0, %u610s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u611s#1, %u612s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u611s#2, %u659s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u612s#0, %u613s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u612s#1, %u612s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u612s#2, %u612s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u613s#0, %u610s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u613s#1, %u612s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u613s#2, %u658s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u614s#0, %u610s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u615s#0, %u616s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u615s#1, %u615s#6) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u615s#2, %u615s#7) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u616s#0, %u615s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u616s#1, %u617s#4) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u616s#2, %u661s#1) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u617s#0, %u618s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u617s#1, %u617s#5) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u617s#2, %u617s#6) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u618s#0, %u615s#5) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u618s#1, %u617s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u618s#2, %u660s#1) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u619s#0, %u615s#4) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u620s#0, %u625s#1) [gbuf1a_2_0_917_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u620s#1, %u651s#2) [gbuf1a_2_0_917_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_81] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#0, %u622s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u621s#1, %u621s#6) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u621s#2, %u621s#7) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u622s#0, %u621s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u622s#1, %u623s#4) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u623s#0, %u624s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u623s#1, %u623s#5) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u623s#2, %u623s#6) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u624s#0, %u621s#5) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u624s#1, %u623s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u624s#2, %u662s#1) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u625s#0, %u621s#4) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u626s#0, %u631s#1) [gbuf1a_2_0_918_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u626s#1, %u653s#2) [gbuf1a_2_0_918_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_82] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u627s#0, %u628s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u627s#1, %u627s#6) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u627s#2, %u627s#7) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u628s#0, %u627s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u628s#1, %u629s#4) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u629s#0, %u630s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u629s#1, %u629s#5) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u629s#6) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u630s#0, %u627s#5) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u630s#1, %u629s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u630s#2, %u663s#1) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u631s#0, %u627s#4) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u632s#0, %u637s#1) [gbuf1a_2_0_919_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u632s#1, %u655s#2) [gbuf1a_2_0_919_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_83] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u633s#0, %u634s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u633s#1, %u633s#6) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u633s#2, %u633s#7) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u634s#0, %u633s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u634s#1, %u635s#4) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u635s#0, %u636s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u635s#1, %u635s#5) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u635s#2, %u635s#6) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u636s#0, %u633s#5) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u636s#1, %u635s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u636s#2, %u664s#1) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u637s#0, %u633s#4) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u638s#0, %u643s#1) [gbuf1a_2_0_920_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u638s#1, %u657s#2) [gbuf1a_2_0_920_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_84] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u639s#0, %u640s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u639s#1, %u639s#6) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u639s#2, %u639s#7) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u640s#0, %u639s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u640s#1, %u641s#4) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u641s#0, %u642s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u641s#1, %u641s#5) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u641s#2, %u641s#6) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u642s#0, %u639s#5) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u642s#1, %u641s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u642s#2, %u665s#1) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u643s#0, %u639s#4) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u644s#1, %u613s#4) [s2_fronting_pmu_load_group_4 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u645s#1, %u614s#1) [s2_fronting_pmu_load_group_30 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u646s#1, %u611s#4) [s2_fronting_pmu_load_group_28 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u647s#1, %u618s#4) [s2_fronting_pmu_load_group_27 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u648s#1, %u619s#1) [s2_fronting_pmu_load_group_31 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u649s#1, %u616s#4) [s2_fronting_pmu_load_group_29 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u649s#1, %u622s#4) [s2_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u649s#1, %u628s#4) [s2_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u649s#1, %u634s#4) [s2_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u649s#1, %u640s#4) [s2_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u650s#1, %u624s#4) [s2_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u651s#1, %u620s#2) [s2_fronting_pmu_load_group_81 >> gbuf1a_2_0_917_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u652s#1, %u630s#4) [s2_fronting_pmu_load_group_25 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u653s#1, %u626s#2) [s2_fronting_pmu_load_group_82 >> gbuf1a_2_0_918_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u654s#1, %u636s#4) [s2_fronting_pmu_load_group_24 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u655s#1, %u632s#2) [s2_fronting_pmu_load_group_83 >> gbuf1a_2_0_919_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u656s#1, %u642s#4) [s2_fronting_pmu_load_group_23 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u657s#1, %u638s#2) [s2_fronting_pmu_load_group_84 >> gbuf1a_2_0_920_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u658s#1, %u613s#5) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u658s#2, %u613s#6) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u658s#0, %u680s) [s2_backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u659s#1, %u611s#5) [s2_backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u659s#2, %u611s#6) [s2_backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u659s#0, %u681s) [s2_backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u660s#0, %u682s) [s2_backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u661s#0, %u683s) [s2_backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u662s#0, %u684s) [s2_backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u663s#0, %u685s) [s2_backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u664s#0, %u686s) [s2_backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u665s#0, %u687s) [s2_backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u666s#0, %u644s#0) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u666s#1, %u644s#2) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_4] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u667s#0, %u645s#0) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_30] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u667s#1, %u645s#2) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_30] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u668s#0, %u646s#0) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_28] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u668s#1, %u646s#2) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_28] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u669s#0, %u647s#0) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u669s#1, %u647s#2) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_27] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u670s#0, %u648s#0) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_31] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u670s#1, %u648s#2) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_31] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u671s#0, %u649s#0) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_29] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u671s#1, %u649s#2) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_29] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u672s#0, %u650s#0) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u672s#1, %u650s#2) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_26] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u673s#0, %u651s#0) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_81] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u673s#1, %u651s#3) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_81] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u674s#0, %u652s#0) [LogicalAGCU_for_DRAM_input_s2_c0_9 >> s2_fronting_pmu_load_group_25] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u674s#1, %u652s#2) [LogicalAGCU_for_DRAM_input_s2_c0_9 >> s2_fronting_pmu_load_group_25] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u675s#0, %u653s#0) [LogicalAGCU_for_DRAM_input_s2_c0_10 >> s2_fronting_pmu_load_group_82] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u675s#1, %u653s#3) [LogicalAGCU_for_DRAM_input_s2_c0_10 >> s2_fronting_pmu_load_group_82] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u676s#0, %u654s#0) [LogicalAGCU_for_DRAM_input_s2_c0_11 >> s2_fronting_pmu_load_group_24] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u676s#1, %u654s#2) [LogicalAGCU_for_DRAM_input_s2_c0_11 >> s2_fronting_pmu_load_group_24] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u677s#0, %u655s#0) [LogicalAGCU_for_DRAM_input_s2_c0_12 >> s2_fronting_pmu_load_group_83] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u677s#1, %u655s#3) [LogicalAGCU_for_DRAM_input_s2_c0_12 >> s2_fronting_pmu_load_group_83] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u678s#0, %u656s#0) [LogicalAGCU_for_DRAM_input_s2_c0_13 >> s2_fronting_pmu_load_group_23] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u678s#1, %u656s#2) [LogicalAGCU_for_DRAM_input_s2_c0_13 >> s2_fronting_pmu_load_group_23] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u679s#0, %u657s#0) [LogicalAGCU_for_DRAM_input_s2_c0_14 >> s2_fronting_pmu_load_group_84] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u679s#1, %u657s#3) [LogicalAGCU_for_DRAM_input_s2_c0_14 >> s2_fronting_pmu_load_group_84] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u610r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u611r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u612r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u613r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u614r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u615r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u616r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u617r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u618r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u619r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_917()  {
          "plasma.BindUnit"(%u620r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u621r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u622r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u623r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u624r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u625r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_918()  {
          "plasma.BindUnit"(%u626r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u627r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u628r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u629r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u630r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u631r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_919()  {
          "plasma.BindUnit"(%u632r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u633r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u634r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u635r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u636r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u637r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_920()  {
          "plasma.BindUnit"(%u638r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u639r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u640r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u641r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u642r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u643r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_4()  {
          "plasma.BindUnit"(%u644r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_30()  {
          "plasma.BindUnit"(%u645r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_28()  {
          "plasma.BindUnit"(%u646r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_27()  {
          "plasma.BindUnit"(%u647r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_31()  {
          "plasma.BindUnit"(%u648r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_29()  {
          "plasma.BindUnit"(%u649r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_26()  {
          "plasma.BindUnit"(%u650r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_81()  {
          "plasma.BindUnit"(%u651r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_25()  {
          "plasma.BindUnit"(%u652r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_82()  {
          "plasma.BindUnit"(%u653r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_24()  {
          "plasma.BindUnit"(%u654r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_83()  {
          "plasma.BindUnit"(%u655r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_23()  {
          "plasma.BindUnit"(%u656r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_84()  {
          "plasma.BindUnit"(%u657r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u658r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u659r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u660r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u661r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u662r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u663r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u664r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u665r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_1:group_4"()  {
          "plasma.BindUnit"(%u666r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_2:group_30"()  {
          "plasma.BindUnit"(%u667r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_3:group_28"()  {
          "plasma.BindUnit"(%u668r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_4:group_27"()  {
          "plasma.BindUnit"(%u669r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_5:group_31"()  {
          "plasma.BindUnit"(%u670r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_6:group_29"()  {
          "plasma.BindUnit"(%u671r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_7:group_26"()  {
          "plasma.BindUnit"(%u672r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_8:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u673r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_9:group_25"()  {
          "plasma.BindUnit"(%u674r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_10:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u675r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_11:group_24"()  {
          "plasma.BindUnit"(%u676r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_12:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u677r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_13:group_23"()  {
          "plasma.BindUnit"(%u678r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_14:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u679r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_1:group_4"()  {
          "plasma.BindUnit"(%u680r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_2:group_28"()  {
          "plasma.BindUnit"(%u681r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_3:group_27"()  {
          "plasma.BindUnit"(%u682r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_4:group_29"()  {
          "plasma.BindUnit"(%u683r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_5:group_26"()  {
          "plasma.BindUnit"(%u684r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_6:group_25"()  {
          "plasma.BindUnit"(%u685r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_7:group_24"()  {
          "plasma.BindUnit"(%u686r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_8:group_23"()  {
          "plasma.BindUnit"(%u687r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
}
