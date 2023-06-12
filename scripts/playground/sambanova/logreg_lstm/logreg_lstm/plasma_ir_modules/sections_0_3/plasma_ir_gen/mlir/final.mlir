module @sections_0_3 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = false}  {
  plasma.Section @s0() attributes {kControlBlockId = 0 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg10: !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>, %arg11: !plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,W>, %arg12: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, %arg13: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, %arg14: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, %arg15: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, %arg16: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>, %arg17: !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,W>, %arg18: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, %arg19: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>, %arg20: !plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,W>, %arg21: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>):  // no predecessors
      %u0r, %u0s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_890_head1_neck0_data_pmu0", kUnitId = 0 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u1r, %u1s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_825_head1_neck0_data_pmu0", kUnitId = 1 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u2r, %u2s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_827_head1_neck0_data_pmu0", kUnitId = 2 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u3r, %u3s:7 = plasma.unit.Pmu() attributes {kName = "gbuf4a_0_0_828_head1_neck0_data_pmu0", kUnitId = 3 : i64}  {
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
      %u9r, %u9s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_947_head1_neck0_data_pmu0", kUnitId = 9 : i64}  {
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
      %u15r, %u15s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_946_head1_neck0_data_pmu0", kUnitId = 15 : i64}  {
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
      %u22r, %u22s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_949_head1_neck0_data_pmu0", kUnitId = 22 : i64}  {
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
      %u28r, %u28s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_948_head1_neck0_data_pmu0", kUnitId = 28 : i64}  {
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
      %u35r, %u35s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_951_head1_neck0_data_pmu0", kUnitId = 35 : i64}  {
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
      %u41r, %u41s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_950_head1_neck0_data_pmu0", kUnitId = 41 : i64}  {
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
      %u48r, %u48s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_953_head1_neck0_data_pmu0", kUnitId = 48 : i64}  {
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
      %u54r, %u54s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_952_head1_neck0_data_pmu0", kUnitId = 54 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u55r, %u55s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_add_3_output", kUnitId = 55 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u56r, %u56s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_i_t_output", kUnitId = 56 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u57r, %u57s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_955_head1_neck0_data_pmu0", kUnitId = 57 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u58r, %u58s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_f_t_output", kUnitId = 58 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u59r, %u59s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_954_head1_neck0_data_pmu0", kUnitId = 59 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u60r, %u60s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_g_t_output", kUnitId = 60 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u61r, %u61s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_956_head1_neck0_data_pmu0", kUnitId = 61 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u62r, %u62s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_o_t_output", kUnitId = 62 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u63r, %u63s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_959_head1_neck0_data_pmu0", kUnitId = 63 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u64r, %u64s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_829_head1_neck0_data_pmu0", kUnitId = 64 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u65r, %u65s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_mul0_output", kUnitId = 65 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u66r, %u66s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_957_head1_neck0_data_pmu0", kUnitId = 66 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u67r, %u67s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_mul1_output", kUnitId = 67 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u68r, %u68s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_958_head1_neck0_data_pmu0", kUnitId = 68 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u69r, %u69s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_cell_output", kUnitId = 69 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u70r, %u70s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_tanh_cell_output", kUnitId = 70 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u71r, %u71s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_960_head1_neck0_data_pmu0", kUnitId = 71 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u72r, %u72s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_hidden_output", kUnitId = 72 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u73r, %u73s:2 = plasma.unit.Pmu() attributes {kName = "vector_transpose_0_0_906.buffer_head1_neck0_data_pmu0", kUnitId = 73 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u74r, %u74s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear WBuf 0_PCU", kUnitId = 74 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u75r, %u75s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear WBuf 0_PMU", kUnitId = 75 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u76r, %u76s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_fwd_output_pmu", kUnitId = 76 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u77r, %u77s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linearFwdPropBias_output", kUnitId = 77 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u78r, %u78s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linearBias_W_Bufpmu0", kUnitId = 78 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u79r, %u79s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_344_head1_neck0_data_pmu0", kUnitId = 79 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u80r, %u80s:9 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0", kUnitId = 80 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.ControlSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink, %arg29: !plasma.ControlSink, %arg30: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u81r, %u81s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_837_head1_neck0_data_pmu0", kUnitId = 81 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSink, %arg25: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u82r, %u82s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_831_head1_neck0_data_pmu0", kUnitId = 82 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u83r, %u83s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_832_head1_neck0_data_pmu0", kUnitId = 83 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u84r, %u84s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_833_head1_neck0_data_pmu0", kUnitId = 84 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u85r, %u85s:3 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_834_head1_neck0_data_pmu0", kUnitId = 85 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u86r, %u86s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_830_head1_neck0_data_pmu0", kUnitId = 86 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u87r, %u87s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_838_head1_neck0_data_pmu0", kUnitId = 87 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u88r, %u88s:3 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_836_head1_neck0_data_pmu0", kUnitId = 88 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u89r, %u89s:3 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_835_head1_neck0_data_pmu0", kUnitId = 89 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u90r, %u90s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_944_head1_neck0_data_pmu0", kUnitId = 90 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u91r, %u91s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_944_head1_neck0_data_pmu1", kUnitId = 91 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u92r, %u92s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_944_head1_neck0_data_pmu2", kUnitId = 92 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u93r, %u93s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_944_head1_neck0_data_pmu3", kUnitId = 93 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u94r, %u94s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_944_head1_neck0_rob_pmu", kUnitId = 94 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u95r, %u95s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_839_head1_neck0_data_pmu0", kUnitId = 95 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink, %arg24: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u96r, %u96s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_840_head1_neck0_data_pmu0", kUnitId = 96 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink, %arg24: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u97r, %u97s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_826_head1_neck0_data_pmu0", kUnitId = 97 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink, %arg24: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u98r, %u98s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_936_head1_neck0_data_pmu0", kUnitId = 98 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u99r, %u99s:2 = plasma.unit.Pmu() attributes {kName = "streaming_transpose_0_0_909_transpose_pmu", kUnitId = 99 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u100r, %u100s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_0_0_363_head1_neck0_data_pmu0", kUnitId = 100 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.ControlSink, %arg26: !plasma.ControlSink, %arg27: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u101r, %u101s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_945_head1_neck0_data_pmu0", kUnitId = 101 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u102r, %u102s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_945_head1_neck0_data_pmu1", kUnitId = 102 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u103r, %u103s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_945_head1_neck0_data_pmu2", kUnitId = 103 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u104r, %u104s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_945_head1_neck0_data_pmu3", kUnitId = 104 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u105r, %u105s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_945_head1_neck0_rob_pmu", kUnitId = 105 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u106r, %u106s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_994_head1_neck0_data_pmu0", kUnitId = 106 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u107r, %u107s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_994_head1_neck0_data_pmu1", kUnitId = 107 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u108r, %u108s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_994_head1_neck0_data_pmu2", kUnitId = 108 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u109r, %u109s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_994_head1_neck0_data_pmu3", kUnitId = 109 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u110r, %u110s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_0_0_994_head1_neck0_rob_pmu", kUnitId = 110 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u111r, %u111s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_943_head1_neck0_data_pmu0", kUnitId = 111 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u112r, %u112s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_943_head1_neck0_data_pmu1", kUnitId = 112 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSink, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u113r, %u113s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_943_head1_neck0_rob_pmu", kUnitId = 113 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u114r, %u114s:5 = plasma.unit.Pcu() attributes {kName = "sub_0_0_568_output", kUnitId = 114 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u115r, %u115s:7 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0", kUnitId = 115 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u116r, %u116s:7 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_1002_head0_head1_neck0_data_pmu1", kUnitId = 116 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u117r, %u117s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_1002_head0_neck0_rob_pmu", kUnitId = 117 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u118r, %u118s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_1002_head1_neck0_rob_pmu", kUnitId = 118 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u119r, %u119s:5 = plasma.unit.Pcu() attributes {kName = "mul_0_0_569_output", kUnitId = 119 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u120r, %u120s:8 = plasma.unit.Pcu() attributes {kName = "mean_unalign_0_0_570_output", kUnitId = 120 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSrc, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink, %arg29: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u121r, %u121s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_841_head1_neck0_data_pmu0", kUnitId = 121 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u122r, %u122s:12 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0", kUnitId = 122 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink, %arg29: !plasma.VectorSink, %arg30: !plasma.ControlSink, %arg31: !plasma.ControlSink, %arg32: !plasma.ControlSink, %arg33: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u123r, %u123s:12 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0", kUnitId = 123 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.VectorSink, %arg29: !plasma.VectorSink, %arg30: !plasma.ControlSink, %arg31: !plasma.ControlSink, %arg32: !plasma.ControlSink, %arg33: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u124r, %u124s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_334_D_0_0", kUnitId = 124 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ScalarSink, %arg25: !plasma.ControlSink, %arg26: !plasma.ControlSink, %arg27: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u125r, %u125s:5 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.rbuf1u_0_0_335_D_0_0", kUnitId = 125 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.ScalarSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ControlSink, %arg26: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u126r, %u126s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf2u_0_0_342_D_0_0", kUnitId = 126 : i64}  {
      ^bb0(%arg22: !plasma.ControlSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u127r, %u127s:4 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_35", kUnitId = 127 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u128r, %u128s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_5", kUnitId = 128 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u129r, %u129s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_30", kUnitId = 129 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u130r, %u130s:4 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_37", kUnitId = 130 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u131r, %u131s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_29", kUnitId = 131 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u132r, %u132s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_28", kUnitId = 132 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u133r, %u133s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_27", kUnitId = 133 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u134r, %u134s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_26", kUnitId = 134 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u135r, %u135s:8 = plasma.unit.Pmu() attributes {kName = "out_window_0_0_483_tilerFronting_pmu", kUnitId = 135 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.ScalarSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u136r, %u136s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerBacking_pmu", kUnitId = 136 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.ScalarSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u137r, %u137s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor", kUnitId = 137 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u138r, %u138s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1", kUnitId = 138 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u139r, %u139s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu", kUnitId = 139 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.ScalarSrc, %arg26: !plasma.ControlSink, %arg27: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u140r, %u140s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_1", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 140 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u141r, %u141s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_2", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 141 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u142r, %u142s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_3", kOnChipLayout = !plasma.TL<1xi32:RVRM>, kUnitId = 142 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u143r, %u143s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_4", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 143 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u144r, %u144s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 144 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u145r, %u145s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_6", kOnChipLayout = !plasma.TL<136x60xbf16:CVCM:64>, kUnitId = 145 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u146r, %u146s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_7", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 146 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u147r, %u147s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_8", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 147 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u148r, %u148s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_9", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 148 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u149r, %u149s:2 = plasma.unit.Vag(%arg9) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_10", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 149 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u150r, %u150s:3 = plasma.unit.Vag(%arg10) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_11", kOnChipLayout = !plasma.TL<100x6x136xbf16:RVRM>, kUnitId = 150 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u151r, %u151s:2 = plasma.unit.Vag(%arg20) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_1", kOnChipLayout = !plasma.TL<60x64xbf16:RVRM>, kUnitId = 151 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.ScalarSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSink)
      %u152r, %u152s = plasma.unit.Vag(%arg12) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_2", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 152 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u153r, %u153s = plasma.unit.Vag(%arg13) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_3", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 153 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u154r, %u154s = plasma.unit.Vag(%arg14) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_4", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 154 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u155r, %u155s = plasma.unit.Vag(%arg15) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_5", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 155 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u156r, %u156s = plasma.unit.Vag(%arg16) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_6", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 156 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u157r, %u157s = plasma.unit.Vag(%arg17) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_7", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 157 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u158r, %u158s = plasma.unit.Vag(%arg18) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_8", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 158 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u159r, %u159s = plasma.unit.Vag(%arg19) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_9", kOnChipLayout = !plasma.TL<120x64xui8:RVRM>, kUnitId = 159 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u160r, %u160s:2 = plasma.unit.Vag(%arg11) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_10", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM>, kUnitId = 160 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.ScalarSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSink)
      %u161r, %u161s = plasma.unit.Vag(%arg21) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_11", kOnChipLayout = !plasma.TL<1x64xui8:RVRM>, kUnitId = 161 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u0s#1, %u1s#1) [gbuf1a_0_0_890_head1_neck0_data_pmu0 >> gbuf1a_0_0_825_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u0s#1, %u97s#1) [gbuf1a_0_0_890_head1_neck0_data_pmu0 >> gbuf1a_0_0_826_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u1s#0, %u122s#6) [gbuf1a_0_0_825_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#0, %u123s#6) [gbuf1a_0_0_827_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#1, %u127s#2) [gbuf1a_0_0_827_head1_neck0_data_pmu0 >> s0_fronting_pmu_load_group_35] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u3s#0, %u4s#4) [gbuf4a_0_0_828_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u17s#4) [gbuf4a_0_0_828_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u30s#4) [gbuf4a_0_0_828_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u43s#4) [gbuf4a_0_0_828_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#1, %u130s#2) [gbuf4a_0_0_828_head1_neck0_data_pmu0 >> s0_fronting_pmu_load_group_37] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u4s#0, %u4s#2) [ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u4s#1, %u6s#1) [ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u5s#0, %u4s#3) [ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u6s#0, %u7s#3) [ptconvlstm__lstm_layer__lstm_linear_w_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u7s#0, %u7s#2) [ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u7s#1, %u9s#1) [ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output >> gbuf1a_0_0_947_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u8s#0, %u7s#4) [ptconvlstm__lstm_layer__lstm_linear_w_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#0, %u16s#3) [gbuf1a_0_0_947_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#0, %u10s#2) [ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u10s#1, %u12s#1) [ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u10s#3) [ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u12s#0, %u13s#3) [ptconvlstm__lstm_layer__lstm_linear_v_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#0, %u13s#2) [ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u13s#1, %u15s#1) [ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output >> gbuf1a_0_0_946_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#0, %u13s#4) [ptconvlstm__lstm_layer__lstm_linear_v_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#0, %u16s#4) [gbuf1a_0_0_946_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#0, %u16s#2) [ptconvlstm__lstm_layer__lstm_add_0_output >> ptconvlstm__lstm_layer__lstm_add_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u16s#1, %u56s#3) [ptconvlstm__lstm_layer__lstm_add_0_output >> ptconvlstm__lstm_layer__lstm_i_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u17s#0, %u17s#2) [ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u17s#1, %u19s#1) [ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u18s#0, %u17s#3) [ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u19s#0, %u20s#3) [ptconvlstm__lstm_layer__lstm_linear_w_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u20s#0, %u20s#2) [ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u20s#1, %u22s#1) [ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output >> gbuf1a_0_0_949_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#0, %u20s#4) [ptconvlstm__lstm_layer__lstm_linear_w_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u22s#0, %u29s#3) [gbuf1a_0_0_949_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#0, %u23s#2) [ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u23s#1, %u25s#1) [ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u24s#0, %u23s#3) [ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u25s#0, %u26s#3) [ptconvlstm__lstm_layer__lstm_linear_v_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#0, %u26s#2) [ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u26s#1, %u28s#1) [ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output >> gbuf1a_0_0_948_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u27s#0, %u26s#4) [ptconvlstm__lstm_layer__lstm_linear_v_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u28s#0, %u29s#4) [gbuf1a_0_0_948_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u29s#0, %u29s#2) [ptconvlstm__lstm_layer__lstm_add_1_output >> ptconvlstm__lstm_layer__lstm_add_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u29s#1, %u58s#3) [ptconvlstm__lstm_layer__lstm_add_1_output >> ptconvlstm__lstm_layer__lstm_f_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u30s#0, %u30s#2) [ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u30s#1, %u32s#1) [ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u31s#0, %u30s#3) [ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u33s#3) [ptconvlstm__lstm_layer__lstm_linear_w_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#0, %u33s#2) [ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#1, %u35s#1) [ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output >> gbuf1a_0_0_951_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u34s#0, %u33s#4) [ptconvlstm__lstm_layer__lstm_linear_w_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u35s#0, %u42s#3) [gbuf1a_0_0_951_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u36s#0, %u36s#2) [ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u36s#1, %u38s#1) [ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u37s#0, %u36s#3) [ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u38s#0, %u39s#3) [ptconvlstm__lstm_layer__lstm_linear_v_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u39s#0, %u39s#2) [ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u39s#1, %u41s#1) [ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output >> gbuf1a_0_0_950_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u40s#0, %u39s#4) [ptconvlstm__lstm_layer__lstm_linear_v_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u41s#0, %u42s#4) [gbuf1a_0_0_950_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u42s#0, %u42s#2) [ptconvlstm__lstm_layer__lstm_add_2_output >> ptconvlstm__lstm_layer__lstm_add_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#1, %u60s#3) [ptconvlstm__lstm_layer__lstm_add_2_output >> ptconvlstm__lstm_layer__lstm_g_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u43s#0, %u43s#2) [ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u43s#1, %u45s#1) [ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_w_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u44s#0, %u43s#3) [ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u45s#0, %u46s#3) [ptconvlstm__lstm_layer__lstm_linear_w_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#0, %u46s#2) [ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#1, %u48s#1) [ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output >> gbuf1a_0_0_953_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#0, %u46s#4) [ptconvlstm__lstm_layer__lstm_linear_w_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u48s#0, %u55s#3) [gbuf1a_0_0_953_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u49s#0, %u49s#2) [ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u49s#1, %u51s#1) [ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_linear_v_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u50s#0, %u49s#3) [ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u51s#0, %u52s#3) [ptconvlstm__lstm_layer__lstm_linear_v_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u52s#0, %u52s#2) [ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u52s#1, %u54s#1) [ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output >> gbuf1a_0_0_952_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u53s#0, %u52s#4) [ptconvlstm__lstm_layer__lstm_linear_v_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u54s#0, %u55s#4) [gbuf1a_0_0_952_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u55s#0, %u55s#2) [ptconvlstm__lstm_layer__lstm_add_3_output >> ptconvlstm__lstm_layer__lstm_add_3_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u55s#1, %u62s#3) [ptconvlstm__lstm_layer__lstm_add_3_output >> ptconvlstm__lstm_layer__lstm_o_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#0, %u56s#2) [ptconvlstm__lstm_layer__lstm_i_t_output >> ptconvlstm__lstm_layer__lstm_i_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u56s#1, %u57s#1) [ptconvlstm__lstm_layer__lstm_i_t_output >> gbuf1a_0_0_955_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#1, %u82s#1) [ptconvlstm__lstm_layer__lstm_i_t_output >> gbuf2a_0_0_831_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u57s#0, %u67s#3) [gbuf1a_0_0_955_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u58s#0, %u58s#2) [ptconvlstm__lstm_layer__lstm_f_t_output >> ptconvlstm__lstm_layer__lstm_f_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u58s#1, %u59s#1) [ptconvlstm__lstm_layer__lstm_f_t_output >> gbuf1a_0_0_954_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u58s#1, %u83s#1) [ptconvlstm__lstm_layer__lstm_f_t_output >> gbuf2a_0_0_832_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u59s#0, %u65s#3) [gbuf1a_0_0_954_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#0, %u60s#2) [ptconvlstm__lstm_layer__lstm_g_t_output >> ptconvlstm__lstm_layer__lstm_g_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u60s#1, %u61s#1) [ptconvlstm__lstm_layer__lstm_g_t_output >> gbuf1a_0_0_956_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#1, %u84s#1) [ptconvlstm__lstm_layer__lstm_g_t_output >> gbuf2a_0_0_833_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u61s#0, %u67s#4) [gbuf1a_0_0_956_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#0, %u62s#2) [ptconvlstm__lstm_layer__lstm_o_t_output >> ptconvlstm__lstm_layer__lstm_o_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u62s#1, %u63s#1) [ptconvlstm__lstm_layer__lstm_o_t_output >> gbuf1a_0_0_959_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#1, %u85s#2) [ptconvlstm__lstm_layer__lstm_o_t_output >> gbuf2a_0_0_834_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u63s#0, %u72s#3) [gbuf1a_0_0_959_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u64s#0, %u65s#4) [gbuf1a_0_0_829_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u65s#0, %u65s#2) [ptconvlstm__lstm_layer__lstm_mul0_output >> ptconvlstm__lstm_layer__lstm_mul0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u65s#1, %u66s#1) [ptconvlstm__lstm_layer__lstm_mul0_output >> gbuf1a_0_0_957_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u66s#0, %u69s#3) [gbuf1a_0_0_957_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u67s#0, %u67s#2) [ptconvlstm__lstm_layer__lstm_mul1_output >> ptconvlstm__lstm_layer__lstm_mul1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u67s#1, %u68s#1) [ptconvlstm__lstm_layer__lstm_mul1_output >> gbuf1a_0_0_958_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u68s#0, %u69s#4) [gbuf1a_0_0_958_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u69s#0, %u69s#2) [ptconvlstm__lstm_layer__lstm_cell_output >> ptconvlstm__lstm_layer__lstm_cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u69s#1, %u70s#3) [ptconvlstm__lstm_layer__lstm_cell_output >> ptconvlstm__lstm_layer__lstm_tanh_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u69s#1, %u89s#2) [ptconvlstm__lstm_layer__lstm_cell_output >> gbuf2a_0_0_835_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u70s#0, %u70s#2) [ptconvlstm__lstm_layer__lstm_tanh_cell_output >> ptconvlstm__lstm_layer__lstm_tanh_cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u70s#1, %u71s#1) [ptconvlstm__lstm_layer__lstm_tanh_cell_output >> gbuf1a_0_0_960_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u71s#0, %u72s#4) [gbuf1a_0_0_960_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u72s#0, %u72s#2) [ptconvlstm__lstm_layer__lstm_hidden_output >> ptconvlstm__lstm_layer__lstm_hidden_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u72s#1, %u73s#1) [ptconvlstm__lstm_layer__lstm_hidden_output >> vector_transpose_0_0_906_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u72s#1, %u88s#2) [ptconvlstm__lstm_layer__lstm_hidden_output >> gbuf2a_0_0_836_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u73s#0, %u124s#5) [vector_transpose_0_0_906_buffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u73s#0, %u81s#2) [vector_transpose_0_0_906_buffer_head1_neck0_data_pmu0 >> gbuf2a_0_0_837_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u74s#0, %u74s#2) [ptconvlstm__dense_layer__linear_WBuf_0_PCU >> ptconvlstm__dense_layer__linear_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u74s#1, %u76s#1) [ptconvlstm__dense_layer__linear_WBuf_0_PCU >> ptconvlstm__dense_layer__linear_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u75s#0, %u74s#3) [ptconvlstm__dense_layer__linear_WBuf_0_PMU >> ptconvlstm__dense_layer__linear_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u76s#0, %u77s#3) [ptconvlstm__dense_layer__linear_fwd_output_pmu >> ptconvlstm__dense_layer__linearFwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u77s#0, %u77s#2) [ptconvlstm__dense_layer__linearFwdPropBias_output >> ptconvlstm__dense_layer__linearFwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u77s#1, %u79s#3) [ptconvlstm__dense_layer__linearFwdPropBias_output >> gbuf2u_0_0_344_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u78s#0, %u77s#4) [ptconvlstm__dense_layer__linearBias_W_Bufpmu0 >> ptconvlstm__dense_layer__linearFwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u79s#0, %u80s#6) [gbuf2u_0_0_344_head1_neck0_data_pmu0 >> gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u79s#1, %u126s#4) [gbuf2u_0_0_344_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u79s#2, %u126s#5) [gbuf2u_0_0_344_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u80s#0, %u80s#4) [gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u80s#0, %u80s#5) [gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u80s#1, %u90s#3) [gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_944_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u80s#2, %u87s#3) [gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_838_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u80s#3, %u79s#4) [gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0 >> gbuf2u_0_0_344_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u81s#0, %u122s#10) [gbuf2a_0_0_837_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u81s#0, %u123s#10) [gbuf2a_0_0_837_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u81s#0, %u3s#3) [gbuf2a_0_0_837_head1_neck0_data_pmu0 >> gbuf4a_0_0_828_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u81s#1, %u136s#5) [gbuf2a_0_0_837_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerBacking_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u82s#0, %u152s) [gbuf2a_0_0_831_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u83s#0, %u153s) [gbuf2a_0_0_832_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u84s#0, %u154s) [gbuf2a_0_0_833_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u85s#1, %u122s#11) [gbuf2a_0_0_834_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u85s#0, %u155s) [gbuf2a_0_0_834_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u86s#0, %u156s) [gbuf2a_0_0_830_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u87s#1, %u80s#7) [gbuf2a_0_0_838_head1_neck0_data_pmu0 >> gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u87s#2, %u80s#8) [gbuf2a_0_0_838_head1_neck0_data_pmu0 >> gbuf2a_0_0_1001_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u87s#0, %u157s) [gbuf2a_0_0_838_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u88s#0, %u122s#6) [gbuf2a_0_0_836_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u88s#1, %u122s#8) [gbuf2a_0_0_836_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u123s#11) [gbuf2a_0_0_836_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u88s#1, %u3s#4) [gbuf2a_0_0_836_head1_neck0_data_pmu0 >> gbuf4a_0_0_828_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#0, %u123s#6) [gbuf2a_0_0_835_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u89s#1, %u123s#8) [gbuf2a_0_0_835_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u89s#1, %u3s#5) [gbuf2a_0_0_835_head1_neck0_data_pmu0 >> gbuf4a_0_0_828_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u90s#0, %u94s#3) [gbuf2a_0_0_944_head1_neck0_data_pmu0 >> gbuf2a_0_0_944_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u91s#0, %u94s#3) [gbuf2a_0_0_944_head1_neck0_data_pmu1 >> gbuf2a_0_0_944_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u92s#0, %u94s#3) [gbuf2a_0_0_944_head1_neck0_data_pmu2 >> gbuf2a_0_0_944_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u93s#0, %u94s#3) [gbuf2a_0_0_944_head1_neck0_data_pmu3 >> gbuf2a_0_0_944_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u94s#0, %u90s#1) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u90s#2) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u91s#1) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u91s#2) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u92s#1) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u92s#2) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#0, %u93s#1) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#1, %u93s#2) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_944_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u94s#2, %u106s#3) [gbuf2a_0_0_944_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u95s#0, %u137s#2) [gbuf1a_0_0_839_head1_neck0_data_pmu0 >> s0_backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u96s#0, %u138s#2) [gbuf1a_0_0_840_head1_neck0_data_pmu0 >> s0_backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u97s#0, %u139s#5) [gbuf1a_0_0_826_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u98s#0, %u99s#1) [gbuf2a_0_0_936_head1_neck0_data_pmu0 >> streaming_transpose_0_0_909_transpose_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u98s#1, %u135s#4) [gbuf2a_0_0_936_head1_neck0_data_pmu0 >> out_window_0_0_483_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u99s#0, %u100s#5) [streaming_transpose_0_0_909_transpose_pmu >> gbuf2u_0_0_363_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u100s#0, %u100s#3) [gbuf2u_0_0_363_head1_neck0_data_pmu0 >> gbuf2u_0_0_363_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#0, %u100s#4) [gbuf2u_0_0_363_head1_neck0_data_pmu0 >> gbuf2u_0_0_363_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#1, %u101s#3) [gbuf2u_0_0_363_head1_neck0_data_pmu0 >> gbuf2a_0_0_945_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u100s#2, %u98s#2) [gbuf2u_0_0_363_head1_neck0_data_pmu0 >> gbuf2a_0_0_936_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u100s#0, %u98s#3) [gbuf2u_0_0_363_head1_neck0_data_pmu0 >> gbuf2a_0_0_936_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u101s#0, %u105s#3) [gbuf2a_0_0_945_head1_neck0_data_pmu0 >> gbuf2a_0_0_945_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u102s#0, %u105s#3) [gbuf2a_0_0_945_head1_neck0_data_pmu1 >> gbuf2a_0_0_945_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u103s#0, %u105s#3) [gbuf2a_0_0_945_head1_neck0_data_pmu2 >> gbuf2a_0_0_945_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u104s#0, %u105s#3) [gbuf2a_0_0_945_head1_neck0_data_pmu3 >> gbuf2a_0_0_945_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u105s#0, %u101s#1) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#1, %u101s#2) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#0, %u102s#1) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#1, %u102s#2) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#0, %u103s#1) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#1, %u103s#2) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#0, %u104s#1) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#1, %u104s#2) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf2a_0_0_945_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u105s#2, %u111s#3) [gbuf2a_0_0_945_head1_neck0_rob_pmu >> gbuf1a_0_0_943_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u106s#0, %u110s#3) [gbuf2a_0_0_994_head1_neck0_data_pmu0 >> gbuf2a_0_0_994_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u107s#0, %u110s#3) [gbuf2a_0_0_994_head1_neck0_data_pmu1 >> gbuf2a_0_0_994_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u108s#0, %u110s#3) [gbuf2a_0_0_994_head1_neck0_data_pmu2 >> gbuf2a_0_0_994_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u109s#0, %u110s#3) [gbuf2a_0_0_994_head1_neck0_data_pmu3 >> gbuf2a_0_0_994_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u110s#0, %u106s#1) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#1, %u106s#2) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#0, %u107s#1) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#1, %u107s#2) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#0, %u108s#1) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#1, %u108s#2) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu2] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#0, %u109s#1) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#1, %u109s#2) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> gbuf2a_0_0_994_head1_neck0_data_pmu3] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u110s#2, %u114s#3) [gbuf2a_0_0_994_head1_neck0_rob_pmu >> sub_0_0_568_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u111s#0, %u113s#3) [gbuf1a_0_0_943_head1_neck0_data_pmu0 >> gbuf1a_0_0_943_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u112s#0, %u113s#3) [gbuf1a_0_0_943_head1_neck0_data_pmu1 >> gbuf1a_0_0_943_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u113s#0, %u111s#1) [gbuf1a_0_0_943_head1_neck0_rob_pmu >> gbuf1a_0_0_943_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u111s#2) [gbuf1a_0_0_943_head1_neck0_rob_pmu >> gbuf1a_0_0_943_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#0, %u112s#1) [gbuf1a_0_0_943_head1_neck0_rob_pmu >> gbuf1a_0_0_943_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#1, %u112s#2) [gbuf1a_0_0_943_head1_neck0_rob_pmu >> gbuf1a_0_0_943_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u113s#2, %u114s#4) [gbuf1a_0_0_943_head1_neck0_rob_pmu >> sub_0_0_568_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u114s#0, %u114s#2) [sub_0_0_568_output >> sub_0_0_568_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u114s#1, %u115s#6) [sub_0_0_568_output >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u115s#0, %u117s#3) [gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_1002_head0_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u115s#1, %u118s#3) [gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_1002_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u116s#0, %u117s#3) [gbuf1a_0_0_1002_head0_head1_neck0_data_pmu1 >> gbuf1a_0_0_1002_head0_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u116s#1, %u118s#3) [gbuf1a_0_0_1002_head0_head1_neck0_data_pmu1 >> gbuf1a_0_0_1002_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u117s#0, %u115s#2) [gbuf1a_0_0_1002_head0_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u117s#1, %u115s#3) [gbuf1a_0_0_1002_head0_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u117s#0, %u116s#2) [gbuf1a_0_0_1002_head0_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u117s#1, %u116s#3) [gbuf1a_0_0_1002_head0_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u117s#2, %u119s#3) [gbuf1a_0_0_1002_head0_neck0_rob_pmu >> mul_0_0_569_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u118s#0, %u115s#4) [gbuf1a_0_0_1002_head1_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u118s#1, %u115s#5) [gbuf1a_0_0_1002_head1_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u118s#0, %u116s#4) [gbuf1a_0_0_1002_head1_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u118s#1, %u116s#5) [gbuf1a_0_0_1002_head1_neck0_rob_pmu >> gbuf1a_0_0_1002_head0_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u118s#2, %u119s#4) [gbuf1a_0_0_1002_head1_neck0_rob_pmu >> mul_0_0_569_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u119s#0, %u119s#2) [mul_0_0_569_output >> mul_0_0_569_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u119s#1, %u120s#7) [mul_0_0_569_output >> mean_unalign_0_0_570_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u120s#0, %u120s#4) [mean_unalign_0_0_570_output >> mean_unalign_0_0_570_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u120s#1, %u120s#5) [mean_unalign_0_0_570_output >> mean_unalign_0_0_570_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u120s#2, %u120s#6) [mean_unalign_0_0_570_output >> mean_unalign_0_0_570_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u120s#3, %u121s#1) [mean_unalign_0_0_570_output >> gbuf1a_0_0_841_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u121s#0, %u161s) [gbuf1a_0_0_841_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s0_c0_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u122s#0, %u122s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u122s#1, %u122s#5) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u122s#2, %u10s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u122s#2, %u23s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u122s#2, %u36s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u122s#2, %u49s#4) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u122s#3, %u95s#1) [ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_839_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u123s#0, %u123s#4) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u123s#1, %u123s#5) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u123s#2, %u64s#1) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_829_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u123s#2, %u86s#1) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf2a_0_0_830_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u123s#3, %u96s#1) [ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0 >> gbuf1a_0_0_840_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u124s#0, %u126s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u124s#1, %u122s#9) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u124s#1, %u123s#9) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> ptconvlstm__lstm_layer__lstm_cell_loop_buffer_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u124s#1, %u3s#2) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0 >> gbuf4a_0_0_828_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u125s#1, %u124s#2) [LogregTorchSamba_partition_0_0__rbuf1u_0_0_335_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u126s#0, %u124s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u126s#1, %u124s#4) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf2u_0_0_334_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u126s#0, %u125s#2) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> LogregTorchSamba_partition_0_0__rbuf1u_0_0_335_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u126s#1, %u125s#3) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> LogregTorchSamba_partition_0_0__rbuf1u_0_0_335_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u126s#2, %u74s#4) [LogregTorchSamba_partition_0_0__tbuf2u_0_0_342_D_0_0 >> ptconvlstm__dense_layer__linear_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u127s#1, %u2s#2) [s0_fronting_pmu_load_group_35 >> gbuf1a_0_0_827_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u128s#1, %u75s#1) [s0_fronting_pmu_load_group_5 >> ptconvlstm__dense_layer__linear_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u129s#1, %u78s#1) [s0_fronting_pmu_load_group_30 >> ptconvlstm__dense_layer__linearBias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u130s#1, %u3s#6) [s0_fronting_pmu_load_group_37 >> gbuf4a_0_0_828_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u131s#1, %u5s#1) [s0_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_linear_w_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u131s#1, %u18s#1) [s0_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_linear_w_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u131s#1, %u31s#1) [s0_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_linear_w_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u131s#1, %u44s#1) [s0_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_linear_w_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u132s#1, %u11s#1) [s0_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_linear_v_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u132s#1, %u24s#1) [s0_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_linear_v_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u132s#1, %u37s#1) [s0_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_linear_v_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u132s#1, %u50s#1) [s0_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_linear_v_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u133s#1, %u8s#1) [s0_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_linear_w_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u133s#1, %u21s#1) [s0_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_linear_w_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u133s#1, %u34s#1) [s0_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_linear_w_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u133s#1, %u47s#1) [s0_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_linear_w_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u134s#1, %u14s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_v_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u134s#1, %u27s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_v_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u134s#1, %u40s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_v_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u134s#1, %u53s#1) [s0_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_linear_v_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u135s#1, %u135s#5) [out_window_0_0_483_tilerFronting_pmu >> out_window_0_0_483_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u135s#1, %u135s#6) [out_window_0_0_483_tilerFronting_pmu >> out_window_0_0_483_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u135s#2, %u98s#4) [out_window_0_0_483_tilerFronting_pmu >> gbuf2a_0_0_936_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u135s#3, %u150s#2) [out_window_0_0_483_tilerFronting_pmu >> LogicalAGCU_for_DRAM_input_s0_c0_11] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u136s#1, %u81s#3) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerBacking_pmu >> gbuf2a_0_0_837_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u136s#2, %u136s#4) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerBacking_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerBacking_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u136s#0, %u151s#0) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u136s#3, %u151s#1) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u137s#1, %u95s#2) [s0_backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor >> gbuf1a_0_0_839_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u137s#0, %u158s) [s0_backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor >> LogicalAGCU_for_DRAM_output_s0_c0_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u138s#1, %u96s#2) [s0_backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1 >> gbuf1a_0_0_840_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u138s#0, %u159s) [s0_backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1 >> LogicalAGCU_for_DRAM_output_s0_c0_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u139s#1, %u97s#2) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> gbuf1a_0_0_826_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u139s#2, %u139s#4) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u139s#0, %u160s#0) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u139s#3, %u160s#1) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerBacking_pmu >> LogicalAGCU_for_DRAM_output_s0_c0_10] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u140s#0, %u0s#0) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> gbuf1a_0_0_890_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u140s#1, %u0s#2) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> gbuf1a_0_0_890_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u141s#0, %u127s#0) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> s0_fronting_pmu_load_group_35] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u141s#1, %u127s#3) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> s0_fronting_pmu_load_group_35] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u142s#0, %u125s#0) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__rbuf1u_0_0_335_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u142s#1, %u125s#4) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__rbuf1u_0_0_335_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u143s#0, %u128s#0) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u143s#1, %u128s#2) [LogicalAGCU_for_DRAM_input_s0_c0_4 >> s0_fronting_pmu_load_group_5] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u144s#0, %u129s#0) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_30] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u144s#1, %u129s#2) [LogicalAGCU_for_DRAM_input_s0_c0_5 >> s0_fronting_pmu_load_group_30] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u145s#0, %u130s#0) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> s0_fronting_pmu_load_group_37] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u145s#1, %u130s#3) [LogicalAGCU_for_DRAM_input_s0_c0_6 >> s0_fronting_pmu_load_group_37] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u146s#0, %u131s#0) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> s0_fronting_pmu_load_group_29] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u146s#1, %u131s#2) [LogicalAGCU_for_DRAM_input_s0_c0_7 >> s0_fronting_pmu_load_group_29] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u147s#0, %u132s#0) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_28] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u147s#1, %u132s#2) [LogicalAGCU_for_DRAM_input_s0_c0_8 >> s0_fronting_pmu_load_group_28] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u148s#0, %u133s#0) [LogicalAGCU_for_DRAM_input_s0_c0_9 >> s0_fronting_pmu_load_group_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u148s#1, %u133s#2) [LogicalAGCU_for_DRAM_input_s0_c0_9 >> s0_fronting_pmu_load_group_27] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u149s#0, %u134s#0) [LogicalAGCU_for_DRAM_input_s0_c0_10 >> s0_fronting_pmu_load_group_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u149s#1, %u134s#2) [LogicalAGCU_for_DRAM_input_s0_c0_10 >> s0_fronting_pmu_load_group_26] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u150s#0, %u135s#0) [LogicalAGCU_for_DRAM_input_s0_c0_11 >> out_window_0_0_483_tilerFronting_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u150s#1, %u135s#7) [LogicalAGCU_for_DRAM_input_s0_c0_11 >> out_window_0_0_483_tilerFronting_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_0_0_890()  {
          "plasma.BindUnit"(%u0r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_825()  {
          "plasma.BindUnit"(%u1r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_827()  {
          "plasma.BindUnit"(%u2r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf4a_0_0_828()  {
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
        plasma.SuperNode @gbuf1a_0_0_947()  {
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
        plasma.SuperNode @gbuf1a_0_0_946()  {
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
        plasma.SuperNode @gbuf1a_0_0_949()  {
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
        plasma.SuperNode @gbuf1a_0_0_948()  {
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
        plasma.SuperNode @gbuf1a_0_0_951()  {
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
        plasma.SuperNode @gbuf1a_0_0_950()  {
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
        plasma.SuperNode @gbuf1a_0_0_953()  {
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
        plasma.SuperNode @gbuf1a_0_0_952()  {
          "plasma.BindUnit"(%u54r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_add_3()  {
          "plasma.BindUnit"(%u55r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_i_t()  {
          "plasma.BindUnit"(%u56r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_955()  {
          "plasma.BindUnit"(%u57r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_f_t()  {
          "plasma.BindUnit"(%u58r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_954()  {
          "plasma.BindUnit"(%u59r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_g_t()  {
          "plasma.BindUnit"(%u60r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_956()  {
          "plasma.BindUnit"(%u61r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_o_t()  {
          "plasma.BindUnit"(%u62r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_959()  {
          "plasma.BindUnit"(%u63r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_829()  {
          "plasma.BindUnit"(%u64r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_mul0()  {
          "plasma.BindUnit"(%u65r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_957()  {
          "plasma.BindUnit"(%u66r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_mul1()  {
          "plasma.BindUnit"(%u67r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_958()  {
          "plasma.BindUnit"(%u68r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_cell()  {
          "plasma.BindUnit"(%u69r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_tanh_cell()  {
          "plasma.BindUnit"(%u70r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_960()  {
          "plasma.BindUnit"(%u71r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_hidden()  {
          "plasma.BindUnit"(%u72r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @vector_transpose_0_0_906()  {
          plasma.SuperNode @vector_transpose_0_0_906.buffer()  {
            "plasma.BindUnit"(%u73r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear()  {
          "plasma.BindUnit"(%u74r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u75r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u76r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__dense_layer__linearBias_W_Buf()  {
            "plasma.BindUnit"(%u78r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linearFwdPropBias()  {
            "plasma.BindUnit"(%u77r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linearW_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf2u_0_0_344()  {
          "plasma.BindUnit"(%u79r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_1001()  {
          "plasma.BindUnit"(%u80r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_837()  {
          "plasma.BindUnit"(%u81r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_831()  {
          "plasma.BindUnit"(%u82r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_832()  {
          "plasma.BindUnit"(%u83r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_833()  {
          "plasma.BindUnit"(%u84r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_834()  {
          "plasma.BindUnit"(%u85r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_830()  {
          "plasma.BindUnit"(%u86r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_838()  {
          "plasma.BindUnit"(%u87r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_836()  {
          "plasma.BindUnit"(%u88r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_835()  {
          "plasma.BindUnit"(%u89r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_944()  {
          "plasma.BindUnit"(%u90r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u91r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u92r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u93r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u94r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_839()  {
          "plasma.BindUnit"(%u95r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_840()  {
          "plasma.BindUnit"(%u96r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_826()  {
          "plasma.BindUnit"(%u97r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_936()  {
          "plasma.BindUnit"(%u98r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @streaming_transpose_0_0_909()  {
          "plasma.BindUnit"(%u99r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_0_0_363()  {
          "plasma.BindUnit"(%u100r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_945()  {
          "plasma.BindUnit"(%u101r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u102r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u103r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u104r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u105r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_0_0_994()  {
          "plasma.BindUnit"(%u106r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u107r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u108r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u109r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u110r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_943()  {
          "plasma.BindUnit"(%u111r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u112r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u113r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @sub_0_0_568()  {
          "plasma.BindUnit"(%u114r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_1002()  {
          "plasma.BindUnit"(%u115r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u116r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u117r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u118r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mul_0_0_569()  {
          "plasma.BindUnit"(%u119r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @mean_unalign_0_0_570()  {
          "plasma.BindUnit"(%u120r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_0_0_841()  {
          "plasma.BindUnit"(%u121r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_hidden_loop_buffer()  {
          "plasma.BindUnit"(%u122r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_cell_loop_buffer()  {
          "plasma.BindUnit"(%u123r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_0_0_334()  {
          "plasma.BindUnit"(%u124r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @rbuf1u_0_0_335()  {
          "plasma.BindUnit"(%u125r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_0_0_342()  {
          "plasma.BindUnit"(%u126r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_35()  {
          "plasma.BindUnit"(%u127r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_5()  {
          "plasma.BindUnit"(%u128r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_30()  {
          "plasma.BindUnit"(%u129r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_37()  {
          "plasma.BindUnit"(%u130r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_29()  {
          "plasma.BindUnit"(%u131r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_28()  {
          "plasma.BindUnit"(%u132r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_27()  {
          "plasma.BindUnit"(%u133r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_26()  {
          "plasma.BindUnit"(%u134r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @out_window_0_0_483_tiler()  {
          "plasma.BindUnit"(%u135r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @out_window_0_0_483_tilerTiler() {}
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler()  {
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTiler()  {
            "plasma.BindUnit"(%u136r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tilerSubStoreTilerTiler() {}
          }
        }
        plasma.SuperNode @s0.backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor()  {
          "plasma.BindUnit"(%u137r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1()  {
          "plasma.BindUnit"(%u138r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler()  {
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTiler()  {
            "plasma.BindUnit"(%u139r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tilerSubStoreTilerTiler() {}
          }
        }
        plasma.SuperNode @"DramInputNode:s0_c0_1:lstm_operand_0"()  {
          "plasma.BindUnit"(%u140r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_2:lstm_operand_1"()  {
          "plasma.BindUnit"(%u141r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_3:ptconvlstm__lstm_layer__lstm__outputs__0_slice_1"()  {
          "plasma.BindUnit"(%u142r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_4:group_5"()  {
          "plasma.BindUnit"(%u143r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_5:group_30"()  {
          "plasma.BindUnit"(%u144r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_6:inp_window"()  {
          "plasma.BindUnit"(%u145r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_7:group_29"()  {
          "plasma.BindUnit"(%u146r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_8:group_28"()  {
          "plasma.BindUnit"(%u147r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_9:group_27"()  {
          "plasma.BindUnit"(%u148r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_10:group_26"()  {
          "plasma.BindUnit"(%u149r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_11:out_window"()  {
          "plasma.BindUnit"(%u150r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_1:ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs"()  {
          "plasma.BindUnit"(%u151r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_2:ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u152r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_3:ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u153r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_4:ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u154r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_5:ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u155r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_6:ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u156r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_7:ptconvlstm__view__outputs__0"()  {
          "plasma.BindUnit"(%u157r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_8:ptconvlstm__lstm_layer__lstm__hidden__output"()  {
          "plasma.BindUnit"(%u158r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_9:ptconvlstm__lstm_layer__lstm__cell__output"()  {
          "plasma.BindUnit"(%u159r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_10:ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs"()  {
          "plasma.BindUnit"(%u160r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_11:ptconvlstm__criterion__mseloss__outputs__0"()  {
          "plasma.BindUnit"(%u161r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s1() attributes {kControlBlockId = 1 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>, %arg10: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, %arg11: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg12: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg13: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg14: !plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>, %arg15: !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,R>, %arg16: !plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>, %arg17: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, %arg18: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, %arg19: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, %arg20: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, %arg21: !plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>, %arg22: !plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,R>, %arg23: !plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,W>, %arg24: !plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>, %arg25: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg26: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg27: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg28: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>, %arg29: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg30: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg31: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg32: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>, %arg33: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg34: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg35: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg36: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg37: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg38: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg39: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>, %arg40: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>):  // no predecessors
      %u162r, %u162s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_842_head1_neck0_data_pmu0", kUnitId = 162 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u163r, %u163s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_843_head1_neck0_data_pmu0", kUnitId = 163 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u164r, %u164s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_844_head1_neck0_data_pmu0", kUnitId = 164 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u165r, %u165s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_845_head1_neck0_data_pmu0", kUnitId = 165 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u166r, %u166s:9 = plasma.unit.Pmu() attributes {kName = "gbuf4a_1_0_846_head1_neck0_data_pmu0", kUnitId = 166 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u167r, %u167s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0 WBuf 0_PCU", kUnitId = 167 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u168r, %u168s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0 WBuf 0_PMU", kUnitId = 168 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u169r, %u169s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_fwd_output_pmu", kUnitId = 169 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u170r, %u170s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output", kUnitId = 170 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u171r, %u171s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Bufpmu0", kUnitId = 171 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u172r, %u172s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_962_head1_neck0_data_pmu0", kUnitId = 172 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u173r, %u173s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0 WBuf 0_PCU", kUnitId = 173 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u174r, %u174s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0 WBuf 0_PMU", kUnitId = 174 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u175r, %u175s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_fwd_output_pmu", kUnitId = 175 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u176r, %u176s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output", kUnitId = 176 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u177r, %u177s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Bufpmu0", kUnitId = 177 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u178r, %u178s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_961_head1_neck0_data_pmu0", kUnitId = 178 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u179r, %u179s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_0_output", kUnitId = 179 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u180r, %u180s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1 WBuf 0_PCU", kUnitId = 180 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u181r, %u181s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1 WBuf 0_PMU", kUnitId = 181 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u182r, %u182s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_fwd_output_pmu", kUnitId = 182 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u183r, %u183s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output", kUnitId = 183 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u184r, %u184s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Bufpmu0", kUnitId = 184 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u185r, %u185s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_964_head1_neck0_data_pmu0", kUnitId = 185 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u186r, %u186s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1 WBuf 0_PCU", kUnitId = 186 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u187r, %u187s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1 WBuf 0_PMU", kUnitId = 187 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u188r, %u188s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_fwd_output_pmu", kUnitId = 188 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u189r, %u189s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output", kUnitId = 189 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u190r, %u190s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Bufpmu0", kUnitId = 190 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u191r, %u191s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_963_head1_neck0_data_pmu0", kUnitId = 191 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u192r, %u192s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_1_output", kUnitId = 192 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u193r, %u193s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2 WBuf 0_PCU", kUnitId = 193 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u194r, %u194s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2 WBuf 0_PMU", kUnitId = 194 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u195r, %u195s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_fwd_output_pmu", kUnitId = 195 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u196r, %u196s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output", kUnitId = 196 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u197r, %u197s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Bufpmu0", kUnitId = 197 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u198r, %u198s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_966_head1_neck0_data_pmu0", kUnitId = 198 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u199r, %u199s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2 WBuf 0_PCU", kUnitId = 199 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u200r, %u200s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2 WBuf 0_PMU", kUnitId = 200 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u201r, %u201s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_fwd_output_pmu", kUnitId = 201 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u202r, %u202s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output", kUnitId = 202 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u203r, %u203s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Bufpmu0", kUnitId = 203 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u204r, %u204s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_965_head1_neck0_data_pmu0", kUnitId = 204 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u205r, %u205s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_2_output", kUnitId = 205 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u206r, %u206s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3 WBuf 0_PCU", kUnitId = 206 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u207r, %u207s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3 WBuf 0_PMU", kUnitId = 207 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u208r, %u208s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_fwd_output_pmu", kUnitId = 208 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u209r, %u209s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output", kUnitId = 209 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u210r, %u210s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Bufpmu0", kUnitId = 210 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u211r, %u211s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_968_head1_neck0_data_pmu0", kUnitId = 211 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u212r, %u212s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3 WBuf 0_PCU", kUnitId = 212 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u213r, %u213s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3 WBuf 0_PMU", kUnitId = 213 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u214r, %u214s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_fwd_output_pmu", kUnitId = 214 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u215r, %u215s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output", kUnitId = 215 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u216r, %u216s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Bufpmu0", kUnitId = 216 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u217r, %u217s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_967_head1_neck0_data_pmu0", kUnitId = 217 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u218r, %u218s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__add_3_output", kUnitId = 218 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u219r, %u219s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__temp_cell_head1_neck0_data_pmu0", kUnitId = 219 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u220r, %u220s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__i_t_output", kUnitId = 220 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u221r, %u221s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_970_head1_neck0_data_pmu0", kUnitId = 221 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u222r, %u222s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__f_t_output", kUnitId = 222 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u223r, %u223s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_969_head1_neck0_data_pmu0", kUnitId = 223 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u224r, %u224s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__g_t_output", kUnitId = 224 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u225r, %u225s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_971_head1_neck0_data_pmu0", kUnitId = 225 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u226r, %u226s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__o_t_output", kUnitId = 226 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u227r, %u227s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_974_head1_neck0_data_pmu0", kUnitId = 227 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u228r, %u228s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__mul0_output", kUnitId = 228 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u229r, %u229s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_972_head1_neck0_data_pmu0", kUnitId = 229 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u230r, %u230s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__mul1_output", kUnitId = 230 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u231r, %u231s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_973_head1_neck0_data_pmu0", kUnitId = 231 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u232r, %u232s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__cell_output", kUnitId = 232 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u233r, %u233s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output", kUnitId = 233 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u234r, %u234s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_975_head1_neck0_data_pmu0", kUnitId = 234 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u235r, %u235s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__hidden_output", kUnitId = 235 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u236r, %u236s:5 = plasma.unit.Pmu() attributes {kName = "gbuf4u_1_0_399_head1_neck0_data_pmu0", kUnitId = 236 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u237r, %u237s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute_ WBuf 0_PCU", kUnitId = 237 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u238r, %u238s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute_ WBuf 0_PMU", kUnitId = 238 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u239r, %u239s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute__fwd_output_pmu", kUnitId = 239 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u240r, %u240s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute_FwdPropBias_output", kUnitId = 240 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u241r, %u241s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_recompute_Bias_W_Bufpmu0", kUnitId = 241 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u242r, %u242s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_411_head1_neck0_data_pmu0", kUnitId = 242 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u243r, %u243s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__criterion__mseloss_bwd_sub_output", kUnitId = 243 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u244r, %u244s:4 = plasma.unit.Pcu() attributes {kName = "scale_1_0_632_scaling_pcu", kUnitId = 244 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u245r, %u245s:3 = plasma.unit.Pmu() attributes {kName = "scale_1_0_633_input_B_pmu", kUnitId = 245 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.ScalarSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u246r, %u246s:5 = plasma.unit.Pcu() attributes {kName = "scale_1_0_633_scaling_pcu", kUnitId = 246 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink, !plasma.VectorSink)
      %u247r, %u247s:6 = plasma.unit.Pmu() attributes {kName = "gbuf4u_1_0_419_head1_neck0_data_pmu0", kUnitId = 247 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u248r, %u248s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_421_head1_neck0_data_pmu0", kUnitId = 248 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u249r, %u249s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output", kUnitId = 249 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u250r, %u250s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_426_head1_neck0_data_pmu0", kUnitId = 250 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u251r, %u251s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_851_head1_neck0_data_pmu0", kUnitId = 251 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u252r, %u252s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU", kUnitId = 252 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u253r, %u253s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU", kUnitId = 253 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u254r, %u254s:6 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU", kUnitId = 254 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u255r, %u255s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU", kUnitId = 255 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u256r, %u256s:4 = plasma.unit.Pmu() attributes {kName = "gbuf7u_1_0_428_head1_neck0_reformat_pmu0", kUnitId = 256 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u257r, %u257s:9 = plasma.unit.Pmu() attributes {kName = "gbuf7u_1_0_428_head1_neck0_data_pmu0", kUnitId = 257 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.VectorSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u258r, %u258s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_429_head0_head1_neck0_data_pmu0", kUnitId = 258 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u259r, %u259s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU", kUnitId = 259 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u260r, %u260s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU", kUnitId = 260 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u261r, %u261s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0", kUnitId = 261 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u262r, %u262s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 262 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u263r, %u263s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 263 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u264r, %u264s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_431_head1_neck0_data_pmu0", kUnitId = 264 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u265r, %u265s:7 = plasma.unit.Pmu() attributes {kName = "gbuf12u_1_0_437_head1_neck0_data_pmu0", kUnitId = 265 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u266r, %u266s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_indexin_indices", kUnitId = 266 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ScalarSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ControlSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ScalarSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u267r, %u267s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros", kUnitId = 267 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink)
      %u268r, %u268s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_indexindex2addr", kUnitId = 268 : i64}  {
      ^bb0(%arg41: !plasma.ScalarSrc, %arg42: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u269r, %u269s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_index_opcu_0", kUnitId = 269 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u270r, %u270s:9 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__indexselect_bwd_loss_just_index_opmu_0", kUnitId = 270 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ScalarSink, %arg46: !plasma.VectorSink, %arg47: !plasma.ScalarSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink)
      %u271r, %u271s:5 = plasma.unit.Pmu() attributes {kName = "gbuf4u_1_0_440_head1_neck0_data_pmu0", kUnitId = 271 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u272r, %u272s:4 = plasma.unit.Pmu() attributes {kName = "gbuf3u_1_0_443_head1_neck0_data_pmu0", kUnitId = 272 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u273r, %u273s:4 = plasma.unit.Pmu() attributes {kName = "gbuf3u_1_0_445_head1_neck0_data_pmu0", kUnitId = 273 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u274r, %u274s:4 = plasma.unit.Pmu() attributes {kName = "gbuf3u_1_0_447_head1_neck0_data_pmu0", kUnitId = 274 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u275r, %u275s:4 = plasma.unit.Pmu() attributes {kName = "gbuf3u_1_0_449_head1_neck0_data_pmu0", kUnitId = 275 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u276r, %u276s:4 = plasma.unit.Pmu() attributes {kName = "gbuf3u_1_0_451_head1_neck0_data_pmu0", kUnitId = 276 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u277r, %u277s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_1007_head1_neck0_data_pmu0", kUnitId = 277 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u278r, %u278s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_938_head1_neck0_data_pmu0", kUnitId = 278 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u279r, %u279s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_453_head1_neck0_data_pmu0", kUnitId = 279 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u280r, %u280s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_937_head1_neck0_data_pmu0", kUnitId = 280 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u281r, %u281s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2u_1_0_455_head1_neck0_data_pmu0", kUnitId = 281 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u282r, %u282s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_head1_neck0_data_pmu0", kUnitId = 282 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u283r, %u283s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output", kUnitId = 283 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u284r, %u284s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_1003_head0_head1_neck0_data_pmu0", kUnitId = 284 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u285r, %u285s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0", kUnitId = 285 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u286r, %u286s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0", kUnitId = 286 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u287r, %u287s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0", kUnitId = 287 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u288r, %u288s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_1008_head1_neck0_data_pmu0", kUnitId = 288 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u289r, %u289s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_head1_neck0_data_pmu0", kUnitId = 289 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u290r, %u290s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_head1_neck0_data_pmu0", kUnitId = 290 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u291r, %u291s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output", kUnitId = 291 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u292r, %u292s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_976_head1_neck0_data_pmu0", kUnitId = 292 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u293r, %u293s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_head1_neck0_data_pmu0", kUnitId = 293 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u294r, %u294s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output", kUnitId = 294 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u295r, %u295s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_977_head1_neck0_data_pmu0", kUnitId = 295 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u296r, %u296s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output", kUnitId = 296 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u297r, %u297s:4 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output", kUnitId = 297 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u298r, %u298s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_1004_head0_head1_neck0_data_pmu0", kUnitId = 298 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u299r, %u299s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output", kUnitId = 299 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u300r, %u300s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_991_head1_neck0_data_pmu0", kUnitId = 300 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u301r, %u301s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output", kUnitId = 301 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u302r, %u302s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_982_head1_neck0_data_pmu0", kUnitId = 302 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u303r, %u303s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output", kUnitId = 303 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u304r, %u304s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_983_head1_neck0_data_pmu0", kUnitId = 304 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u305r, %u305s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output", kUnitId = 305 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u306r, %u306s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_1005_head0_head1_neck0_data_pmu0", kUnitId = 306 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u307r, %u307s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_1006_head0_head1_neck0_data_pmu0", kUnitId = 307 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u308r, %u308s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output", kUnitId = 308 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u309r, %u309s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_989_head1_neck0_data_pmu0", kUnitId = 309 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u310r, %u310s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_891_head1_neck0_data_pmu0", kUnitId = 310 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u311r, %u311s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output", kUnitId = 311 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u312r, %u312s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_igate_g_output", kUnitId = 312 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u313r, %u313s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_988_head1_neck0_data_pmu0", kUnitId = 313 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u314r, %u314s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_892_head1_neck0_data_pmu0", kUnitId = 314 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u315r, %u315s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output", kUnitId = 315 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u316r, %u316s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_990_head1_neck0_data_pmu0", kUnitId = 316 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u317r, %u317s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_893_head1_neck0_data_pmu0", kUnitId = 317 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u318r, %u318s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output", kUnitId = 318 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u319r, %u319s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_852_head1_neck0_reformat_pmu0", kUnitId = 319 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u320r, %u320s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_852_head1_neck0_data_pmu0", kUnitId = 320 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u321r, %u321s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_857_head0_head1_neck0_data_pmu0", kUnitId = 321 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u322r, %u322s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU", kUnitId = 322 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u323r, %u323s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU", kUnitId = 323 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u324r, %u324s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0", kUnitId = 324 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u325r, %u325s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 325 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u326r, %u326s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 326 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u327r, %u327s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_853_head1_neck0_reformat_pmu0", kUnitId = 327 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u328r, %u328s:7 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_853_head1_neck0_data_pmu0", kUnitId = 328 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ControlSrc, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u329r, %u329s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_856_head0_head1_neck0_data_pmu0", kUnitId = 329 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u330r, %u330s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU", kUnitId = 330 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u331r, %u331s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU", kUnitId = 331 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u332r, %u332s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0", kUnitId = 332 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u333r, %u333s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 333 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u334r, %u334s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 334 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u335r, %u335s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b WBuf 0_PCU", kUnitId = 335 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u336r, %u336s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b WBuf 0_PMU", kUnitId = 336 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u337r, %u337s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_894_head1_neck0_data_pmu0", kUnitId = 337 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u338r, %u338s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output", kUnitId = 338 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u339r, %u339s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_861_head0_head1_neck0_data_pmu0", kUnitId = 339 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u340r, %u340s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU", kUnitId = 340 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u341r, %u341s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU", kUnitId = 341 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u342r, %u342s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0", kUnitId = 342 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u343r, %u343s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 343 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u344r, %u344s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 344 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u345r, %u345s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_860_head0_head1_neck0_data_pmu0", kUnitId = 345 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u346r, %u346s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU", kUnitId = 346 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u347r, %u347s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU", kUnitId = 347 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u348r, %u348s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0", kUnitId = 348 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u349r, %u349s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 349 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u350r, %u350s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 350 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u351r, %u351s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b WBuf 0_PCU", kUnitId = 351 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u352r, %u352s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b WBuf 0_PMU", kUnitId = 352 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u353r, %u353s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_895_head1_neck0_data_pmu0", kUnitId = 353 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u354r, %u354s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output", kUnitId = 354 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u355r, %u355s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_865_head0_head1_neck0_data_pmu0", kUnitId = 355 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u356r, %u356s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU", kUnitId = 356 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u357r, %u357s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU", kUnitId = 357 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u358r, %u358s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0", kUnitId = 358 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u359r, %u359s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 359 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u360r, %u360s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 360 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u361r, %u361s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_864_head0_head1_neck0_data_pmu0", kUnitId = 361 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u362r, %u362s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU", kUnitId = 362 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u363r, %u363s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU", kUnitId = 363 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u364r, %u364s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0", kUnitId = 364 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u365r, %u365s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 365 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u366r, %u366s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 366 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u367r, %u367s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b WBuf 0_PCU", kUnitId = 367 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u368r, %u368s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b WBuf 0_PMU", kUnitId = 368 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u369r, %u369s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output", kUnitId = 369 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u370r, %u370s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_869_head0_head1_neck0_data_pmu0", kUnitId = 370 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u371r, %u371s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU", kUnitId = 371 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u372r, %u372s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU", kUnitId = 372 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u373r, %u373s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0", kUnitId = 373 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u374r, %u374s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 374 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u375r, %u375s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 375 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u376r, %u376s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_868_head0_head1_neck0_data_pmu0", kUnitId = 376 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u377r, %u377s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU", kUnitId = 377 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSink, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u378r, %u378s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU", kUnitId = 378 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u379r, %u379s:4 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0", kUnitId = 379 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u380r, %u380s:3 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU", kUnitId = 380 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u381r, %u381s:2 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU BiasGradPCU", kUnitId = 381 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u382r, %u382s:5 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b WBuf 0_PCU", kUnitId = 382 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u383r, %u383s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b WBuf 0_PMU", kUnitId = 383 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u384r, %u384s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_858_head1_neck0_data_pmu0", kUnitId = 384 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u385r, %u385s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_862_head1_neck0_data_pmu0", kUnitId = 385 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u386r, %u386s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_866_head1_neck0_data_pmu0", kUnitId = 386 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u387r, %u387s:6 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_870_head1_neck0_data_pmu0", kUnitId = 387 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u388r, %u388s:5 = plasma.unit.Pcu() attributes {kName = "addn_1_0_688ADD0_output", kUnitId = 388 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u389r, %u389s:5 = plasma.unit.Pcu() attributes {kName = "addn_1_0_688ADD1_output", kUnitId = 389 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u390r, %u390s:5 = plasma.unit.Pcu() attributes {kName = "addn_1_0_688ADD2_output", kUnitId = 390 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u391r, %u391s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output", kUnitId = 391 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u392r, %u392s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_0", kUnitId = 392 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u393r, %u393s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_1", kUnitId = 393 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u394r, %u394s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_2", kUnitId = 394 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u395r, %u395s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_3", kUnitId = 395 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u396r, %u396s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_4", kUnitId = 396 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u397r, %u397s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_5", kUnitId = 397 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u398r, %u398s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_6", kUnitId = 398 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u399r, %u399s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_7", kUnitId = 399 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u400r, %u400s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_8", kUnitId = 400 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u401r, %u401s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_9", kUnitId = 401 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u402r, %u402s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_10", kUnitId = 402 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u403r, %u403s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_11", kUnitId = 403 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u404r, %u404s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_12", kUnitId = 404 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u405r, %u405s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_13", kUnitId = 405 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u406r, %u406s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_14", kUnitId = 406 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u407r, %u407s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_15", kUnitId = 407 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u408r, %u408s:5 = plasma.unit.Pcu() attributes {kName = "AccumPCU_0_0_output_16", kUnitId = 408 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u409r, %u409s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_848_head1_neck0_data_pmu0", kUnitId = 409 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u410r, %u410s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_847_head1_neck0_data_pmu0", kUnitId = 410 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u411r, %u411s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_871_head1_neck0_data_pmu0", kUnitId = 411 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u412r, %u412s:2 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_854_head1_neck0_data_pmu0", kUnitId = 412 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u413r, %u413s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_912.buffer_head1_neck0_data_pmu0", kUnitId = 413 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u414r, %u414s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_913.buffer_head1_neck0_data_pmu0", kUnitId = 414 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u415r, %u415s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_914.buffer_head1_neck0_data_pmu0", kUnitId = 415 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u416r, %u416s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_915.buffer_head1_neck0_data_pmu0", kUnitId = 416 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u417r, %u417s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_872_head1_neck0_data_pmu0", kUnitId = 417 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u418r, %u418s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_873_head1_neck0_data_pmu0", kUnitId = 418 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u419r, %u419s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_874_head1_neck0_data_pmu0", kUnitId = 419 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u420r, %u420s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_875_head1_neck0_data_pmu0", kUnitId = 420 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u421r, %u421s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_916.buffer_head1_neck0_data_pmu0", kUnitId = 421 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u422r, %u422s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_917.buffer_head1_neck0_data_pmu0", kUnitId = 422 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u423r, %u423s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_918.buffer_head1_neck0_data_pmu0", kUnitId = 423 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u424r, %u424s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_919.buffer_head1_neck0_data_pmu0", kUnitId = 424 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u425r, %u425s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_876_head1_neck0_data_pmu0", kUnitId = 425 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u426r, %u426s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_877_head1_neck0_data_pmu0", kUnitId = 426 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u427r, %u427s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_878_head1_neck0_data_pmu0", kUnitId = 427 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u428r, %u428s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_879_head1_neck0_data_pmu0", kUnitId = 428 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u429r, %u429s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_924.buffer_head1_neck0_data_pmu0", kUnitId = 429 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u430r, %u430s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_925.buffer_head1_neck0_data_pmu0", kUnitId = 430 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u431r, %u431s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_926.buffer_head1_neck0_data_pmu0", kUnitId = 431 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u432r, %u432s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_927.buffer_head1_neck0_data_pmu0", kUnitId = 432 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u433r, %u433s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_880_head1_neck0_data_pmu0", kUnitId = 433 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u434r, %u434s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_881_head1_neck0_data_pmu0", kUnitId = 434 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u435r, %u435s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_882_head1_neck0_data_pmu0", kUnitId = 435 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u436r, %u436s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_883_head1_neck0_data_pmu0", kUnitId = 436 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u437r, %u437s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_920.buffer_head1_neck0_data_pmu0", kUnitId = 437 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u438r, %u438s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_921.buffer_head1_neck0_data_pmu0", kUnitId = 438 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u439r, %u439s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_922.buffer_head1_neck0_data_pmu0", kUnitId = 439 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u440r, %u440s:2 = plasma.unit.Pmu() attributes {kName = "transpose_1_0_923.buffer_head1_neck0_data_pmu0", kUnitId = 440 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u441r, %u441s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_884_head1_neck0_data_pmu0", kUnitId = 441 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u442r, %u442s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_885_head1_neck0_data_pmu0", kUnitId = 442 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u443r, %u443s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_886_head1_neck0_data_pmu0", kUnitId = 443 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u444r, %u444s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_887_head1_neck0_data_pmu0", kUnitId = 444 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u445r, %u445s:11 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0", kUnitId = 445 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink, %arg50: !plasma.ControlSink, %arg51: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u446r, %u446s:11 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0", kUnitId = 446 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.ControlSink, %arg50: !plasma.ControlSink, %arg51: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u447r, %u447s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0", kUnitId = 447 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u448r, %u448s:6 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0", kUnitId = 448 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.VectorSink, %arg45: !plasma.VectorSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink)
      %u449r, %u449s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_855_head1_neck0_data_pmu0", kUnitId = 449 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u450r, %u450s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_859_head1_neck0_data_pmu0", kUnitId = 450 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u451r, %u451s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_863_head1_neck0_data_pmu0", kUnitId = 451 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u452r, %u452s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_1_0_867_head1_neck0_data_pmu0", kUnitId = 452 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSink, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u453r, %u453s:9 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_401_D_0_0", kUnitId = 453 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.ScalarSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink, %arg49: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u454r, %u454s:7 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.rbuf1u_1_0_402_D_0_0", kUnitId = 454 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ControlSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u455r, %u455s:8 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2a_1_0_850_D_0_0", kUnitId = 455 : i64}  {
      ^bb0(%arg41: !plasma.ScalarSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u456r, %u456s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_406_D_0_0", kUnitId = 456 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u457r, %u457s:6 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf2u_1_0_409_D_0_0", kUnitId = 457 : i64}  {
      ^bb0(%arg41: !plasma.ControlSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.VectorSink, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u458r, %u458s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum.tbuf_D_0_0_0", kUnitId = 458 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u459r, %u459s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__dense_layer__linear_bwd_weight_accum_1.tbuf_D_0_0_0", kUnitId = 459 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSrc, %arg44: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u460r, %u460s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum.tbuf_D_0_0_0", kUnitId = 460 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u461r, %u461s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_1.tbuf_D_0_0_0", kUnitId = 461 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u462r, %u462s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_2.tbuf_D_0_0_0", kUnitId = 462 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u463r, %u463s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_3.tbuf_D_0_0_0", kUnitId = 463 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u464r, %u464s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_4.tbuf_D_0_0_0", kUnitId = 464 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u465r, %u465s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_5.tbuf_D_0_0_0", kUnitId = 465 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u466r, %u466s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_6.tbuf_D_0_0_0", kUnitId = 466 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u467r, %u467s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_7.tbuf_D_0_0_0", kUnitId = 467 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u468r, %u468s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_8.tbuf_D_0_0_0", kUnitId = 468 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u469r, %u469s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_9.tbuf_D_0_0_0", kUnitId = 469 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u470r, %u470s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_10.tbuf_D_0_0_0", kUnitId = 470 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u471r, %u471s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_11.tbuf_D_0_0_0", kUnitId = 471 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u472r, %u472s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_12.tbuf_D_0_0_0", kUnitId = 472 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u473r, %u473s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_13.tbuf_D_0_0_0", kUnitId = 473 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u474r, %u474s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_14.tbuf_D_0_0_0", kUnitId = 474 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u475r, %u475s:3 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.ptconvlstm__lstm_layer__lstm_bwd_accum_15.tbuf_D_0_0_0", kUnitId = 475 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.VectorSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u476r, %u476s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_50", kUnitId = 476 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u477r, %u477s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_51", kUnitId = 477 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u478r, %u478s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_5", kUnitId = 478 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u479r, %u479s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_30", kUnitId = 479 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u480r, %u480s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_53", kUnitId = 480 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u481r, %u481s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_54", kUnitId = 481 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u482r, %u482s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_56", kUnitId = 482 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u483r, %u483s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_29", kUnitId = 483 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u484r, %u484s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_28", kUnitId = 484 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u485r, %u485s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_27", kUnitId = 485 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u486r, %u486s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_26", kUnitId = 486 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u487r, %u487s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_58", kUnitId = 487 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u488r, %u488s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_59", kUnitId = 488 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.VectorSrc, %arg43: !plasma.ControlSink, %arg44: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u489r, %u489s:8 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu", kUnitId = 489 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSrc, %arg44: !plasma.ScalarSrc, %arg45: !plasma.ControlSink, %arg46: !plasma.ControlSink, %arg47: !plasma.ControlSink, %arg48: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u490r, %u490s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300", kUnitId = 490 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u491r, %u491s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301", kUnitId = 491 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u492r, %u492s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302", kUnitId = 492 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u493r, %u493s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303", kUnitId = 493 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u494r, %u494s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304", kUnitId = 494 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u495r, %u495s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305", kUnitId = 495 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u496r, %u496s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306", kUnitId = 496 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u497r, %u497s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307", kUnitId = 497 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u498r, %u498s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308", kUnitId = 498 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u499r, %u499s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309", kUnitId = 499 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u500r, %u500s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310", kUnitId = 500 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u501r, %u501s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311", kUnitId = 501 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u502r, %u502s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312", kUnitId = 502 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u503r, %u503s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313", kUnitId = 503 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u504r, %u504s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314", kUnitId = 504 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u505r, %u505s:3 = plasma.unit.Pmu() attributes {kName = "s1.backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315", kUnitId = 505 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ControlSrc, %arg43: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u506r, %u506s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_1", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 506 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u507r, %u507s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_2", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 507 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u508r, %u508s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_3", kOnChipLayout = !plasma.TL<1xi32:RVRM>, kUnitId = 508 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xi32:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u509r, %u509s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_4", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 509 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u510r, %u510s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 510 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u511r, %u511s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_6", kOnChipLayout = !plasma.TL<1xbf16:RVRM:64>, kUnitId = 511 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u512r, %u512s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_7", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 512 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u513r, %u513s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_8", kOnChipLayout = !plasma.TL<1x60x64xbf16:RVRM:64>, kUnitId = 513 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u514r, %u514s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_9", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 514 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u515r, %u515s:2 = plasma.unit.Vag(%arg16) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_10", kOnChipLayout = !plasma.TL<136x60xbf16:CVCM:64>, kUnitId = 515 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u516r, %u516s:2 = plasma.unit.Vag(%arg10) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_11", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 516 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u517r, %u517s:2 = plasma.unit.Vag(%arg11) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_12", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 517 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u518r, %u518s:2 = plasma.unit.Vag(%arg12) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_13", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 518 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u519r, %u519s:2 = plasma.unit.Vag(%arg13) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_14", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 519 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u520r, %u520s:2 = plasma.unit.Vag(%arg14) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_15", kOnChipLayout = !plasma.TL<30x136xbf16:RVRM:0,64>, kUnitId = 520 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x30x136xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u521r, %u521s:2 = plasma.unit.Vag(%arg15) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_16", kOnChipLayout = !plasma.TL<2048x64xbf16:CVRM:64>, kUnitId = 521 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u522r, %u522s:2 = plasma.unit.Vag(%arg9) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_17", kOnChipLayout = !plasma.TL<60x136xbf16:RVRM:64>, kUnitId = 522 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x60x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u523r, %u523s:2 = plasma.unit.Vag(%arg17) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_18", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 523 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u524r, %u524s:2 = plasma.unit.Vag(%arg18) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_19", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 524 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u525r, %u525s:2 = plasma.unit.Vag(%arg19) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_20", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 525 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u526r, %u526s:2 = plasma.unit.Vag(%arg20) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_21", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 526 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u527r, %u527s:2 = plasma.unit.Vag(%arg21) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_22", kOnChipLayout = !plasma.TL<64x60xbf16:CVRM:64>, kUnitId = 527 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<100x64x60xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u528r, %u528s:3 = plasma.unit.Vag(%arg22) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_23", kOnChipLayout = !plasma.TL<60x64xbf16:RVRM>, kUnitId = 528 : i64}  {
      ^bb0(%arg41: !plasma.VectorSrc, %arg42: !plasma.ScalarSrc, %arg43: !plasma.ScalarSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<101x60x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ScalarSink)
      %u529r, %u529s = plasma.unit.Vag(%arg23) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_1", kOnChipLayout = !plasma.TL<8192x64xui8:RVRM>, kUnitId = 529 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x64xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u530r, %u530s = plasma.unit.Vag(%arg24) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_2", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 530 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4080x1xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u531r, %u531s = plasma.unit.Vag(%arg28) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_3", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 531 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u532r, %u532s = plasma.unit.Vag(%arg27) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_4", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 532 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u533r, %u533s = plasma.unit.Vag(%arg26) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 533 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u534r, %u534s = plasma.unit.Vag(%arg25) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_6", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 534 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u535r, %u535s = plasma.unit.Vag(%arg32) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_7", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 535 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u536r, %u536s = plasma.unit.Vag(%arg31) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_8", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 536 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u537r, %u537s = plasma.unit.Vag(%arg30) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_9", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 537 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u538r, %u538s = plasma.unit.Vag(%arg29) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_10", kOnChipLayout = !plasma.TL<320x64xui8:RVRM>, kUnitId = 538 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u539r, %u539s = plasma.unit.Vag(%arg36) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_11", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 539 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u540r, %u540s = plasma.unit.Vag(%arg35) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_12", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 540 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u541r, %u541s = plasma.unit.Vag(%arg34) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_13", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 541 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u542r, %u542s = plasma.unit.Vag(%arg33) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_14", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 542 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u543r, %u543s = plasma.unit.Vag(%arg40) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_15", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 543 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u544r, %u544s = plasma.unit.Vag(%arg39) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_16", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 544 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u545r, %u545s = plasma.unit.Vag(%arg38) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_17", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 545 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u546r, %u546s = plasma.unit.Vag(%arg37) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_18", kOnChipLayout = !plasma.TL<64x64xui8:RVRM>, kUnitId = 546 : i64}  {
      ^bb0(%arg41: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u162s#0, %u445s#3) [gbuf1a_1_0_842_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u162s#1, %u476s#2) [gbuf1a_1_0_842_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_50] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u163s#0, %u446s#3) [gbuf1a_1_0_843_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u163s#1, %u477s#2) [gbuf1a_1_0_843_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_51] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u164s#0, %u447s#3) [gbuf1a_1_0_844_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u164s#1, %u480s#2) [gbuf1a_1_0_844_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_53] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u165s#0, %u448s#3) [gbuf1a_1_0_845_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u165s#1, %u481s#2) [gbuf1a_1_0_845_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_54] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u166s#0, %u167s#4) [gbuf4a_1_0_846_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u166s#0, %u180s#4) [gbuf4a_1_0_846_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u166s#0, %u193s#4) [gbuf4a_1_0_846_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u166s#0, %u206s#4) [gbuf4a_1_0_846_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u166s#1, %u482s#2) [gbuf4a_1_0_846_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_56] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u167s#0, %u167s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u167s#1, %u169s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u168s#0, %u167s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u169s#0, %u170s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u170s#0, %u170s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u170s#1, %u172s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output >> gbuf1a_1_0_962_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u171s#0, %u170s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u172s#0, %u179s#3) [gbuf1a_1_0_962_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u173s#0, %u173s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u173s#1, %u175s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u174s#0, %u173s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u175s#0, %u176s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u176s#0, %u176s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u176s#1, %u178s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output >> gbuf1a_1_0_961_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u177s#0, %u176s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u178s#0, %u179s#4) [gbuf1a_1_0_961_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u179s#0, %u179s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_0_output >> ptconvlstm__lstm_layer__lstm_recompute__add_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u179s#1, %u220s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_0_output >> ptconvlstm__lstm_layer__lstm_recompute__i_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u180s#0, %u180s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u180s#1, %u182s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u181s#0, %u180s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u182s#0, %u183s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u183s#0, %u183s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u183s#1, %u185s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output >> gbuf1a_1_0_964_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u184s#0, %u183s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u185s#0, %u192s#3) [gbuf1a_1_0_964_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u186s#0, %u186s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u186s#1, %u188s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u187s#0, %u186s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u188s#0, %u189s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u189s#0, %u189s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u189s#1, %u191s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output >> gbuf1a_1_0_963_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u190s#0, %u189s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u191s#0, %u192s#4) [gbuf1a_1_0_963_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u192s#0, %u192s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_1_output >> ptconvlstm__lstm_layer__lstm_recompute__add_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u192s#1, %u222s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_1_output >> ptconvlstm__lstm_layer__lstm_recompute__f_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u193s#0, %u193s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u193s#1, %u195s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u194s#0, %u193s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u195s#0, %u196s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u196s#0, %u196s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u196s#1, %u198s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output >> gbuf1a_1_0_966_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u197s#0, %u196s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u198s#0, %u205s#3) [gbuf1a_1_0_966_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u199s#0, %u199s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u199s#1, %u201s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u200s#0, %u199s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u201s#0, %u202s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u202s#0, %u202s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u202s#1, %u204s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output >> gbuf1a_1_0_965_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u203s#0, %u202s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u204s#0, %u205s#4) [gbuf1a_1_0_965_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u205s#0, %u205s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_2_output >> ptconvlstm__lstm_layer__lstm_recompute__add_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u205s#1, %u224s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_2_output >> ptconvlstm__lstm_layer__lstm_recompute__g_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u206s#0, %u206s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u206s#1, %u208s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u207s#0, %u206s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u208s#0, %u209s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u209s#0, %u209s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u209s#1, %u211s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output >> gbuf1a_1_0_968_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u210s#0, %u209s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u211s#0, %u218s#3) [gbuf1a_1_0_968_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u212s#0, %u212s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u212s#1, %u214s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u213s#0, %u212s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u214s#0, %u215s#3) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_fwd_output_pmu >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u215s#0, %u215s#2) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u215s#1, %u217s#1) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output >> gbuf1a_1_0_967_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u216s#0, %u215s#4) [ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Bufpmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u217s#0, %u218s#4) [gbuf1a_1_0_967_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__add_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u218s#0, %u218s#2) [ptconvlstm__lstm_layer__lstm_recompute__add_3_output >> ptconvlstm__lstm_layer__lstm_recompute__add_3_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u218s#1, %u226s#3) [ptconvlstm__lstm_layer__lstm_recompute__add_3_output >> ptconvlstm__lstm_layer__lstm_recompute__o_t_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u219s#0, %u228s#3) [ptconvlstm__lstm_layer__lstm_recompute__temp_cell_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u220s#0, %u220s#2) [ptconvlstm__lstm_layer__lstm_recompute__i_t_output >> ptconvlstm__lstm_layer__lstm_recompute__i_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u220s#1, %u221s#1) [ptconvlstm__lstm_layer__lstm_recompute__i_t_output >> gbuf1a_1_0_970_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u221s#0, %u230s#3) [gbuf1a_1_0_970_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u222s#0, %u222s#2) [ptconvlstm__lstm_layer__lstm_recompute__f_t_output >> ptconvlstm__lstm_layer__lstm_recompute__f_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u222s#1, %u223s#1) [ptconvlstm__lstm_layer__lstm_recompute__f_t_output >> gbuf1a_1_0_969_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u223s#0, %u228s#4) [gbuf1a_1_0_969_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u224s#0, %u224s#2) [ptconvlstm__lstm_layer__lstm_recompute__g_t_output >> ptconvlstm__lstm_layer__lstm_recompute__g_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u224s#1, %u225s#1) [ptconvlstm__lstm_layer__lstm_recompute__g_t_output >> gbuf1a_1_0_971_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u225s#0, %u230s#4) [gbuf1a_1_0_971_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__mul1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u226s#0, %u226s#2) [ptconvlstm__lstm_layer__lstm_recompute__o_t_output >> ptconvlstm__lstm_layer__lstm_recompute__o_t_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u226s#1, %u227s#1) [ptconvlstm__lstm_layer__lstm_recompute__o_t_output >> gbuf1a_1_0_974_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u227s#0, %u235s#3) [gbuf1a_1_0_974_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u228s#0, %u228s#2) [ptconvlstm__lstm_layer__lstm_recompute__mul0_output >> ptconvlstm__lstm_layer__lstm_recompute__mul0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u228s#1, %u229s#1) [ptconvlstm__lstm_layer__lstm_recompute__mul0_output >> gbuf1a_1_0_972_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u229s#0, %u232s#3) [gbuf1a_1_0_972_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u230s#0, %u230s#2) [ptconvlstm__lstm_layer__lstm_recompute__mul1_output >> ptconvlstm__lstm_layer__lstm_recompute__mul1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u230s#1, %u231s#1) [ptconvlstm__lstm_layer__lstm_recompute__mul1_output >> gbuf1a_1_0_973_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u231s#0, %u232s#4) [gbuf1a_1_0_973_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u232s#0, %u232s#2) [ptconvlstm__lstm_layer__lstm_recompute__cell_output >> ptconvlstm__lstm_layer__lstm_recompute__cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u232s#1, %u233s#3) [ptconvlstm__lstm_layer__lstm_recompute__cell_output >> ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u232s#1, %u410s#3) [ptconvlstm__lstm_layer__lstm_recompute__cell_output >> gbuf2a_1_0_847_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u233s#0, %u233s#2) [ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output >> ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u233s#1, %u234s#1) [ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_output >> gbuf1a_1_0_975_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u234s#0, %u235s#4) [gbuf1a_1_0_975_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u235s#0, %u235s#2) [ptconvlstm__lstm_layer__lstm_recompute__hidden_output >> ptconvlstm__lstm_layer__lstm_recompute__hidden_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u235s#1, %u409s#3) [ptconvlstm__lstm_layer__lstm_recompute__hidden_output >> gbuf2a_1_0_848_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u235s#1, %u453s#8) [ptconvlstm__lstm_layer__lstm_recompute__hidden_output >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u236s#1, %u243s#3) [gbuf4u_1_0_399_head1_neck0_data_pmu0 >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u237s#0, %u237s#2) [ptconvlstm__dense_layer__linear_recompute__WBuf_0_PCU >> ptconvlstm__dense_layer__linear_recompute__WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u237s#1, %u239s#1) [ptconvlstm__dense_layer__linear_recompute__WBuf_0_PCU >> ptconvlstm__dense_layer__linear_recompute__fwd_output_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u238s#0, %u237s#3) [ptconvlstm__dense_layer__linear_recompute__WBuf_0_PMU >> ptconvlstm__dense_layer__linear_recompute__WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u239s#0, %u240s#3) [ptconvlstm__dense_layer__linear_recompute__fwd_output_pmu >> ptconvlstm__dense_layer__linear_recompute_FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u240s#0, %u240s#2) [ptconvlstm__dense_layer__linear_recompute_FwdPropBias_output >> ptconvlstm__dense_layer__linear_recompute_FwdPropBias_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u240s#1, %u242s#3) [ptconvlstm__dense_layer__linear_recompute_FwdPropBias_output >> gbuf2u_1_0_411_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u241s#0, %u240s#4) [ptconvlstm__dense_layer__linear_recompute_Bias_W_Bufpmu0 >> ptconvlstm__dense_layer__linear_recompute_FwdPropBias_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u242s#0, %u243s#4) [gbuf2u_1_0_411_head1_neck0_data_pmu0 >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u242s#1, %u457s#4) [gbuf2u_1_0_411_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u242s#2, %u457s#5) [gbuf2u_1_0_411_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u243s#0, %u243s#2) [ptconvlstm__criterion__mseloss_bwd_sub_output >> ptconvlstm__criterion__mseloss_bwd_sub_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u243s#1, %u244s#3) [ptconvlstm__criterion__mseloss_bwd_sub_output >> scale_1_0_632_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u244s#0, %u244s#2) [scale_1_0_632_scaling_pcu >> scale_1_0_632_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u244s#1, %u246s#4) [scale_1_0_632_scaling_pcu >> scale_1_0_633_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u245s#1, %u246s#3) [scale_1_0_633_input_B_pmu >> scale_1_0_633_scaling_pcu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u246s#0, %u246s#2) [scale_1_0_633_scaling_pcu >> scale_1_0_633_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u246s#1, %u248s#3) [scale_1_0_633_scaling_pcu >> gbuf2u_1_0_421_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u247s#1, %u249s#4) [gbuf4u_1_0_419_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u248s#0, %u249s#3) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u248s#1, %u236s#2) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> gbuf4u_1_0_399_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u248s#2, %u236s#3) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> gbuf4u_1_0_399_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u248s#1, %u242s#4) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> gbuf2u_1_0_411_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u248s#2, %u242s#5) [gbuf2u_1_0_421_head1_neck0_data_pmu0 >> gbuf2u_1_0_411_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u249s#0, %u249s#2) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u249s#1, %u250s#3) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_426_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u249s#1, %u258s#3) [ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0_output >> gbuf2u_1_0_429_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u250s#0, %u252s#4) [gbuf2u_1_0_426_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u250s#1, %u247s#2) [gbuf2u_1_0_426_head1_neck0_data_pmu0 >> gbuf4u_1_0_419_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u250s#2, %u247s#3) [gbuf2u_1_0_426_head1_neck0_data_pmu0 >> gbuf4u_1_0_419_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u250s#1, %u248s#4) [gbuf2u_1_0_426_head1_neck0_data_pmu0 >> gbuf2u_1_0_421_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u250s#2, %u248s#5) [gbuf2u_1_0_426_head1_neck0_data_pmu0 >> gbuf2u_1_0_421_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u251s#0, %u253s#1) [gbuf1a_1_0_851_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u251s#1, %u487s#2) [gbuf1a_1_0_851_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_58] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u252s#0, %u252s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u252s#1, %u264s#4) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU >> gbuf2u_1_0_431_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u253s#0, %u252s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u254s#0, %u254s#2) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u255s#0, %u254s#3) [ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PMU >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u256s#0, %u257s#6) [gbuf7u_1_0_428_head1_neck0_reformat_pmu0 >> gbuf7u_1_0_428_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u257s#0, %u257s#4) [gbuf7u_1_0_428_head1_neck0_data_pmu0 >> gbuf7u_1_0_428_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u257s#0, %u257s#5) [gbuf7u_1_0_428_head1_neck0_data_pmu0 >> gbuf7u_1_0_428_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u257s#1, %u256s#1) [gbuf7u_1_0_428_head1_neck0_data_pmu0 >> gbuf7u_1_0_428_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u257s#0, %u256s#2) [gbuf7u_1_0_428_head1_neck0_data_pmu0 >> gbuf7u_1_0_428_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u257s#2, %u259s#4) [gbuf7u_1_0_428_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u257s#3, %u456s#4) [gbuf7u_1_0_428_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u257s#0, %u456s#5) [gbuf7u_1_0_428_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u258s#0, %u263s#1) [gbuf2u_1_0_429_head0_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u258s#1, %u260s#2) [gbuf2u_1_0_429_head0_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u258s#2, %u247s#4) [gbuf2u_1_0_429_head0_head1_neck0_data_pmu0 >> gbuf4u_1_0_419_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u258s#2, %u248s#6) [gbuf2u_1_0_429_head0_head1_neck0_data_pmu0 >> gbuf2u_1_0_421_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u259s#0, %u261s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u260s#0, %u259s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u260s#1, %u258s#5) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> gbuf2u_1_0_429_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u261s#0, %u259s#1) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u261s#1, %u259s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u261s#2, %u391s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_a_output_pmu_0 >> AccumPCU_0_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u262s#0, %u392s#3) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u262s#1, %u258s#4) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2u_1_0_429_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u263s#0, %u262s#2) [ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u264s#0, %u269s#3) [gbuf2u_1_0_431_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_index_opcu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u264s#1, %u250s#4) [gbuf2u_1_0_431_head1_neck0_data_pmu0 >> gbuf2u_1_0_426_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u264s#2, %u250s#5) [gbuf2u_1_0_431_head1_neck0_data_pmu0 >> gbuf2u_1_0_426_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u264s#3, %u252s#5) [gbuf2u_1_0_431_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u264s#3, %u254s#5) [gbuf2u_1_0_431_head1_neck0_data_pmu0 >> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_gemm_0_1_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u265s#0, %u266s#4) [gbuf12u_1_0_437_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_indexin_indices] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u265s#1, %u454s#4) [gbuf12u_1_0_437_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u265s#2, %u454s#5) [gbuf12u_1_0_437_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u266s#0, %u267s#1) [ptconvlstm__indexselect_bwd_loss_just_indexin_indices >> ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u266s#1, %u268s#1) [ptconvlstm__indexselect_bwd_loss_just_indexin_indices >> ptconvlstm__indexselect_bwd_loss_just_indexindex2addr] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u266s#2, %u265s#6) [ptconvlstm__indexselect_bwd_loss_just_indexin_indices >> gbuf12u_1_0_437_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u267s#0, %u270s#5) [ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u268s#0, %u270s#6) [ptconvlstm__indexselect_bwd_loss_just_indexindex2addr >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u269s#0, %u270s#3) [ptconvlstm__indexselect_bwd_loss_just_index_opcu_0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u269s#1, %u270s#4) [ptconvlstm__indexselect_bwd_loss_just_index_opcu_0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u270s#0, %u269s#2) [ptconvlstm__indexselect_bwd_loss_just_index_opmu_0 >> ptconvlstm__indexselect_bwd_loss_just_index_opcu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u270s#1, %u266s#3) [ptconvlstm__indexselect_bwd_loss_just_index_opmu_0 >> ptconvlstm__indexselect_bwd_loss_just_indexin_indices] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u270s#2, %u280s#4) [ptconvlstm__indexselect_bwd_loss_just_index_opmu_0 >> gbuf2a_1_0_937_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u271s#0, %u319s#3) [gbuf4u_1_0_440_head1_neck0_data_pmu0 >> gbuf2a_1_0_852_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u271s#1, %u488s#2) [gbuf4u_1_0_440_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_59] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u272s#1, %u285s#1) [gbuf3u_1_0_443_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u272s#1, %u317s#1) [gbuf3u_1_0_443_head1_neck0_data_pmu0 >> gbuf1a_1_0_893_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u273s#1, %u286s#1) [gbuf3u_1_0_445_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u273s#1, %u337s#1) [gbuf3u_1_0_445_head1_neck0_data_pmu0 >> gbuf1a_1_0_894_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u274s#1, %u287s#1) [gbuf3u_1_0_447_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u274s#1, %u353s#1) [gbuf3u_1_0_447_head1_neck0_data_pmu0 >> gbuf1a_1_0_895_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u275s#1, %u289s#1) [gbuf3u_1_0_449_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u275s#1, %u369s#3) [gbuf3u_1_0_449_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u276s#1, %u277s#1) [gbuf3u_1_0_451_head1_neck0_data_pmu0 >> gbuf1a_1_0_1007_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u276s#1, %u291s#3) [gbuf3u_1_0_451_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u277s#0, %u308s#3) [gbuf1a_1_0_1007_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u278s#0, %u279s#3) [gbuf2a_1_0_938_head1_neck0_data_pmu0 >> gbuf2u_1_0_453_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u278s#1, %u489s#4) [gbuf2a_1_0_938_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u279s#0, %u327s#3) [gbuf2u_1_0_453_head1_neck0_data_pmu0 >> gbuf2a_1_0_853_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u279s#1, %u278s#2) [gbuf2u_1_0_453_head1_neck0_data_pmu0 >> gbuf2a_1_0_938_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u279s#2, %u278s#3) [gbuf2u_1_0_453_head1_neck0_data_pmu0 >> gbuf2a_1_0_938_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#0, %u281s#3) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> gbuf2u_1_0_455_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u280s#1, %u264s#5) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> gbuf2u_1_0_431_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#2, %u264s#6) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> gbuf2u_1_0_431_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#1, %u265s#4) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> gbuf12u_1_0_437_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#2, %u265s#5) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> gbuf12u_1_0_437_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#2, %u270s#7) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#2, %u267s#2) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_indexgen_zeros] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u280s#3, %u270s#8) [gbuf2a_1_0_937_head1_neck0_data_pmu0 >> ptconvlstm__indexselect_bwd_loss_just_index_opmu_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u281s#0, %u283s#3) [gbuf2u_1_0_455_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u281s#1, %u280s#5) [gbuf2u_1_0_455_head1_neck0_data_pmu0 >> gbuf2a_1_0_937_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u281s#2, %u280s#6) [gbuf2u_1_0_455_head1_neck0_data_pmu0 >> gbuf2a_1_0_937_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u282s#0, %u283s#4) [ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u283s#0, %u283s#2) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u283s#1, %u284s#2) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_output >> gbuf1a_1_0_1003_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u284s#0, %u301s#3) [gbuf1a_1_0_1003_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u284s#1, %u299s#3) [gbuf1a_1_0_1003_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u285s#0, %u293s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u285s#0, %u314s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_igates_head1_neck0_data_pmu0 >> gbuf1a_1_0_892_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u286s#0, %u290s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u286s#0, %u310s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_head1_neck0_data_pmu0 >> gbuf1a_1_0_891_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u287s#0, %u288s#1) [ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0 >> gbuf1a_1_0_1008_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u287s#0, %u294s#3) [ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u288s#0, %u312s#3) [gbuf1a_1_0_1008_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_igate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u289s#0, %u301s#4) [ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u290s#0, %u291s#4) [ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u291s#0, %u291s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u291s#1, %u292s#1) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_output >> gbuf1a_1_0_976_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u292s#0, %u296s#3) [gbuf1a_1_0_976_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u293s#0, %u294s#4) [ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u294s#0, %u294s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u294s#1, %u295s#1) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_output >> gbuf1a_1_0_977_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u295s#0, %u296s#4) [gbuf1a_1_0_977_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u296s#0, %u296s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u296s#1, %u297s#3) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u297s#0, %u297s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output >> ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u297s#1, %u298s#2) [ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_output >> gbuf1a_1_0_1004_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u298s#0, %u303s#3) [gbuf1a_1_0_1004_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u298s#1, %u299s#4) [gbuf1a_1_0_1004_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u299s#0, %u299s#2) [ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u299s#1, %u300s#1) [ptconvlstm__lstm_layer__lstm_bwd_ogate_g_output >> gbuf1a_1_0_991_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u300s#0, %u369s#4) [gbuf1a_1_0_991_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u301s#0, %u301s#2) [ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output >> ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u301s#1, %u302s#1) [ptconvlstm__lstm_layer__lstm_bwd_tanh_g_output >> gbuf1a_1_0_982_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u302s#0, %u303s#4) [gbuf1a_1_0_982_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u303s#0, %u303s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u303s#1, %u304s#1) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_output >> gbuf1a_1_0_983_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u304s#0, %u305s#4) [gbuf1a_1_0_983_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u305s#0, %u305s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u305s#1, %u306s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output >> gbuf1a_1_0_1005_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u305s#1, %u307s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output >> gbuf1a_1_0_1006_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u306s#0, %u315s#3) [gbuf1a_1_0_1005_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u306s#1, %u312s#4) [gbuf1a_1_0_1005_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_igate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u307s#0, %u311s#3) [gbuf1a_1_0_1006_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u307s#1, %u308s#4) [gbuf1a_1_0_1006_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u308s#0, %u308s#2) [ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u308s#1, %u309s#1) [ptconvlstm__lstm_layer__lstm_bwd_fgate_g_output >> gbuf1a_1_0_989_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u309s#0, %u338s#3) [gbuf1a_1_0_989_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u310s#0, %u311s#4) [gbuf1a_1_0_891_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u311s#0, %u311s#2) [ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output >> ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u311s#1, %u412s#1) [ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_output >> gbuf2a_1_0_854_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u312s#0, %u312s#2) [ptconvlstm__lstm_layer__lstm_bwd_igate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_igate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u312s#1, %u313s#1) [ptconvlstm__lstm_layer__lstm_bwd_igate_g_output >> gbuf1a_1_0_988_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u313s#0, %u318s#3) [gbuf1a_1_0_988_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u314s#0, %u315s#4) [gbuf1a_1_0_892_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u315s#0, %u315s#2) [ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output >> ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u315s#1, %u316s#1) [ptconvlstm__lstm_layer__lstm_bwd_ggate_g_output >> gbuf1a_1_0_990_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u316s#0, %u354s#3) [gbuf1a_1_0_990_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u317s#0, %u318s#4) [gbuf1a_1_0_893_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u318s#0, %u318s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u318s#1, %u321s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> gbuf2a_1_0_857_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u318s#1, %u329s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> gbuf2a_1_0_856_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u318s#1, %u449s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_output >> gbuf2a_1_0_855_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u319s#0, %u320s#6) [gbuf2a_1_0_852_head1_neck0_reformat_pmu0 >> gbuf2a_1_0_852_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u320s#0, %u320s#4) [gbuf2a_1_0_852_head1_neck0_data_pmu0 >> gbuf2a_1_0_852_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u320s#0, %u320s#5) [gbuf2a_1_0_852_head1_neck0_data_pmu0 >> gbuf2a_1_0_852_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u320s#1, %u319s#1) [gbuf2a_1_0_852_head1_neck0_data_pmu0 >> gbuf2a_1_0_852_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u320s#0, %u319s#2) [gbuf2a_1_0_852_head1_neck0_data_pmu0 >> gbuf2a_1_0_852_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u320s#2, %u322s#4) [gbuf2a_1_0_852_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u320s#3, %u271s#2) [gbuf2a_1_0_852_head1_neck0_data_pmu0 >> gbuf4u_1_0_440_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u320s#0, %u271s#3) [gbuf2a_1_0_852_head1_neck0_data_pmu0 >> gbuf4u_1_0_440_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u321s#0, %u326s#1) [gbuf2a_1_0_857_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u321s#1, %u323s#2) [gbuf2a_1_0_857_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u322s#0, %u324s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u323s#0, %u322s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u323s#1, %u321s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_857_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u324s#0, %u322s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u324s#1, %u322s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u324s#2, %u397s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_output_pmu_0 >> AccumPCU_0_0_output_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u325s#0, %u405s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u325s#1, %u321s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_857_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u326s#0, %u325s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u327s#0, %u328s#6) [gbuf2a_1_0_853_head1_neck0_reformat_pmu0 >> gbuf2a_1_0_853_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u328s#0, %u328s#4) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2a_1_0_853_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#0, %u328s#5) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2a_1_0_853_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#1, %u327s#1) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2a_1_0_853_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#0, %u327s#2) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2a_1_0_853_head1_neck0_reformat_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#2, %u330s#4) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u328s#3, %u279s#4) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2u_1_0_453_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u328s#0, %u279s#5) [gbuf2a_1_0_853_head1_neck0_data_pmu0 >> gbuf2u_1_0_453_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u329s#0, %u334s#1) [gbuf2a_1_0_856_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u329s#1, %u331s#2) [gbuf2a_1_0_856_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u330s#0, %u332s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u331s#0, %u330s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u331s#1, %u329s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_856_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u332s#0, %u330s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u332s#1, %u330s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u332s#2, %u393s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_output_pmu_0 >> AccumPCU_0_0_output_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u333s#0, %u401s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u333s#1, %u329s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_856_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u334s#0, %u333s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u335s#0, %u335s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u335s#1, %u384s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU >> gbuf2a_1_0_858_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u336s#0, %u335s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u337s#0, %u338s#4) [gbuf1a_1_0_894_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u338s#0, %u338s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u338s#1, %u339s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> gbuf2a_1_0_861_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u338s#1, %u345s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> gbuf2a_1_0_860_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u338s#1, %u450s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_output >> gbuf2a_1_0_859_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u339s#0, %u344s#1) [gbuf2a_1_0_861_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u339s#1, %u341s#2) [gbuf2a_1_0_861_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u340s#0, %u342s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u341s#0, %u340s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u341s#1, %u339s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_861_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u342s#0, %u340s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u342s#1, %u340s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u342s#2, %u398s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_output_pmu_0 >> AccumPCU_0_0_output_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u343s#0, %u406s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u343s#1, %u339s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_861_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u344s#0, %u343s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u345s#0, %u350s#1) [gbuf2a_1_0_860_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u345s#1, %u347s#2) [gbuf2a_1_0_860_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u346s#0, %u348s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u347s#0, %u346s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u347s#1, %u345s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_860_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u348s#0, %u346s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u348s#1, %u346s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u348s#2, %u394s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_output_pmu_0 >> AccumPCU_0_0_output_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u349s#0, %u402s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u349s#1, %u345s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_860_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u350s#0, %u349s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u351s#0, %u351s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u351s#1, %u385s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU >> gbuf2a_1_0_862_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u352s#0, %u351s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u353s#0, %u354s#4) [gbuf1a_1_0_895_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u354s#0, %u354s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u354s#1, %u355s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> gbuf2a_1_0_865_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u354s#1, %u361s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> gbuf2a_1_0_864_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u354s#1, %u451s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_output >> gbuf2a_1_0_863_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u355s#0, %u360s#1) [gbuf2a_1_0_865_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u355s#1, %u357s#2) [gbuf2a_1_0_865_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u356s#0, %u358s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u357s#0, %u356s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u357s#1, %u355s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_865_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#0, %u356s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#1, %u356s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u358s#2, %u399s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_output_pmu_0 >> AccumPCU_0_0_output_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u359s#0, %u407s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u359s#1, %u355s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_865_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u360s#0, %u359s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u361s#0, %u366s#1) [gbuf2a_1_0_864_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u361s#1, %u363s#2) [gbuf2a_1_0_864_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u362s#0, %u364s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u363s#0, %u362s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u363s#1, %u361s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_864_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#0, %u362s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#1, %u362s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u364s#2, %u395s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_output_pmu_0 >> AccumPCU_0_0_output_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u365s#0, %u403s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u365s#1, %u361s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_864_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u366s#0, %u365s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u367s#0, %u367s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u367s#1, %u386s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU >> gbuf2a_1_0_866_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u368s#0, %u367s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u369s#0, %u369s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u369s#1, %u370s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> gbuf2a_1_0_869_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u369s#1, %u376s#2) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> gbuf2a_1_0_868_head0_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u369s#1, %u452s#1) [ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_output >> gbuf2a_1_0_867_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u370s#0, %u375s#1) [gbuf2a_1_0_869_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u370s#1, %u372s#2) [gbuf2a_1_0_869_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u371s#0, %u373s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u372s#0, %u371s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u372s#1, %u370s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_869_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u373s#0, %u371s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u373s#1, %u371s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u373s#2, %u400s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_output_pmu_0 >> AccumPCU_0_0_output_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u374s#0, %u408s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u374s#1, %u370s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_869_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u375s#0, %u374s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u376s#0, %u381s#1) [gbuf2a_1_0_868_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u376s#1, %u378s#2) [gbuf2a_1_0_868_head0_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u377s#0, %u379s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u378s#0, %u377s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u378s#1, %u376s#4) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PMU >> gbuf2a_1_0_868_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u379s#0, %u377s#1) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u379s#1, %u377s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u379s#2, %u396s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_output_pmu_0 >> AccumPCU_0_0_output_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u380s#0, %u404s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> AccumPCU_0_0_output_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u380s#1, %u376s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU >> gbuf2a_1_0_868_head0_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u381s#0, %u380s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU_BiasGradPCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradOutputPMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u382s#0, %u382s#2) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u382s#1, %u387s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU >> gbuf2a_1_0_870_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u383s#0, %u382s#3) [ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PMU >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u384s#0, %u388s#3) [gbuf2a_1_0_858_head1_neck0_data_pmu0 >> addn_1_0_688ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u384s#1, %u449s#3) [gbuf2a_1_0_858_head1_neck0_data_pmu0 >> gbuf2a_1_0_855_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u384s#2, %u449s#4) [gbuf2a_1_0_858_head1_neck0_data_pmu0 >> gbuf2a_1_0_855_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u385s#0, %u388s#4) [gbuf2a_1_0_862_head1_neck0_data_pmu0 >> addn_1_0_688ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u385s#1, %u450s#3) [gbuf2a_1_0_862_head1_neck0_data_pmu0 >> gbuf2a_1_0_859_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u385s#2, %u450s#4) [gbuf2a_1_0_862_head1_neck0_data_pmu0 >> gbuf2a_1_0_859_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u386s#0, %u389s#4) [gbuf2a_1_0_866_head1_neck0_data_pmu0 >> addn_1_0_688ADD1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u386s#1, %u451s#3) [gbuf2a_1_0_866_head1_neck0_data_pmu0 >> gbuf2a_1_0_863_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u386s#2, %u451s#4) [gbuf2a_1_0_866_head1_neck0_data_pmu0 >> gbuf2a_1_0_863_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u387s#0, %u390s#4) [gbuf2a_1_0_870_head1_neck0_data_pmu0 >> addn_1_0_688ADD2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u387s#1, %u452s#2) [gbuf2a_1_0_870_head1_neck0_data_pmu0 >> gbuf2a_1_0_867_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u387s#2, %u452s#3) [gbuf2a_1_0_870_head1_neck0_data_pmu0 >> gbuf2a_1_0_867_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u388s#0, %u388s#2) [addn_1_0_688ADD0_output >> addn_1_0_688ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u388s#1, %u389s#3) [addn_1_0_688ADD0_output >> addn_1_0_688ADD1_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u389s#0, %u389s#2) [addn_1_0_688ADD1_output >> addn_1_0_688ADD1_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u389s#1, %u390s#3) [addn_1_0_688ADD1_output >> addn_1_0_688ADD2_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u390s#0, %u390s#2) [addn_1_0_688ADD2_output >> addn_1_0_688ADD2_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u390s#1, %u411s#3) [addn_1_0_688ADD2_output >> gbuf2a_1_0_871_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u391s#0, %u458s#3) [AccumPCU_0_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u391s#1, %u458s#3) [AccumPCU_0_0_output >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u392s#0, %u459s#3) [AccumPCU_0_0_output_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u392s#1, %u459s#3) [AccumPCU_0_0_output_0 >> LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u393s#0, %u460s#2) [AccumPCU_0_0_output_1 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u393s#1, %u460s#2) [AccumPCU_0_0_output_1 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u394s#0, %u461s#2) [AccumPCU_0_0_output_2 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u394s#1, %u461s#2) [AccumPCU_0_0_output_2 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u395s#0, %u462s#2) [AccumPCU_0_0_output_3 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u395s#1, %u462s#2) [AccumPCU_0_0_output_3 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u396s#0, %u463s#2) [AccumPCU_0_0_output_4 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u396s#1, %u463s#2) [AccumPCU_0_0_output_4 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u397s#0, %u464s#2) [AccumPCU_0_0_output_5 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u397s#1, %u464s#2) [AccumPCU_0_0_output_5 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u398s#0, %u465s#2) [AccumPCU_0_0_output_6 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u398s#1, %u465s#2) [AccumPCU_0_0_output_6 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u399s#0, %u466s#2) [AccumPCU_0_0_output_7 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u399s#1, %u466s#2) [AccumPCU_0_0_output_7 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u400s#0, %u467s#2) [AccumPCU_0_0_output_8 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u400s#1, %u467s#2) [AccumPCU_0_0_output_8 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u401s#0, %u468s#2) [AccumPCU_0_0_output_9 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u401s#1, %u468s#2) [AccumPCU_0_0_output_9 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u402s#0, %u469s#2) [AccumPCU_0_0_output_10 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u402s#1, %u469s#2) [AccumPCU_0_0_output_10 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u403s#0, %u470s#2) [AccumPCU_0_0_output_11 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u403s#1, %u470s#2) [AccumPCU_0_0_output_11 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u404s#0, %u471s#2) [AccumPCU_0_0_output_12 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u404s#1, %u471s#2) [AccumPCU_0_0_output_12 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u405s#0, %u472s#2) [AccumPCU_0_0_output_13 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u405s#1, %u472s#2) [AccumPCU_0_0_output_13 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u406s#0, %u473s#2) [AccumPCU_0_0_output_14 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u406s#1, %u473s#2) [AccumPCU_0_0_output_14 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u407s#0, %u474s#2) [AccumPCU_0_0_output_15 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u407s#1, %u474s#2) [AccumPCU_0_0_output_15 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u408s#0, %u475s#2) [AccumPCU_0_0_output_16 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u408s#1, %u475s#2) [AccumPCU_0_0_output_16 >> LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_D_0_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u409s#0, %u445s#3) [gbuf2a_1_0_848_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u409s#1, %u445s#5) [gbuf2a_1_0_848_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u409s#2, %u445s#6) [gbuf2a_1_0_848_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u409s#1, %u446s#9) [gbuf2a_1_0_848_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u409s#2, %u446s#10) [gbuf2a_1_0_848_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u409s#1, %u166s#4) [gbuf2a_1_0_848_head1_neck0_data_pmu0 >> gbuf4a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u409s#2, %u166s#5) [gbuf2a_1_0_848_head1_neck0_data_pmu0 >> gbuf4a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#0, %u446s#3) [gbuf2a_1_0_847_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u410s#1, %u445s#9) [gbuf2a_1_0_847_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#2, %u445s#10) [gbuf2a_1_0_847_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#1, %u446s#5) [gbuf2a_1_0_847_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#2, %u446s#6) [gbuf2a_1_0_847_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#1, %u166s#6) [gbuf2a_1_0_847_head1_neck0_data_pmu0 >> gbuf4a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u410s#2, %u166s#7) [gbuf2a_1_0_847_head1_neck0_data_pmu0 >> gbuf4a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#0, %u447s#3) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u411s#1, %u384s#4) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_858_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#2, %u384s#5) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_858_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#1, %u385s#4) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_862_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#2, %u385s#5) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_862_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#1, %u386s#4) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_866_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#2, %u386s#5) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_866_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#1, %u387s#4) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_870_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u411s#2, %u387s#5) [gbuf2a_1_0_871_head1_neck0_data_pmu0 >> gbuf2a_1_0_870_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u412s#0, %u448s#3) [gbuf2a_1_0_854_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u413s#0, %u417s#1) [transpose_1_0_912_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_872_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u414s#0, %u418s#1) [transpose_1_0_913_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_873_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u415s#0, %u419s#1) [transpose_1_0_914_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_874_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u416s#0, %u420s#1) [transpose_1_0_915_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_875_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u417s#0, %u490s#2) [gbuf1a_1_0_872_head1_neck0_data_pmu0 >> s1_backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u418s#0, %u491s#2) [gbuf1a_1_0_873_head1_neck0_data_pmu0 >> s1_backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u419s#0, %u492s#2) [gbuf1a_1_0_874_head1_neck0_data_pmu0 >> s1_backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u420s#0, %u493s#2) [gbuf1a_1_0_875_head1_neck0_data_pmu0 >> s1_backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u421s#0, %u425s#1) [transpose_1_0_916_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_876_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u422s#0, %u426s#1) [transpose_1_0_917_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_877_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u423s#0, %u427s#1) [transpose_1_0_918_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_878_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u424s#0, %u428s#1) [transpose_1_0_919_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_879_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u425s#0, %u494s#2) [gbuf1a_1_0_876_head1_neck0_data_pmu0 >> s1_backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u426s#0, %u495s#2) [gbuf1a_1_0_877_head1_neck0_data_pmu0 >> s1_backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u427s#0, %u496s#2) [gbuf1a_1_0_878_head1_neck0_data_pmu0 >> s1_backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u428s#0, %u497s#2) [gbuf1a_1_0_879_head1_neck0_data_pmu0 >> s1_backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u429s#0, %u433s#1) [transpose_1_0_924_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_880_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u430s#0, %u434s#1) [transpose_1_0_925_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_881_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u431s#0, %u435s#1) [transpose_1_0_926_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_882_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u432s#0, %u436s#1) [transpose_1_0_927_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_883_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u433s#0, %u498s#2) [gbuf1a_1_0_880_head1_neck0_data_pmu0 >> s1_backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u434s#0, %u499s#2) [gbuf1a_1_0_881_head1_neck0_data_pmu0 >> s1_backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u435s#0, %u500s#2) [gbuf1a_1_0_882_head1_neck0_data_pmu0 >> s1_backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u436s#0, %u501s#2) [gbuf1a_1_0_883_head1_neck0_data_pmu0 >> s1_backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u437s#0, %u441s#1) [transpose_1_0_920_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_884_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u438s#0, %u442s#1) [transpose_1_0_921_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_885_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u439s#0, %u443s#1) [transpose_1_0_922_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_886_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u440s#0, %u444s#1) [transpose_1_0_923_buffer_head1_neck0_data_pmu0 >> gbuf1a_1_0_887_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u441s#0, %u502s#2) [gbuf1a_1_0_884_head1_neck0_data_pmu0 >> s1_backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u442s#0, %u503s#2) [gbuf1a_1_0_885_head1_neck0_data_pmu0 >> s1_backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u443s#0, %u504s#2) [gbuf1a_1_0_886_head1_neck0_data_pmu0 >> s1_backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u444s#0, %u505s#2) [gbuf1a_1_0_887_head1_neck0_data_pmu0 >> s1_backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u445s#0, %u445s#2) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u445s#1, %u173s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u445s#1, %u186s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u445s#1, %u199s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u445s#1, %u212s#4) [ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u446s#0, %u446s#2) [ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u446s#1, %u219s#1) [ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_recompute__temp_cell_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u447s#0, %u447s#2) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u447s#1, %u282s#1) [ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u448s#0, %u448s#2) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u448s#1, %u305s#3) [ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u449s#0, %u335s#4) [gbuf2a_1_0_855_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u449s#1, %u274s#2) [gbuf2a_1_0_855_head1_neck0_data_pmu0 >> gbuf3u_1_0_447_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u450s#0, %u351s#4) [gbuf2a_1_0_859_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u450s#1, %u276s#2) [gbuf2a_1_0_859_head1_neck0_data_pmu0 >> gbuf3u_1_0_451_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u451s#0, %u367s#4) [gbuf2a_1_0_863_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u451s#1, %u447s#5) [gbuf2a_1_0_863_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u451s#1, %u448s#5) [gbuf2a_1_0_863_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u451s#1, %u272s#2) [gbuf2a_1_0_863_head1_neck0_data_pmu0 >> gbuf3u_1_0_443_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u451s#1, %u273s#2) [gbuf2a_1_0_863_head1_neck0_data_pmu0 >> gbuf3u_1_0_445_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u451s#1, %u275s#2) [gbuf2a_1_0_863_head1_neck0_data_pmu0 >> gbuf3u_1_0_449_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u451s#1, %u281s#4) [gbuf2a_1_0_863_head1_neck0_data_pmu0 >> gbuf2u_1_0_455_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u452s#0, %u382s#4) [gbuf2a_1_0_867_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u453s#0, %u456s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u453s#0, %u457s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u453s#1, %u445s#7) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u453s#2, %u445s#8) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u453s#1, %u446s#7) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u453s#2, %u446s#8) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u453s#1, %u166s#2) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> gbuf4a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u453s#2, %u166s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0 >> gbuf4a_1_0_846_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u454s#1, %u455s#3) [LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u454s#1, %u265s#3) [LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0 >> gbuf12u_1_0_437_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u455s#0, %u453s#3) [LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u455s#1, %u454s#2) [LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0 >> LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u455s#2, %u454s#3) [LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0 >> LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#0, %u453s#4) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#1, %u453s#5) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#0, %u455s#4) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#1, %u455s#5) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u456s#2, %u256s#3) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_406_D_0_0 >> gbuf7u_1_0_428_head1_neck0_reformat_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u457s#0, %u453s#6) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u457s#1, %u453s#7) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2u_1_0_401_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u457s#0, %u455s#6) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u457s#1, %u455s#7) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0 >> LogregTorchSamba_partition_1_0__tbuf2a_1_0_850_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u457s#2, %u237s#4) [LogregTorchSamba_partition_1_0__tbuf2u_1_0_409_D_0_0 >> ptconvlstm__dense_layer__linear_recompute__WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u458s#1, %u391s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0 >> AccumPCU_0_0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u458s#2, %u257s#7) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0 >> gbuf7u_1_0_428_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u458s#0, %u529s) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_D_0_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u459s#1, %u392s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> AccumPCU_0_0_output_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u459s#2, %u257s#8) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> gbuf7u_1_0_428_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u459s#0, %u530s) [LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_D_0_0_0 >> LogicalAGCU_for_DRAM_output_s1_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u460s#0, %u393s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_D_0_0_0 >> AccumPCU_0_0_output_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u460s#1, %u413s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_D_0_0_0 >> transpose_1_0_912_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u461s#0, %u394s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_D_0_0_0 >> AccumPCU_0_0_output_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u461s#1, %u414s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_D_0_0_0 >> transpose_1_0_913_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u462s#0, %u395s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_D_0_0_0 >> AccumPCU_0_0_output_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u462s#1, %u415s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_D_0_0_0 >> transpose_1_0_914_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u463s#0, %u396s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_D_0_0_0 >> AccumPCU_0_0_output_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u463s#1, %u416s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_D_0_0_0 >> transpose_1_0_915_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u464s#0, %u397s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_D_0_0_0 >> AccumPCU_0_0_output_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u464s#1, %u421s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_D_0_0_0 >> transpose_1_0_916_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u465s#0, %u398s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_D_0_0_0 >> AccumPCU_0_0_output_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u465s#1, %u422s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_D_0_0_0 >> transpose_1_0_917_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u466s#0, %u399s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_D_0_0_0 >> AccumPCU_0_0_output_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u466s#1, %u423s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_D_0_0_0 >> transpose_1_0_918_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u467s#0, %u400s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_D_0_0_0 >> AccumPCU_0_0_output_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u467s#1, %u424s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_D_0_0_0 >> transpose_1_0_919_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u468s#0, %u401s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_D_0_0_0 >> AccumPCU_0_0_output_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u468s#1, %u437s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_D_0_0_0 >> transpose_1_0_920_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u469s#0, %u402s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_D_0_0_0 >> AccumPCU_0_0_output_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u469s#1, %u438s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_D_0_0_0 >> transpose_1_0_921_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u470s#0, %u403s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_D_0_0_0 >> AccumPCU_0_0_output_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u470s#1, %u439s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_D_0_0_0 >> transpose_1_0_922_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u471s#0, %u404s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_D_0_0_0 >> AccumPCU_0_0_output_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u471s#1, %u440s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_D_0_0_0 >> transpose_1_0_923_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u472s#0, %u405s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_D_0_0_0 >> AccumPCU_0_0_output_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u472s#1, %u429s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_D_0_0_0 >> transpose_1_0_924_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u473s#0, %u406s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_D_0_0_0 >> AccumPCU_0_0_output_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u473s#1, %u430s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_D_0_0_0 >> transpose_1_0_925_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u474s#0, %u407s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_D_0_0_0 >> AccumPCU_0_0_output_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u474s#1, %u431s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_D_0_0_0 >> transpose_1_0_926_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u475s#0, %u408s#2) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_D_0_0_0 >> AccumPCU_0_0_output_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u475s#1, %u432s#1) [LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_D_0_0_0 >> transpose_1_0_927_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u476s#1, %u162s#2) [s1_fronting_pmu_load_group_50 >> gbuf1a_1_0_842_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u477s#1, %u163s#2) [s1_fronting_pmu_load_group_51 >> gbuf1a_1_0_843_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u478s#1, %u238s#1) [s1_fronting_pmu_load_group_5 >> ptconvlstm__dense_layer__linear_recompute__WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u479s#1, %u241s#1) [s1_fronting_pmu_load_group_30 >> ptconvlstm__dense_layer__linear_recompute_Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u480s#1, %u164s#2) [s1_fronting_pmu_load_group_53 >> gbuf1a_1_0_844_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u481s#1, %u165s#2) [s1_fronting_pmu_load_group_54 >> gbuf1a_1_0_845_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u482s#1, %u166s#8) [s1_fronting_pmu_load_group_56 >> gbuf4a_1_0_846_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u483s#1, %u168s#1) [s1_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u483s#1, %u181s#1) [s1_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u483s#1, %u194s#1) [s1_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u483s#1, %u207s#1) [s1_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u174s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u336s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u187s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u352s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u200s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u368s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u213s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u484s#1, %u383s#1) [s1_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u485s#1, %u171s#1) [s1_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u485s#1, %u184s#1) [s1_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u485s#1, %u197s#1) [s1_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u485s#1, %u210s#1) [s1_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u486s#1, %u177s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u486s#1, %u190s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u486s#1, %u203s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u486s#1, %u216s#1) [s1_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Bufpmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u487s#1, %u251s#2) [s1_fronting_pmu_load_group_58 >> gbuf1a_1_0_851_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u488s#1, %u271s#4) [s1_fronting_pmu_load_group_59 >> gbuf4u_1_0_440_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u489s#1, %u489s#5) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u489s#1, %u489s#6) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u489s#2, %u278s#4) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu >> gbuf2a_1_0_938_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u489s#3, %u528s#2) [ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu >> LogicalAGCU_for_DRAM_input_s1_c0_23] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u490s#1, %u417s#2) [s1_backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 >> gbuf1a_1_0_872_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u490s#0, %u531s) [s1_backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 >> LogicalAGCU_for_DRAM_output_s1_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u491s#1, %u418s#2) [s1_backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 >> gbuf1a_1_0_873_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u491s#0, %u532s) [s1_backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 >> LogicalAGCU_for_DRAM_output_s1_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u492s#1, %u419s#2) [s1_backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 >> gbuf1a_1_0_874_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u492s#0, %u533s) [s1_backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 >> LogicalAGCU_for_DRAM_output_s1_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u493s#1, %u420s#2) [s1_backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 >> gbuf1a_1_0_875_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u493s#0, %u534s) [s1_backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 >> LogicalAGCU_for_DRAM_output_s1_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u494s#1, %u425s#2) [s1_backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 >> gbuf1a_1_0_876_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u494s#0, %u535s) [s1_backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 >> LogicalAGCU_for_DRAM_output_s1_c0_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u495s#1, %u426s#2) [s1_backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 >> gbuf1a_1_0_877_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u495s#0, %u536s) [s1_backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 >> LogicalAGCU_for_DRAM_output_s1_c0_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u496s#1, %u427s#2) [s1_backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 >> gbuf1a_1_0_878_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u496s#0, %u537s) [s1_backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 >> LogicalAGCU_for_DRAM_output_s1_c0_9] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u497s#1, %u428s#2) [s1_backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 >> gbuf1a_1_0_879_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u497s#0, %u538s) [s1_backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 >> LogicalAGCU_for_DRAM_output_s1_c0_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u498s#1, %u433s#2) [s1_backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 >> gbuf1a_1_0_880_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u498s#0, %u539s) [s1_backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 >> LogicalAGCU_for_DRAM_output_s1_c0_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u499s#1, %u434s#2) [s1_backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 >> gbuf1a_1_0_881_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u499s#0, %u540s) [s1_backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 >> LogicalAGCU_for_DRAM_output_s1_c0_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u500s#1, %u435s#2) [s1_backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 >> gbuf1a_1_0_882_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u500s#0, %u541s) [s1_backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 >> LogicalAGCU_for_DRAM_output_s1_c0_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u501s#1, %u436s#2) [s1_backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 >> gbuf1a_1_0_883_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u501s#0, %u542s) [s1_backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 >> LogicalAGCU_for_DRAM_output_s1_c0_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u502s#1, %u441s#2) [s1_backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 >> gbuf1a_1_0_884_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u502s#0, %u543s) [s1_backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 >> LogicalAGCU_for_DRAM_output_s1_c0_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u503s#1, %u442s#2) [s1_backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 >> gbuf1a_1_0_885_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u503s#0, %u544s) [s1_backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 >> LogicalAGCU_for_DRAM_output_s1_c0_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u504s#1, %u443s#2) [s1_backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 >> gbuf1a_1_0_886_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u504s#0, %u545s) [s1_backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 >> LogicalAGCU_for_DRAM_output_s1_c0_17] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u505s#1, %u444s#2) [s1_backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 >> gbuf1a_1_0_887_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u505s#0, %u546s) [s1_backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 >> LogicalAGCU_for_DRAM_output_s1_c0_18] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u506s#0, %u476s#0) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_50] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u506s#1, %u476s#3) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_50] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u507s#0, %u477s#0) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> s1_fronting_pmu_load_group_51] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u507s#1, %u477s#3) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> s1_fronting_pmu_load_group_51] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u508s#0, %u454s#0) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u508s#1, %u454s#6) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> LogregTorchSamba_partition_1_0__rbuf1u_1_0_402_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u509s#0, %u478s#0) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u509s#1, %u478s#2) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_5] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u510s#0, %u479s#0) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_30] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u510s#1, %u479s#2) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_30] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u511s#0, %u245s#0) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> scale_1_0_633_input_B_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u511s#1, %u245s#2) [LogicalAGCU_for_DRAM_input_s1_c0_6 >> scale_1_0_633_input_B_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u512s#0, %u480s#0) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_53] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u512s#1, %u480s#3) [LogicalAGCU_for_DRAM_input_s1_c0_7 >> s1_fronting_pmu_load_group_53] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u513s#0, %u481s#0) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> s1_fronting_pmu_load_group_54] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u513s#1, %u481s#3) [LogicalAGCU_for_DRAM_input_s1_c0_8 >> s1_fronting_pmu_load_group_54] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u514s#0, %u247s#0) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> gbuf4u_1_0_419_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u514s#1, %u247s#5) [LogicalAGCU_for_DRAM_input_s1_c0_9 >> gbuf4u_1_0_419_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u515s#0, %u482s#0) [LogicalAGCU_for_DRAM_input_s1_c0_10 >> s1_fronting_pmu_load_group_56] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u515s#1, %u482s#3) [LogicalAGCU_for_DRAM_input_s1_c0_10 >> s1_fronting_pmu_load_group_56] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u516s#0, %u483s#0) [LogicalAGCU_for_DRAM_input_s1_c0_11 >> s1_fronting_pmu_load_group_29] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u516s#1, %u483s#2) [LogicalAGCU_for_DRAM_input_s1_c0_11 >> s1_fronting_pmu_load_group_29] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u517s#0, %u484s#0) [LogicalAGCU_for_DRAM_input_s1_c0_12 >> s1_fronting_pmu_load_group_28] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u517s#1, %u484s#2) [LogicalAGCU_for_DRAM_input_s1_c0_12 >> s1_fronting_pmu_load_group_28] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u518s#0, %u485s#0) [LogicalAGCU_for_DRAM_input_s1_c0_13 >> s1_fronting_pmu_load_group_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u518s#1, %u485s#2) [LogicalAGCU_for_DRAM_input_s1_c0_13 >> s1_fronting_pmu_load_group_27] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u519s#0, %u486s#0) [LogicalAGCU_for_DRAM_input_s1_c0_14 >> s1_fronting_pmu_load_group_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u519s#1, %u486s#2) [LogicalAGCU_for_DRAM_input_s1_c0_14 >> s1_fronting_pmu_load_group_26] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u520s#0, %u236s#0) [LogicalAGCU_for_DRAM_input_s1_c0_15 >> gbuf4u_1_0_399_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u520s#1, %u236s#4) [LogicalAGCU_for_DRAM_input_s1_c0_15 >> gbuf4u_1_0_399_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u521s#0, %u487s#0) [LogicalAGCU_for_DRAM_input_s1_c0_16 >> s1_fronting_pmu_load_group_58] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u521s#1, %u487s#3) [LogicalAGCU_for_DRAM_input_s1_c0_16 >> s1_fronting_pmu_load_group_58] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u522s#0, %u488s#0) [LogicalAGCU_for_DRAM_input_s1_c0_17 >> s1_fronting_pmu_load_group_59] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u522s#1, %u488s#3) [LogicalAGCU_for_DRAM_input_s1_c0_17 >> s1_fronting_pmu_load_group_59] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u523s#0, %u272s#0) [LogicalAGCU_for_DRAM_input_s1_c0_18 >> gbuf3u_1_0_443_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u523s#1, %u272s#3) [LogicalAGCU_for_DRAM_input_s1_c0_18 >> gbuf3u_1_0_443_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u524s#0, %u273s#0) [LogicalAGCU_for_DRAM_input_s1_c0_19 >> gbuf3u_1_0_445_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u524s#1, %u273s#3) [LogicalAGCU_for_DRAM_input_s1_c0_19 >> gbuf3u_1_0_445_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u525s#0, %u274s#0) [LogicalAGCU_for_DRAM_input_s1_c0_20 >> gbuf3u_1_0_447_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u525s#1, %u274s#3) [LogicalAGCU_for_DRAM_input_s1_c0_20 >> gbuf3u_1_0_447_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u526s#0, %u275s#0) [LogicalAGCU_for_DRAM_input_s1_c0_21 >> gbuf3u_1_0_449_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u526s#1, %u275s#3) [LogicalAGCU_for_DRAM_input_s1_c0_21 >> gbuf3u_1_0_449_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u527s#0, %u276s#0) [LogicalAGCU_for_DRAM_input_s1_c0_22 >> gbuf3u_1_0_451_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u527s#1, %u276s#3) [LogicalAGCU_for_DRAM_input_s1_c0_22 >> gbuf3u_1_0_451_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u528s#0, %u489s#0) [LogicalAGCU_for_DRAM_input_s1_c0_23 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u528s#1, %u489s#7) [LogicalAGCU_for_DRAM_input_s1_c0_23 >> ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerFronting_pmu] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_1_0_842()  {
          "plasma.BindUnit"(%u162r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_843()  {
          "plasma.BindUnit"(%u163r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_844()  {
          "plasma.BindUnit"(%u164r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_845()  {
          "plasma.BindUnit"(%u165r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf4a_1_0_846()  {
          "plasma.BindUnit"(%u166r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0()  {
          "plasma.BindUnit"(%u167r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u168r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u169r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0Bias_W_Buf()  {
            "plasma.BindUnit"(%u171r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0FwdPropBias()  {
            "plasma.BindUnit"(%u170r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_0W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_962()  {
          "plasma.BindUnit"(%u172r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0()  {
          "plasma.BindUnit"(%u173r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u174r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u175r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0Bias_W_Buf()  {
            "plasma.BindUnit"(%u177r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0FwdPropBias()  {
            "plasma.BindUnit"(%u176r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_0W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_961()  {
          "plasma.BindUnit"(%u178r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_0()  {
          "plasma.BindUnit"(%u179r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1()  {
          "plasma.BindUnit"(%u180r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u181r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u182r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1Bias_W_Buf()  {
            "plasma.BindUnit"(%u184r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1FwdPropBias()  {
            "plasma.BindUnit"(%u183r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_1W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_964()  {
          "plasma.BindUnit"(%u185r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1()  {
          "plasma.BindUnit"(%u186r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u187r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u188r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1Bias_W_Buf()  {
            "plasma.BindUnit"(%u190r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1FwdPropBias()  {
            "plasma.BindUnit"(%u189r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_1W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_963()  {
          "plasma.BindUnit"(%u191r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_1()  {
          "plasma.BindUnit"(%u192r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2()  {
          "plasma.BindUnit"(%u193r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u194r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u195r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2Bias_W_Buf()  {
            "plasma.BindUnit"(%u197r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2FwdPropBias()  {
            "plasma.BindUnit"(%u196r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_2W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_966()  {
          "plasma.BindUnit"(%u198r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2()  {
          "plasma.BindUnit"(%u199r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u200r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u201r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2Bias_W_Buf()  {
            "plasma.BindUnit"(%u203r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2FwdPropBias()  {
            "plasma.BindUnit"(%u202r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_2W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_965()  {
          "plasma.BindUnit"(%u204r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_2()  {
          "plasma.BindUnit"(%u205r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3()  {
          "plasma.BindUnit"(%u206r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u207r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u208r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3Bias_W_Buf()  {
            "plasma.BindUnit"(%u210r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3FwdPropBias()  {
            "plasma.BindUnit"(%u209r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_w_3W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_968()  {
          "plasma.BindUnit"(%u211r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3()  {
          "plasma.BindUnit"(%u212r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u213r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u214r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3Bias_W_Buf()  {
            "plasma.BindUnit"(%u216r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3FwdPropBias()  {
            "plasma.BindUnit"(%u215r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__linear_v_3W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_967()  {
          "plasma.BindUnit"(%u217r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__add_3()  {
          "plasma.BindUnit"(%u218r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__temp_cell()  {
          "plasma.BindUnit"(%u219r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__i_t()  {
          "plasma.BindUnit"(%u220r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_970()  {
          "plasma.BindUnit"(%u221r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__f_t()  {
          "plasma.BindUnit"(%u222r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_969()  {
          "plasma.BindUnit"(%u223r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__g_t()  {
          "plasma.BindUnit"(%u224r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_971()  {
          "plasma.BindUnit"(%u225r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__o_t()  {
          "plasma.BindUnit"(%u226r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_974()  {
          "plasma.BindUnit"(%u227r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__mul0()  {
          "plasma.BindUnit"(%u228r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_972()  {
          "plasma.BindUnit"(%u229r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__mul1()  {
          "plasma.BindUnit"(%u230r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_973()  {
          "plasma.BindUnit"(%u231r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__cell()  {
          "plasma.BindUnit"(%u232r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__tanh_cell()  {
          "plasma.BindUnit"(%u233r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_975()  {
          "plasma.BindUnit"(%u234r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__hidden()  {
          "plasma.BindUnit"(%u235r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf4u_1_0_399()  {
          "plasma.BindUnit"(%u236r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_recompute_()  {
          "plasma.BindUnit"(%u237r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u238r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u239r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__dense_layer__linear_recompute_Bias_W_Buf()  {
            "plasma.BindUnit"(%u241r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_recompute_FwdPropBias()  {
            "plasma.BindUnit"(%u240r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_recompute_W_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf2u_1_0_411()  {
          "plasma.BindUnit"(%u242r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__criterion__mseloss_bwd_sub()  {
          "plasma.BindUnit"(%u243r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_632()  {
          "plasma.BindUnit"(%u244r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_1_0_633()  {
          "plasma.BindUnit"(%u245r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u246r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf4u_1_0_419()  {
          "plasma.BindUnit"(%u247r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_421()  {
          "plasma.BindUnit"(%u248r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_t_output0_bwd_addn0()  {
          plasma.SuperNode @ptconvlstm__dense_layer__linear_t_output0_bwd_addn0ADD0()  {
            "plasma.BindUnit"(%u249r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2u_1_0_426()  {
          "plasma.BindUnit"(%u250r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_851()  {
          "plasma.BindUnit"(%u251r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_loss_grad_b()  {
          "plasma.BindUnit"(%u252r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u253r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u254r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u255r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_loss_grad_b_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf7u_1_0_428()  {
          "plasma.BindUnit"(%u256r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u257r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_429()  {
          "plasma.BindUnit"(%u258r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a()  {
          "plasma.BindUnit"(%u259r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u260r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u261r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u262r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u263r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2u_1_0_431()  {
          "plasma.BindUnit"(%u264r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf12u_1_0_437()  {
          "plasma.BindUnit"(%u265r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__indexselect_bwd_loss_just_index()  {
          "plasma.BindUnit"(%u266r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u267r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u268r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u269r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u270r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf4u_1_0_440()  {
          "plasma.BindUnit"(%u271r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf3u_1_0_443()  {
          "plasma.BindUnit"(%u272r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf3u_1_0_445()  {
          "plasma.BindUnit"(%u273r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf3u_1_0_447()  {
          "plasma.BindUnit"(%u274r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf3u_1_0_449()  {
          "plasma.BindUnit"(%u275r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf3u_1_0_451()  {
          "plasma.BindUnit"(%u276r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_1007()  {
          "plasma.BindUnit"(%u277r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_938()  {
          "plasma.BindUnit"(%u278r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_453()  {
          "plasma.BindUnit"(%u279r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_937()  {
          "plasma.BindUnit"(%u280r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2u_1_0_455()  {
          "plasma.BindUnit"(%u281r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg()  {
          "plasma.BindUnit"(%u282r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum()  {
          "plasma.BindUnit"(%u283r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_1003()  {
          "plasma.BindUnit"(%u284r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_igates()  {
          "plasma.BindUnit"(%u285r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_fgates()  {
          "plasma.BindUnit"(%u286r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_ggates()  {
          "plasma.BindUnit"(%u287r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_1008()  {
          "plasma.BindUnit"(%u288r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_ogates()  {
          "plasma.BindUnit"(%u289r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates()  {
          "plasma.BindUnit"(%u290r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0()  {
          "plasma.BindUnit"(%u291r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_976()  {
          "plasma.BindUnit"(%u292r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates()  {
          "plasma.BindUnit"(%u293r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1()  {
          "plasma.BindUnit"(%u294r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_977()  {
          "plasma.BindUnit"(%u295r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2()  {
          "plasma.BindUnit"(%u296r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh()  {
          "plasma.BindUnit"(%u297r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_1004()  {
          "plasma.BindUnit"(%u298r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_ogate_g()  {
          "plasma.BindUnit"(%u299r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_991()  {
          "plasma.BindUnit"(%u300r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_tanh_g()  {
          "plasma.BindUnit"(%u301r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_982()  {
          "plasma.BindUnit"(%u302r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g()  {
          "plasma.BindUnit"(%u303r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_983()  {
          "plasma.BindUnit"(%u304r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum()  {
          "plasma.BindUnit"(%u305r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_1005()  {
          "plasma.BindUnit"(%u306r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_1006()  {
          "plasma.BindUnit"(%u307r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_fgate_g()  {
          "plasma.BindUnit"(%u308r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_989()  {
          "plasma.BindUnit"(%u309r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_891()  {
          "plasma.BindUnit"(%u310r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_ct_1_g()  {
          "plasma.BindUnit"(%u311r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_igate_g()  {
          "plasma.BindUnit"(%u312r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_988()  {
          "plasma.BindUnit"(%u313r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_892()  {
          "plasma.BindUnit"(%u314r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_ggate_g()  {
          "plasma.BindUnit"(%u315r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_990()  {
          "plasma.BindUnit"(%u316r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_893()  {
          "plasma.BindUnit"(%u317r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0()  {
          "plasma.BindUnit"(%u318r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_852()  {
          "plasma.BindUnit"(%u319r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u320r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_857()  {
          "plasma.BindUnit"(%u321r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a()  {
          "plasma.BindUnit"(%u322r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u323r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u324r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u325r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u326r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_853()  {
          "plasma.BindUnit"(%u327r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u328r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_856()  {
          "plasma.BindUnit"(%u329r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a()  {
          "plasma.BindUnit"(%u330r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u331r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u332r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u333r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u334r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b()  {
          "plasma.BindUnit"(%u335r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u336r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_894()  {
          "plasma.BindUnit"(%u337r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1()  {
          "plasma.BindUnit"(%u338r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_861()  {
          "plasma.BindUnit"(%u339r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a()  {
          "plasma.BindUnit"(%u340r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u341r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u342r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u343r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u344r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_860()  {
          "plasma.BindUnit"(%u345r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a()  {
          "plasma.BindUnit"(%u346r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u347r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u348r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u349r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u350r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b()  {
          "plasma.BindUnit"(%u351r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u352r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_895()  {
          "plasma.BindUnit"(%u353r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2()  {
          "plasma.BindUnit"(%u354r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_865()  {
          "plasma.BindUnit"(%u355r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a()  {
          "plasma.BindUnit"(%u356r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u357r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u358r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u359r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u360r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_864()  {
          "plasma.BindUnit"(%u361r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a()  {
          "plasma.BindUnit"(%u362r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u363r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u364r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u365r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u366r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b()  {
          "plasma.BindUnit"(%u367r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u368r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3()  {
          "plasma.BindUnit"(%u369r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_869()  {
          "plasma.BindUnit"(%u370r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a()  {
          "plasma.BindUnit"(%u371r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u372r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u373r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u374r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u375r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @gbuf2a_1_0_868()  {
          "plasma.BindUnit"(%u376r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a()  {
          "plasma.BindUnit"(%u377r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u378r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u379r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
          }
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode()  {
            "plasma.BindUnit"(%u380r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_aBiasAccumNode_BiasGradPCU()  {
              "plasma.BindUnit"(%u381r) : (!plasma.Unitref) -> ()
            }
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b()  {
          "plasma.BindUnit"(%u382r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u383r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_bW_Buf() {}
          plasma.SuperNode @"ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b pargemm_b"()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf2a_1_0_858()  {
          "plasma.BindUnit"(%u384r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_862()  {
          "plasma.BindUnit"(%u385r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_866()  {
          "plasma.BindUnit"(%u386r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_870()  {
          "plasma.BindUnit"(%u387r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @addn_1_0_688()  {
          plasma.SuperNode @addn_1_0_688ADD2()  {
            "plasma.BindUnit"(%u390r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @addn_1_0_688ADD1()  {
            "plasma.BindUnit"(%u389r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @addn_1_0_688ADD0()  {
            "plasma.BindUnit"(%u388r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_accum()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u391r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u458r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__dense_layer__linear_bwd_weight_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u392r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u459r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u393r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u460r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_1()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u394r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u461r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_2()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u395r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u462r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_3()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u396r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u463r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_4()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u397r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u464r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_5()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u398r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u465r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_6()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u399r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u466r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_7()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u400r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u467r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_8()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u401r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u468r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_9()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u402r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u469r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_10()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u403r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u470r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_11()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u404r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u471r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_12()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u405r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u472r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_13()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u406r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u473r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_14()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u407r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u474r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_accum_15()  {
          plasma.SuperNode @AccumPCU_0_0()  {
            "plasma.BindUnit"(%u408r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf()  {
            "plasma.BindUnit"(%u475r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf2a_1_0_848()  {
          "plasma.BindUnit"(%u409r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_847()  {
          "plasma.BindUnit"(%u410r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_871()  {
          "plasma.BindUnit"(%u411r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_854()  {
          "plasma.BindUnit"(%u412r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_912()  {
          plasma.SuperNode @transpose_1_0_912.buffer()  {
            "plasma.BindUnit"(%u413r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_913()  {
          plasma.SuperNode @transpose_1_0_913.buffer()  {
            "plasma.BindUnit"(%u414r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_914()  {
          plasma.SuperNode @transpose_1_0_914.buffer()  {
            "plasma.BindUnit"(%u415r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_915()  {
          plasma.SuperNode @transpose_1_0_915.buffer()  {
            "plasma.BindUnit"(%u416r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_872()  {
          "plasma.BindUnit"(%u417r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_873()  {
          "plasma.BindUnit"(%u418r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_874()  {
          "plasma.BindUnit"(%u419r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_875()  {
          "plasma.BindUnit"(%u420r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_916()  {
          plasma.SuperNode @transpose_1_0_916.buffer()  {
            "plasma.BindUnit"(%u421r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_917()  {
          plasma.SuperNode @transpose_1_0_917.buffer()  {
            "plasma.BindUnit"(%u422r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_918()  {
          plasma.SuperNode @transpose_1_0_918.buffer()  {
            "plasma.BindUnit"(%u423r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_919()  {
          plasma.SuperNode @transpose_1_0_919.buffer()  {
            "plasma.BindUnit"(%u424r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_876()  {
          "plasma.BindUnit"(%u425r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_877()  {
          "plasma.BindUnit"(%u426r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_878()  {
          "plasma.BindUnit"(%u427r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_879()  {
          "plasma.BindUnit"(%u428r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_924()  {
          plasma.SuperNode @transpose_1_0_924.buffer()  {
            "plasma.BindUnit"(%u429r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_925()  {
          plasma.SuperNode @transpose_1_0_925.buffer()  {
            "plasma.BindUnit"(%u430r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_926()  {
          plasma.SuperNode @transpose_1_0_926.buffer()  {
            "plasma.BindUnit"(%u431r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_927()  {
          plasma.SuperNode @transpose_1_0_927.buffer()  {
            "plasma.BindUnit"(%u432r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_880()  {
          "plasma.BindUnit"(%u433r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_881()  {
          "plasma.BindUnit"(%u434r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_882()  {
          "plasma.BindUnit"(%u435r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_883()  {
          "plasma.BindUnit"(%u436r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_1_0_920()  {
          plasma.SuperNode @transpose_1_0_920.buffer()  {
            "plasma.BindUnit"(%u437r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_921()  {
          plasma.SuperNode @transpose_1_0_921.buffer()  {
            "plasma.BindUnit"(%u438r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_922()  {
          plasma.SuperNode @transpose_1_0_922.buffer()  {
            "plasma.BindUnit"(%u439r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_1_0_923()  {
          plasma.SuperNode @transpose_1_0_923.buffer()  {
            "plasma.BindUnit"(%u440r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_884()  {
          "plasma.BindUnit"(%u441r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_885()  {
          "plasma.BindUnit"(%u442r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_886()  {
          "plasma.BindUnit"(%u443r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_887()  {
          "plasma.BindUnit"(%u444r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer()  {
          "plasma.BindUnit"(%u445r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer()  {
          "plasma.BindUnit"(%u446r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g()  {
          "plasma.BindUnit"(%u447r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_bwd_cell_i_g()  {
          "plasma.BindUnit"(%u448r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_855()  {
          "plasma.BindUnit"(%u449r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_859()  {
          "plasma.BindUnit"(%u450r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_863()  {
          "plasma.BindUnit"(%u451r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_1_0_867()  {
          "plasma.BindUnit"(%u452r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_401()  {
          "plasma.BindUnit"(%u453r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @rbuf1u_1_0_402()  {
          "plasma.BindUnit"(%u454r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2a_1_0_850()  {
          "plasma.BindUnit"(%u455r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_406()  {
          "plasma.BindUnit"(%u456r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf2u_1_0_409()  {
          "plasma.BindUnit"(%u457r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_50()  {
          "plasma.BindUnit"(%u476r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_51()  {
          "plasma.BindUnit"(%u477r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_5()  {
          "plasma.BindUnit"(%u478r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_30()  {
          "plasma.BindUnit"(%u479r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_53()  {
          "plasma.BindUnit"(%u480r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_54()  {
          "plasma.BindUnit"(%u481r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_56()  {
          "plasma.BindUnit"(%u482r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_29()  {
          "plasma.BindUnit"(%u483r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_28()  {
          "plasma.BindUnit"(%u484r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_27()  {
          "plasma.BindUnit"(%u485r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_26()  {
          "plasma.BindUnit"(%u486r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_58()  {
          "plasma.BindUnit"(%u487r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_59()  {
          "plasma.BindUnit"(%u488r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tiler()  {
          "plasma.BindUnit"(%u489r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tilerTiler() {}
        }
        plasma.SuperNode @s1.backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300()  {
          "plasma.BindUnit"(%u490r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301()  {
          "plasma.BindUnit"(%u491r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302()  {
          "plasma.BindUnit"(%u492r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303()  {
          "plasma.BindUnit"(%u493r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304()  {
          "plasma.BindUnit"(%u494r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305()  {
          "plasma.BindUnit"(%u495r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306()  {
          "plasma.BindUnit"(%u496r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307()  {
          "plasma.BindUnit"(%u497r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308()  {
          "plasma.BindUnit"(%u498r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309()  {
          "plasma.BindUnit"(%u499r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310()  {
          "plasma.BindUnit"(%u500r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311()  {
          "plasma.BindUnit"(%u501r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312()  {
          "plasma.BindUnit"(%u502r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313()  {
          "plasma.BindUnit"(%u503r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314()  {
          "plasma.BindUnit"(%u504r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315()  {
          "plasma.BindUnit"(%u505r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_1:lstm_operand_0"()  {
          "plasma.BindUnit"(%u506r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_2:lstm_operand_1"()  {
          "plasma.BindUnit"(%u507r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_3:ptconvlstm__lstm_layer__lstm__outputs__0_slice_1"()  {
          "plasma.BindUnit"(%u508r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_4:group_5"()  {
          "plasma.BindUnit"(%u509r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_5:group_30"()  {
          "plasma.BindUnit"(%u510r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_6:ptconvlstm__criterion__mseloss__outputs__0__grad"()  {
          "plasma.BindUnit"(%u511r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_7:ptconvlstm__lstm_layer__lstm__hidden__output__grad"()  {
          "plasma.BindUnit"(%u512r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_8:ptconvlstm__lstm_layer__lstm__cell__output__grad"()  {
          "plasma.BindUnit"(%u513r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_9:ptconvlstm__view__outputs__0__grad"()  {
          "plasma.BindUnit"(%u514r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_10:inp_window"()  {
          "plasma.BindUnit"(%u515r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_11:group_29"()  {
          "plasma.BindUnit"(%u516r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_12:group_28"()  {
          "plasma.BindUnit"(%u517r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_13:group_27"()  {
          "plasma.BindUnit"(%u518r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_14:group_26"()  {
          "plasma.BindUnit"(%u519r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_15:out_window"()  {
          "plasma.BindUnit"(%u520r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_16:ptconvlstm__dense_layer__weight"()  {
          "plasma.BindUnit"(%u521r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_17:inp_window"()  {
          "plasma.BindUnit"(%u522r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_18:ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u523r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_19:ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u524r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_20:ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u525r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_21:ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u526r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_22:ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd"()  {
          "plasma.BindUnit"(%u527r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_23:ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs"()  {
          "plasma.BindUnit"(%u528r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_1:ptconvlstm__dense_layer__weight__grad"()  {
          "plasma.BindUnit"(%u529r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_2:ptconvlstm__dense_layer__bias__grad"()  {
          "plasma.BindUnit"(%u530r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_3:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u531r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_4:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u532r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_5:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u533r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_6:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u534r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_7:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u535r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_8:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u536r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_9:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u537r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_10:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u538r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_11:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u539r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_12:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u540r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_13:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u541r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_14:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u542r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_15:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u543r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_16:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u544r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_17:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u545r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_18:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u546r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s2() attributes {kControlBlockId = 2 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,R>, %arg6: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>, %arg7: !plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,R>, %arg8: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg9: !plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,R>, %arg10: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg11: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, %arg12: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>, %arg13: !plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>, %arg14: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, %arg15: !plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>, %arg16: !plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>, %arg17: !plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,W>, %arg18: !plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,W>, %arg19: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>, %arg20: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>, %arg21: !plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>):  // no predecessors
      %u547r, %u547s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 547 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u548r, %u548s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 548 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u549r, %u549s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 549 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u550r, %u550s:7 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 550 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u551r, %u551s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 551 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u552r, %u552s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 552 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u553r, %u553s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 553 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u554r, %u554s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 554 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u555r, %u555s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 555 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u556r, %u556s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 556 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u557r, %u557s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_939_head1_neck0_data_pmu0", kUnitId = 557 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u558r, %u558s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 558 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u559r, %u559s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 559 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u560r, %u560s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 560 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u561r, %u561s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 561 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u562r, %u562s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 562 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u563r, %u563s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_940_head1_neck0_data_pmu0", kUnitId = 563 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u564r, %u564s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 564 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u565r, %u565s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 565 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u566r, %u566s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 566 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u567r, %u567s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 567 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u568r, %u568s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 568 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u569r, %u569s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_941_head1_neck0_data_pmu0", kUnitId = 569 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u570r, %u570s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 570 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u571r, %u571s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 571 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u572r, %u572s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 572 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u573r, %u573s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 573 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u574r, %u574s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 574 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u575r, %u575s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_2_0_942_head1_neck0_data_pmu0", kUnitId = 575 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u576r, %u576s:8 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 576 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.VectorSink, %arg28: !plasma.ControlSink, %arg29: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u577r, %u577s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 577 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u578r, %u578s:7 = plasma.unit.Pcu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 578 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink, %arg27: !plasma.ControlSink, %arg28: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u579r, %u579s:5 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 579 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSrc, %arg24: !plasma.VectorSrc, %arg25: !plasma.VectorSink, %arg26: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u580r, %u580s:2 = plasma.unit.Pmu() attributes {kName = "ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0", kUnitId = 580 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u581r, %u581s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_5", kUnitId = 581 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u582r, %u582s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_33", kUnitId = 582 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u583r, %u583s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_31", kUnitId = 583 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u584r, %u584s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_30", kUnitId = 584 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u585r, %u585s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_34", kUnitId = 585 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u586r, %u586s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_32", kUnitId = 586 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u587r, %u587s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_29", kUnitId = 587 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u588r, %u588s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_84", kUnitId = 588 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u589r, %u589s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_28", kUnitId = 589 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u590r, %u590s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_85", kUnitId = 590 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u591r, %u591s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_27", kUnitId = 591 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u592r, %u592s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_86", kUnitId = 592 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u593r, %u593s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_26", kUnitId = 593 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u594r, %u594s:4 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_87", kUnitId = 594 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSink, %arg25: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u595r, %u595s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", kUnitId = 595 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u596r, %u596s:4 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", kUnitId = 596 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ControlSrc, %arg24: !plasma.ControlSrc, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u597r, %u597s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", kUnitId = 597 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u598r, %u598s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", kUnitId = 598 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u599r, %u599s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 599 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u600r, %u600s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 600 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u601r, %u601s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 601 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u602r, %u602s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", kUnitId = 602 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u603r, %u603s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_1", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 603 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u604r, %u604s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_2", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 604 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u605r, %u605s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_3", kOnChipLayout = !plasma.TL<1024x64xui8:RVRM>, kUnitId = 605 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u606r, %u606s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_4", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 606 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u607r, %u607s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_5", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 607 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u608r, %u608s:2 = plasma.unit.Vag(%arg5) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_6", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 608 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u609r, %u609s:2 = plasma.unit.Vag(%arg6) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_7", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 609 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u610r, %u610s:2 = plasma.unit.Vag(%arg7) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_8", kOnChipLayout = !plasma.TL<4x64x136xbf16:RVRM:64>, kUnitId = 610 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x136xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u611r, %u611s:2 = plasma.unit.Vag(%arg8) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_9", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 611 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u612r, %u612s:2 = plasma.unit.Vag(%arg9) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_10", kOnChipLayout = !plasma.TL<4x64x64xbf16:RVRM:64>, kUnitId = 612 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x64xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u613r, %u613s:2 = plasma.unit.Vag(%arg10) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_11", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 613 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u614r, %u614s:2 = plasma.unit.Vag(%arg11) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_12", kOnChipLayout = !plasma.TL<4x64x1xbf16:RVRM:64>, kUnitId = 614 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u615r, %u615s:2 = plasma.unit.Vag(%arg12) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_13", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 615 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u616r, %u616s:2 = plasma.unit.Vag(%arg13) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_14", kOnChipLayout = !plasma.TL<4x64x1xbf16:RVRM:64>, kUnitId = 616 : i64}  {
      ^bb0(%arg22: !plasma.VectorSrc, %arg23: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4x64x1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u617r, %u617s = plasma.unit.Vag(%arg14) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_1", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 617 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u618r, %u618s = plasma.unit.Vag(%arg15) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_2", kOnChipLayout = !plasma.TL<4096x64xui8:RVRM>, kUnitId = 618 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262144xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u619r, %u619s = plasma.unit.Vag(%arg16) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_3", kOnChipLayout = !plasma.TL<128x64xui8:RVRM>, kUnitId = 619 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<4096xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u620r, %u620s = plasma.unit.Vag(%arg17) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_4", kOnChipLayout = !plasma.TL<1744x64xui8:RVRM>, kUnitId = 620 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<55808xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u621r, %u621s = plasma.unit.Vag(%arg18) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_5", kOnChipLayout = !plasma.TL<1088x64xui8:RVRM>, kUnitId = 621 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<34816xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u622r, %u622s = plasma.unit.Vag(%arg19) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_6", kOnChipLayout = !plasma.TL<512x64xui8:RVRM>, kUnitId = 622 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u623r, %u623s = plasma.unit.Vag(%arg20) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_7", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 623 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u624r, %u624s = plasma.unit.Vag(%arg21) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_8", kOnChipLayout = !plasma.TL<8x64xui8:RVRM>, kUnitId = 624 : i64}  {
      ^bb0(%arg22: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<256xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u547s#0, %u548s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u547s#1, %u547s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u547s#2, %u547s#7) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u548s#0, %u547s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#1, %u549s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u548s#2, %u596s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#0, %u550s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u549s#1, %u549s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u549s#2, %u549s#6) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u550s#0, %u547s#5) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u550s#1, %u549s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u550s#2, %u595s#3) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u551s#0, %u547s#4) [ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u552s#0, %u553s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u552s#1, %u552s#6) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u552s#2, %u552s#7) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u553s#0, %u552s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u553s#1, %u554s#4) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u553s#2, %u598s#1) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u554s#0, %u555s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u554s#1, %u554s#5) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u554s#2, %u554s#6) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u555s#0, %u552s#5) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#1, %u554s#3) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u555s#2, %u597s#1) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u556s#0, %u552s#4) [ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u557s#0, %u562s#1) [gbuf1a_2_0_939_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u557s#1, %u588s#2) [gbuf1a_2_0_939_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_84] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u558s#0, %u559s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u558s#1, %u558s#6) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u558s#2, %u558s#7) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u559s#0, %u558s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u559s#1, %u560s#4) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u560s#0, %u561s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u560s#1, %u560s#5) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u560s#2, %u560s#6) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u561s#0, %u558s#5) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u561s#1, %u560s#3) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u561s#2, %u599s#1) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u562s#0, %u558s#4) [ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#0, %u568s#1) [gbuf1a_2_0_940_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u563s#1, %u590s#2) [gbuf1a_2_0_940_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_85] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u564s#0, %u565s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u564s#1, %u564s#6) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u564s#2, %u564s#7) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u565s#0, %u564s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u565s#1, %u566s#4) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u566s#0, %u567s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u566s#1, %u566s#5) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u566s#2, %u566s#6) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u567s#0, %u564s#5) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u567s#1, %u566s#3) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u567s#2, %u600s#1) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u568s#0, %u564s#4) [ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u569s#0, %u574s#1) [gbuf1a_2_0_941_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u569s#1, %u592s#2) [gbuf1a_2_0_941_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_86] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u570s#0, %u571s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u570s#1, %u570s#6) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u570s#2, %u570s#7) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u571s#0, %u570s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u571s#1, %u572s#4) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u572s#0, %u573s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u572s#1, %u572s#5) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u572s#2, %u572s#6) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u573s#0, %u570s#5) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u573s#1, %u572s#3) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u573s#2, %u601s#1) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u574s#0, %u570s#4) [ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u575s#0, %u580s#1) [gbuf1a_2_0_942_head1_neck0_data_pmu0 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u575s#1, %u594s#2) [gbuf1a_2_0_942_head1_neck0_data_pmu0 >> s2_fronting_pmu_load_group_87] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u576s#0, %u577s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u576s#1, %u576s#6) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u576s#2, %u576s#7) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u577s#0, %u576s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u577s#1, %u578s#4) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u578s#0, %u579s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u578s#1, %u578s#5) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u578s#2, %u578s#6) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u579s#0, %u576s#5) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u579s#1, %u578s#3) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u579s#2, %u602s#1) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u580s#0, %u576s#4) [ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_dw0 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u581s#1, %u550s#4) [s2_fronting_pmu_load_group_5 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u582s#1, %u551s#1) [s2_fronting_pmu_load_group_33 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u583s#1, %u548s#4) [s2_fronting_pmu_load_group_31 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u584s#1, %u555s#4) [s2_fronting_pmu_load_group_30 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u585s#1, %u556s#1) [s2_fronting_pmu_load_group_34 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#1, %u553s#4) [s2_fronting_pmu_load_group_32 >> ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#1, %u559s#4) [s2_fronting_pmu_load_group_32 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#1, %u565s#4) [s2_fronting_pmu_load_group_32 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#1, %u571s#4) [s2_fronting_pmu_load_group_32 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u586s#1, %u577s#4) [s2_fronting_pmu_load_group_32 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u587s#1, %u561s#4) [s2_fronting_pmu_load_group_29 >> ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u588s#1, %u557s#2) [s2_fronting_pmu_load_group_84 >> gbuf1a_2_0_939_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u589s#1, %u567s#4) [s2_fronting_pmu_load_group_28 >> ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u590s#1, %u563s#2) [s2_fronting_pmu_load_group_85 >> gbuf1a_2_0_940_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u591s#1, %u573s#4) [s2_fronting_pmu_load_group_27 >> ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u592s#1, %u569s#2) [s2_fronting_pmu_load_group_86 >> gbuf1a_2_0_941_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u593s#1, %u579s#4) [s2_fronting_pmu_load_group_26 >> ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u594s#1, %u575s#2) [s2_fronting_pmu_load_group_87 >> gbuf1a_2_0_942_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u595s#1, %u550s#5) [s2_backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u595s#2, %u550s#6) [s2_backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u595s#0, %u617s) [s2_backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u596s#1, %u548s#5) [s2_backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u596s#2, %u548s#6) [s2_backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u596s#0, %u618s) [s2_backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u597s#0, %u619s) [s2_backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_3] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u598s#0, %u620s) [s2_backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u599s#0, %u621s) [s2_backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u600s#0, %u622s) [s2_backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_6] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u601s#0, %u623s) [s2_backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u602s#0, %u624s) [s2_backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u603s#0, %u581s#0) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_5] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u603s#1, %u581s#2) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_5] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u604s#0, %u582s#0) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_33] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u604s#1, %u582s#2) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_33] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u605s#0, %u583s#0) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_31] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u605s#1, %u583s#2) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_31] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u606s#0, %u584s#0) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_30] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u606s#1, %u584s#2) [LogicalAGCU_for_DRAM_input_s2_c0_4 >> s2_fronting_pmu_load_group_30] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u607s#0, %u585s#0) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_34] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u607s#1, %u585s#2) [LogicalAGCU_for_DRAM_input_s2_c0_5 >> s2_fronting_pmu_load_group_34] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u608s#0, %u586s#0) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_32] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u608s#1, %u586s#2) [LogicalAGCU_for_DRAM_input_s2_c0_6 >> s2_fronting_pmu_load_group_32] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u609s#0, %u587s#0) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_29] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u609s#1, %u587s#2) [LogicalAGCU_for_DRAM_input_s2_c0_7 >> s2_fronting_pmu_load_group_29] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u610s#0, %u588s#0) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_84] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u610s#1, %u588s#3) [LogicalAGCU_for_DRAM_input_s2_c0_8 >> s2_fronting_pmu_load_group_84] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u611s#0, %u589s#0) [LogicalAGCU_for_DRAM_input_s2_c0_9 >> s2_fronting_pmu_load_group_28] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u611s#1, %u589s#2) [LogicalAGCU_for_DRAM_input_s2_c0_9 >> s2_fronting_pmu_load_group_28] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u612s#0, %u590s#0) [LogicalAGCU_for_DRAM_input_s2_c0_10 >> s2_fronting_pmu_load_group_85] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u612s#1, %u590s#3) [LogicalAGCU_for_DRAM_input_s2_c0_10 >> s2_fronting_pmu_load_group_85] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u613s#0, %u591s#0) [LogicalAGCU_for_DRAM_input_s2_c0_11 >> s2_fronting_pmu_load_group_27] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u613s#1, %u591s#2) [LogicalAGCU_for_DRAM_input_s2_c0_11 >> s2_fronting_pmu_load_group_27] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u614s#0, %u592s#0) [LogicalAGCU_for_DRAM_input_s2_c0_12 >> s2_fronting_pmu_load_group_86] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u614s#1, %u592s#3) [LogicalAGCU_for_DRAM_input_s2_c0_12 >> s2_fronting_pmu_load_group_86] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u615s#0, %u593s#0) [LogicalAGCU_for_DRAM_input_s2_c0_13 >> s2_fronting_pmu_load_group_26] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u615s#1, %u593s#2) [LogicalAGCU_for_DRAM_input_s2_c0_13 >> s2_fronting_pmu_load_group_26] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u616s#0, %u594s#0) [LogicalAGCU_for_DRAM_input_s2_c0_14 >> s2_fronting_pmu_load_group_87] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u616s#1, %u594s#3) [LogicalAGCU_for_DRAM_input_s2_c0_14 >> s2_fronting_pmu_load_group_87] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u547r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u548r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u549r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u550r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u551r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u552r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u553r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u554r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u555r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u556r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_939()  {
          "plasma.BindUnit"(%u557r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u558r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u559r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u560r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u561r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u562r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_940()  {
          "plasma.BindUnit"(%u563r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u564r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u565r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u566r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u567r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u568r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_941()  {
          "plasma.BindUnit"(%u569r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u570r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u571r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u572r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u573r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u574r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @gbuf1a_2_0_942()  {
          "plasma.BindUnit"(%u575r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt()  {
          "plasma.BindUnit"(%u576r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u577r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u578r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u579r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u580r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_W_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_DW_Buf() {}
          plasma.SuperNode @ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_MW_Buf() {}
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_5()  {
          "plasma.BindUnit"(%u581r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_33()  {
          "plasma.BindUnit"(%u582r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_31()  {
          "plasma.BindUnit"(%u583r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_30()  {
          "plasma.BindUnit"(%u584r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_34()  {
          "plasma.BindUnit"(%u585r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_32()  {
          "plasma.BindUnit"(%u586r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_29()  {
          "plasma.BindUnit"(%u587r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_84()  {
          "plasma.BindUnit"(%u588r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_28()  {
          "plasma.BindUnit"(%u589r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_85()  {
          "plasma.BindUnit"(%u590r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_27()  {
          "plasma.BindUnit"(%u591r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_86()  {
          "plasma.BindUnit"(%u592r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_26()  {
          "plasma.BindUnit"(%u593r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_87()  {
          "plasma.BindUnit"(%u594r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u595r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u596r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u597r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u598r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u599r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u600r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u601r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor()  {
          "plasma.BindUnit"(%u602r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_1:group_5"()  {
          "plasma.BindUnit"(%u603r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_2:$OPT_dp_accum_group_9d34dcacdfc5e3740f57fe6b0875d64261f47893"()  {
          "plasma.BindUnit"(%u604r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_3:group_31"()  {
          "plasma.BindUnit"(%u605r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_4:group_30"()  {
          "plasma.BindUnit"(%u606r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_5:$OPT_dp_accum_group_a3cd3e13b6b2b2b9cfe22b9b84a0c92ae1ec7594"()  {
          "plasma.BindUnit"(%u607r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_6:group_32"()  {
          "plasma.BindUnit"(%u608r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_7:group_29"()  {
          "plasma.BindUnit"(%u609r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_8:ptconvlstm__lstm_layer__weight_ih_l0__grad"()  {
          "plasma.BindUnit"(%u610r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_9:group_28"()  {
          "plasma.BindUnit"(%u611r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_10:ptconvlstm__lstm_layer__weight_hh_l0__grad"()  {
          "plasma.BindUnit"(%u612r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_11:group_27"()  {
          "plasma.BindUnit"(%u613r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_12:ptconvlstm__lstm_layer__bias_ih_l0__grad"()  {
          "plasma.BindUnit"(%u614r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_13:group_26"()  {
          "plasma.BindUnit"(%u615r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_14:ptconvlstm__lstm_layer__bias_hh_l0__grad"()  {
          "plasma.BindUnit"(%u616r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_1:group_5"()  {
          "plasma.BindUnit"(%u617r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_2:group_31"()  {
          "plasma.BindUnit"(%u618r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_3:group_30"()  {
          "plasma.BindUnit"(%u619r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_4:group_32"()  {
          "plasma.BindUnit"(%u620r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_5:group_29"()  {
          "plasma.BindUnit"(%u621r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_6:group_28"()  {
          "plasma.BindUnit"(%u622r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_7:group_27"()  {
          "plasma.BindUnit"(%u623r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_8:group_26"()  {
          "plasma.BindUnit"(%u624r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s3() attributes {kControlBlockId = 3 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<262208xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<262208xbf16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>):  // no predecessors
      %u625r, %u625s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_3_0_992_head1_neck0_data_pmu0", kUnitId = 625 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.ControlSink, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u626r, %u626s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_3_0_993_head1_neck0_data_pmu0", kUnitId = 626 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.ControlSink, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u627r, %u627s:5 = plasma.unit.Pcu() attributes {kName = "add_3_0_813_output", kUnitId = 627 : i64}  {
      ^bb0(%arg3: !plasma.ControlSrc, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u628r, %u628s:4 = plasma.unit.Pcu() attributes {kName = "scale_3_0_814_scaling_pcu", kUnitId = 628 : i64}  {
      ^bb0(%arg3: !plasma.ControlSrc, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u629r, %u629s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_3_0_888_head1_neck0_data_pmu0", kUnitId = 629 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.ControlSrc, %arg5: !plasma.ControlSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u630r, %u630s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s3_c0_1", kOnChipLayout = !plasma.TL<8192xbf16:RVRM:64>, kUnitId = 630 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u631r, %u631s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s3_c0_2", kOnChipLayout = !plasma.TL<8192xbf16:RVRM:64>, kUnitId = 631 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<262208xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u632r, %u632s = plasma.unit.Vag(%arg2) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s3_c0_1", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 632 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u625s#1, %u627s#3) [gbuf2a_3_0_992_head1_neck0_data_pmu0 >> add_3_0_813_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u626s#1, %u627s#4) [gbuf2a_3_0_993_head1_neck0_data_pmu0 >> add_3_0_813_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u627s#0, %u627s#2) [add_3_0_813_output >> add_3_0_813_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u627s#1, %u628s#3) [add_3_0_813_output >> scale_3_0_814_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u628s#0, %u628s#2) [scale_3_0_814_scaling_pcu >> scale_3_0_814_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u628s#1, %u629s#3) [scale_3_0_814_scaling_pcu >> gbuf2a_3_0_888_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u629s#1, %u625s#2) [gbuf2a_3_0_888_head1_neck0_data_pmu0 >> gbuf2a_3_0_992_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u625s#3) [gbuf2a_3_0_888_head1_neck0_data_pmu0 >> gbuf2a_3_0_992_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#1, %u626s#2) [gbuf2a_3_0_888_head1_neck0_data_pmu0 >> gbuf2a_3_0_993_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#2, %u626s#3) [gbuf2a_3_0_888_head1_neck0_data_pmu0 >> gbuf2a_3_0_993_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u629s#0, %u632s) [gbuf2a_3_0_888_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s3_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u630s#0, %u625s#0) [LogicalAGCU_for_DRAM_input_s3_c0_1 >> gbuf2a_3_0_992_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u630s#1, %u625s#4) [LogicalAGCU_for_DRAM_input_s3_c0_1 >> gbuf2a_3_0_992_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u631s#0, %u626s#0) [LogicalAGCU_for_DRAM_input_s3_c0_2 >> gbuf2a_3_0_993_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u631s#1, %u626s#4) [LogicalAGCU_for_DRAM_input_s3_c0_2 >> gbuf2a_3_0_993_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf2a_3_0_992()  {
          "plasma.BindUnit"(%u625r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_3_0_993()  {
          "plasma.BindUnit"(%u626r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @add_3_0_813()  {
          "plasma.BindUnit"(%u627r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_3_0_814()  {
          "plasma.BindUnit"(%u628r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_3_0_888()  {
          "plasma.BindUnit"(%u629r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s3_c0_1:dummy_dp_accum_region_0"()  {
          "plasma.BindUnit"(%u630r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s3_c0_2:accum_dummy_0_reduce_buf"()  {
          "plasma.BindUnit"(%u631r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s3_c0_1:dummy_dp_accum_region_0"()  {
          "plasma.BindUnit"(%u632r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
}
