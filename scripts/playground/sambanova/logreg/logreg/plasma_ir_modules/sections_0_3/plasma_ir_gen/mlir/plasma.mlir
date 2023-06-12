module @sections_0_3 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = true}  {
  plasma.Section @s0() attributes {kControlBlockId = 0 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<784x500xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<500xi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<500xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<784x500xbf16:CVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<500xi16:RVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,W>, %arg4: !plasma.TLMemRef<!plasma.TL<500xbf16:RVRM:64>,0,W>):  // no predecessors
      %u0r, %u0s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_93_head1_neck0_data_pmu0", kUnitId = 0 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSink, %arg7: !plasma.ControlSink, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u1r, %u1s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_93_head1_neck0_data_pmu1", kUnitId = 1 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSink, %arg7: !plasma.ControlSink, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u2r, %u2s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_93_head1_neck0_rob_pmu", kUnitId = 2 : i64}  {
      ^bb0(%arg5: !plasma.ControlSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u3r, %u3s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_gemm_0_0_0_PCU", kUnitId = 3 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u4r, %u4s:2 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__linear_gemm_0_0_0_PMU", kUnitId = 4 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u5r, %u5s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_gemm_0_0_1_PCU", kUnitId = 5 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u6r, %u6s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_gemm_0_0_2_PCU", kUnitId = 6 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u7r, %u7s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_gemm_0_0_3_PCU", kUnitId = 7 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u8r, %u8s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_92_head1_neck0_data_pmu0", kUnitId = 8 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u9r, %u9s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0", kUnitId = 9 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u10r, %u10s:2 = plasma.unit.Pmu() attributes {kName = "transpose_0_0_112.buffer_head1_neck0_data_pmu0", kUnitId = 10 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u11r, %u11s:2 = plasma.unit.Pmu() attributes {kName = "transpose_0_0_109.buffer_head1_neck0_data_pmu0", kUnitId = 11 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u12r, %u12s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_94_head1_neck0_data_pmu0", kUnitId = 12 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u13r, %u13s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_95_D_0_0", kUnitId = 13 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ScalarSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u14r, %u14s:8 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_96_D_0_0", kUnitId = 14 : i64}  {
      ^bb0(%arg5: !plasma.ScalarSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink, %arg11: !plasma.ScalarSink, %arg12: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink, !plasma.VectorSink)
      %u15r, %u15s:19 = plasma.unit.Pcu() attributes {kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss.tcompute0_tcompute0", kUnitId = 15 : i64}  {
      ^bb0(%arg5: !plasma.ControlSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.VectorSrc, %arg10: !plasma.VectorSrc, %arg11: !plasma.VectorSrc, %arg12: !plasma.ScalarSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ScalarSink, %arg20: !plasma.ScalarSink, %arg21: !plasma.ScalarSink, %arg22: !plasma.VectorSink, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ScalarSink, !plasma.ScalarSink, !plasma.VectorSink, !plasma.VectorSink)
      %u16r, %u16s:12 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss.logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0", kUnitId = 16 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc, %arg8: !plasma.ScalarSrc, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink, %arg11: !plasma.VectorSink, %arg12: !plasma.ControlSink, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ScalarSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u17r, %u17s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_97_D_0_0", kUnitId = 17 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSink)
      %u18r, %u18s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_7", kUnitId = 18 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u19r, %u19s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_1", kUnitId = 19 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u20r, %u20s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor", kUnitId = 20 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u21r, %u21s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_1", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 21 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u22r, %u22s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_2", kOnChipLayout = !plasma.TL<256x500xbf16:CVRM:64>, kUnitId = 22 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<784x500xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u23r, %u23s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_3", kOnChipLayout = !plasma.TL<500xi16:RVRM:64>, kUnitId = 23 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<500xi16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u24r, %u24s = plasma.unit.Vag(%arg3) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_1", kOnChipLayout = !plasma.TL<500x64xui8:RVRM>, kUnitId = 24 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u25r, %u25s = plasma.unit.Vag(%arg4) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_2", kOnChipLayout = !plasma.TL<16x64xui8:RVRM>, kUnitId = 25 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<500xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u0s#0, %u2s#3) [gbuf1a_0_0_93_head1_neck0_data_pmu0 >> gbuf1a_0_0_93_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u1s#0, %u2s#3) [gbuf1a_0_0_93_head1_neck0_data_pmu1 >> gbuf1a_0_0_93_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#0, %u0s#1) [gbuf1a_0_0_93_head1_neck0_rob_pmu >> gbuf1a_0_0_93_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u2s#1, %u0s#2) [gbuf1a_0_0_93_head1_neck0_rob_pmu >> gbuf1a_0_0_93_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u2s#0, %u1s#1) [gbuf1a_0_0_93_head1_neck0_rob_pmu >> gbuf1a_0_0_93_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u2s#1, %u1s#2) [gbuf1a_0_0_93_head1_neck0_rob_pmu >> gbuf1a_0_0_93_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u2s#2, %u3s#2) [gbuf1a_0_0_93_head1_neck0_rob_pmu >> logreg__lin_layer__linear_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u9s#3) [logreg__lin_layer__linear_gemm_0_0_0_PCU >> gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u3s#1) [logreg__lin_layer__linear_gemm_0_0_0_PMU >> logreg__lin_layer__linear_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u5s#1) [logreg__lin_layer__linear_gemm_0_0_0_PMU >> logreg__lin_layer__linear_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u8s#0, %u10s#1) [gbuf1a_0_0_92_head1_neck0_data_pmu0 >> transpose_0_0_112_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#0, %u8s#1) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> gbuf1a_0_0_92_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#1, %u3s#3) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#1, %u5s#3) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#1, %u6s#3) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_2_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#1, %u7s#3) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_3_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#2, %u3s#4) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#2, %u5s#4) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#2, %u6s#4) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_2_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#2, %u7s#4) [gbuf1a_0_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_gemm_0_0_3_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u10s#0, %u11s#1) [transpose_0_0_112_buffer_head1_neck0_data_pmu0 >> transpose_0_0_109_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#0, %u14s#7) [transpose_0_0_112_buffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u11s#0, %u12s#1) [transpose_0_0_109_buffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_94_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u12s#0, %u20s#2) [gbuf1a_0_0_94_head1_neck0_data_pmu0 >> s0_backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#1, %u14s#6) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_95_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u14s#0, %u15s#16) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u14s#1, %u15s#17) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#1, %u15s#18) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#0, %u15s#8) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#1, %u15s#9) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#2, %u15s#10) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#3, %u15s#11) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#4, %u16s#4) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#5, %u16s#5) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#6, %u16s#6) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#7, %u17s#1) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_97_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u15s#1, %u16s#7) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#2, %u16s#8) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#3, %u16s#9) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#3, %u16s#10) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#0, %u16s#11) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#3, %u13s#2) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_95_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#3, %u14s#2) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#1, %u14s#3) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#2, %u14s#4) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u15s#0, %u14s#5) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_96_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u16s#0, %u15s#12) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#1, %u15s#13) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#2, %u15s#14) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u16s#3, %u15s#15) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u17s#0, %u25s) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_97_D_0_0 >> LogicalAGCU_for_DRAM_output_s0_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u18s#1, %u4s#1) [s0_fronting_pmu_load_group_7 >> logreg__lin_layer__linear_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u19s#1, %u0s#3) [s0_fronting_pmu_load_group_1 >> gbuf1a_0_0_93_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u20s#1, %u12s#2) [s0_backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor >> gbuf1a_0_0_94_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u20s#0, %u24s) [s0_backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#0, %u18s#0) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> s0_fronting_pmu_load_group_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#1, %u18s#2) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> s0_fronting_pmu_load_group_7] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u22s#0, %u19s#0) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> s0_fronting_pmu_load_group_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u22s#1, %u19s#2) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> s0_fronting_pmu_load_group_1] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u23s#0, %u13s#0) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_95_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#1, %u13s#3) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_95_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_0_0_93()  {
          "plasma.BindUnit"(%u0r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u1r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u2r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__lin_layer__linear()  {
          "plasma.BindUnit"(%u3r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u4r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u5r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u6r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u7r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @logreg__lin_layer__linear_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_92()  {
          "plasma.BindUnit"(%u8r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u9r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_0_0_112()  {
          plasma.SuperNode @transpose_0_0_112.buffer()  {
            "plasma.BindUnit"(%u10r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_0_0_109()  {
          plasma.SuperNode @transpose_0_0_109.buffer()  {
            "plasma.BindUnit"(%u11r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_0_0_94()  {
          "plasma.BindUnit"(%u12r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_0_0_95()  {
          "plasma.BindUnit"(%u13r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_0_0_96()  {
          "plasma.BindUnit"(%u14r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__criterion__crossentropyloss()  {
          plasma.SuperNode @logreg__criterion__crossentropyloss_tbuf_tmp()  {
            "plasma.BindUnit"(%u16r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tcompute0()  {
            "plasma.BindUnit"(%u15r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @tcompute0() {}
          }
        }
        plasma.SuperNode @tbuf1a_0_0_97()  {
          "plasma.BindUnit"(%u17r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_7()  {
          "plasma.BindUnit"(%u18r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_1()  {
          "plasma.BindUnit"(%u19r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor()  {
          "plasma.BindUnit"(%u20r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_1:group_7"()  {
          "plasma.BindUnit"(%u21r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_2:image"()  {
          "plasma.BindUnit"(%u22r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_3:label"()  {
          "plasma.BindUnit"(%u23r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_1:logreg__lin_layer__linear__outputs__0"()  {
          "plasma.BindUnit"(%u24r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_2:logreg__criterion__crossentropyloss__outputs__0"()  {
          "plasma.BindUnit"(%u25r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s1() attributes {kControlBlockId = 1 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<500xi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<500xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<784x500xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<500xi16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<500xbf16:RVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<784x500xbf16:CVRM:64>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>):  // no predecessors
      %u26r, %u26s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_98_head1_neck0_data_pmu0", kUnitId = 26 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u27r, %u27s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_102_head1_neck0_data_pmu0", kUnitId = 27 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u28r, %u28s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_103_head1_neck0_data_pmu0", kUnitId = 28 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u29r, %u29s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output", kUnitId = 29 : i64}  {
      ^bb0(%arg6: !plasma.ControlSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u30r, %u30s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_104_head1_neck0_data_pmu0", kUnitId = 30 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u31r, %u31s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_104_head1_neck0_data_pmu1", kUnitId = 31 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u32r, %u32s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_104_head1_neck0_rob_pmu", kUnitId = 32 : i64}  {
      ^bb0(%arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSrc, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u33r, %u33s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_105_head1_neck0_data_pmu0", kUnitId = 33 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u34r, %u34s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_105_head1_neck0_data_pmu1", kUnitId = 34 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u35r, %u35s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_105_head1_neck0_rob_pmu", kUnitId = 35 : i64}  {
      ^bb0(%arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSrc, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSink)
      %u36r, %u36s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU", kUnitId = 36 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u37r, %u37s:2 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU", kUnitId = 37 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u38r, %u38s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU", kUnitId = 38 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u39r, %u39s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_2_PCU", kUnitId = 39 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u40r, %u40s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_3_PCU", kUnitId = 40 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u41r, %u41s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_106_head1_neck0_data_pmu0", kUnitId = 41 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u42r, %u42s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0", kUnitId = 42 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u43r, %u43s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_99_D_0_0", kUnitId = 43 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u44r, %u44s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_100_D_0_0", kUnitId = 44 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u45r, %u45s:5 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_101_D_0_0", kUnitId = 45 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink, %arg10: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u46r, %u46s:20 = plasma.unit.Pcu() attributes {kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss.tcompute0_tcompute0", kUnitId = 46 : i64}  {
      ^bb0(%arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.ControlSrc, %arg10: !plasma.VectorSrc, %arg11: !plasma.VectorSrc, %arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.VectorSink, %arg22: !plasma.VectorSink, %arg23: !plasma.VectorSink, %arg24: !plasma.VectorSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u47r, %u47s:16 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss.tbuf_tmp0_D_0_0", kUnitId = 47 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.VectorSrc, %arg9: !plasma.VectorSrc, %arg10: !plasma.VectorSink, %arg11: !plasma.VectorSink, %arg12: !plasma.VectorSink, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u48r, %u48s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_114_D_0_0", kUnitId = 48 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u49r, %u49s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_14", kUnitId = 49 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u50r, %u50s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_15", kUnitId = 50 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u51r, %u51s:3 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_16", kUnitId = 51 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u52r, %u52s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_1", kOnChipLayout = !plasma.TL<500x10xbf16:RVRM:64>, kUnitId = 52 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u53r, %u53s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_2", kOnChipLayout = !plasma.TL<500xi16:RVRM:64>, kUnitId = 53 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<500xi16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u54r, %u54s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_3", kOnChipLayout = !plasma.TL<500xbf16:RVRM:64>, kUnitId = 54 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<500xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u55r, %u55s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_4", kOnChipLayout = !plasma.TL<500x10xbf16:RVRM:64>, kUnitId = 55 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<500x10xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u56r, %u56s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_5", kOnChipLayout = !plasma.TL<256x500xbf16:CVRM:64>, kUnitId = 56 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<784x500xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u57r, %u57s = plasma.unit.Vag(%arg5) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_1", kOnChipLayout = !plasma.TL<784x64xui8:RVRM>, kUnitId = 57 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u26s#0, %u45s#4) [gbuf1a_1_0_98_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_101_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#1, %u49s#2) [gbuf1a_1_0_98_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_14] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u27s#0, %u29s#3) [gbuf1a_1_0_102_head1_neck0_data_pmu0 >> logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u28s#0, %u29s#4) [gbuf1a_1_0_103_head1_neck0_data_pmu0 >> logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u28s#1, %u50s#2) [gbuf1a_1_0_103_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_15] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u29s#0, %u29s#2) [logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output >> logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u29s#1, %u37s#1) [logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u30s#0, %u32s#3) [gbuf1a_1_0_104_head1_neck0_data_pmu0 >> gbuf1a_1_0_104_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u31s#0, %u32s#3) [gbuf1a_1_0_104_head1_neck0_data_pmu1 >> gbuf1a_1_0_104_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u30s#1) [gbuf1a_1_0_104_head1_neck0_rob_pmu >> gbuf1a_1_0_104_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u32s#1, %u30s#2) [gbuf1a_1_0_104_head1_neck0_rob_pmu >> gbuf1a_1_0_104_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u32s#0, %u31s#1) [gbuf1a_1_0_104_head1_neck0_rob_pmu >> gbuf1a_1_0_104_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u32s#1, %u31s#2) [gbuf1a_1_0_104_head1_neck0_rob_pmu >> gbuf1a_1_0_104_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u32s#2, %u33s#3) [gbuf1a_1_0_104_head1_neck0_rob_pmu >> gbuf1a_1_0_105_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#0, %u35s#3) [gbuf1a_1_0_105_head1_neck0_data_pmu0 >> gbuf1a_1_0_105_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u34s#0, %u35s#3) [gbuf1a_1_0_105_head1_neck0_data_pmu1 >> gbuf1a_1_0_105_head1_neck0_rob_pmu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u35s#0, %u33s#1) [gbuf1a_1_0_105_head1_neck0_rob_pmu >> gbuf1a_1_0_105_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u35s#1, %u33s#2) [gbuf1a_1_0_105_head1_neck0_rob_pmu >> gbuf1a_1_0_105_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u35s#0, %u34s#1) [gbuf1a_1_0_105_head1_neck0_rob_pmu >> gbuf1a_1_0_105_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u35s#1, %u34s#2) [gbuf1a_1_0_105_head1_neck0_rob_pmu >> gbuf1a_1_0_105_head1_neck0_data_pmu1] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u35s#2, %u36s#2) [gbuf1a_1_0_105_head1_neck0_rob_pmu >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u36s#0, %u42s#3) [logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU >> gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u37s#0, %u36s#1) [logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u37s#0, %u38s#1) [logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u41s#0, %u57s) [gbuf1a_1_0_106_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s1_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u42s#0, %u41s#1) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> gbuf1a_1_0_106_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u42s#1, %u36s#3) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#1, %u38s#3) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#1, %u39s#3) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_2_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#1, %u40s#3) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_3_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#2, %u36s#4) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#2, %u38s#4) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#2, %u39s#4) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_2_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u42s#2, %u40s#4) [gbuf1a_1_0_106_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_3_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u43s#1, %u46s#16) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_99_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u44s#1, %u46s#17) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_100_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u45s#0, %u46s#18) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_101_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u45s#0, %u46s#19) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_101_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#0, %u46s#8) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#1, %u46s#9) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#2, %u46s#10) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#3, %u46s#11) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#4, %u47s#4) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#5, %u47s#5) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#6, %u47s#6) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#7, %u48s#1) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_114_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#1, %u47s#7) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#0, %u47s#8) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#0, %u47s#9) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#2, %u47s#10) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#0, %u47s#11) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#2, %u47s#12) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#3, %u47s#13) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#3, %u47s#14) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#0, %u47s#15) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#3, %u43s#2) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_99_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#3, %u44s#2) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_100_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#1, %u45s#1) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_101_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#2, %u45s#2) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_101_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#0, %u45s#3) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_101_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u47s#0, %u46s#12) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#1, %u46s#13) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#2, %u46s#14) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#3, %u46s#15) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u48s#0, %u27s#1) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_114_D_0_0 >> gbuf1a_1_0_102_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u49s#1, %u26s#2) [s1_fronting_pmu_load_group_14 >> gbuf1a_1_0_98_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u50s#1, %u28s#2) [s1_fronting_pmu_load_group_15 >> gbuf1a_1_0_103_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u51s#1, %u30s#3) [s1_fronting_pmu_load_group_16 >> gbuf1a_1_0_104_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u52s#0, %u49s#0) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_14] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u52s#1, %u49s#3) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_14] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u53s#0, %u43s#0) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_99_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u53s#1, %u43s#3) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_99_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u54s#0, %u44s#0) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_100_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u54s#1, %u44s#3) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_100_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u55s#0, %u50s#0) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_15] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u55s#1, %u50s#3) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_15] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u56s#0, %u51s#0) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_16] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#1, %u51s#2) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_16] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_1_0_98()  {
          "plasma.BindUnit"(%u26r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_102()  {
          "plasma.BindUnit"(%u27r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_103()  {
          "plasma.BindUnit"(%u28r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__lin_layer__linear_t_output0_bwd_addn0()  {
          plasma.SuperNode @logreg__lin_layer__linear_t_output0_bwd_addn0ADD0()  {
            "plasma.BindUnit"(%u29r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_104()  {
          "plasma.BindUnit"(%u30r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u31r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u32r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_105()  {
          "plasma.BindUnit"(%u33r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u34r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u35r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__lin_layer__linear_bwd_weight_grad_a()  {
          "plasma.BindUnit"(%u36r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u37r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u38r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u39r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u40r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @logreg__lin_layer__linear_bwd_weight_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_106()  {
          "plasma.BindUnit"(%u41r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u42r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_99()  {
          "plasma.BindUnit"(%u43r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_100()  {
          "plasma.BindUnit"(%u44r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_101()  {
          "plasma.BindUnit"(%u45r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__criterion__crossentropyloss_bwd_loss()  {
          plasma.SuperNode @tbuf_tmp0()  {
            "plasma.BindUnit"(%u47r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tcompute0()  {
            "plasma.BindUnit"(%u46r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @tcompute0() {}
          }
        }
        plasma.SuperNode @tbuf1a_1_0_114()  {
          "plasma.BindUnit"(%u48r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_14()  {
          "plasma.BindUnit"(%u49r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_15()  {
          "plasma.BindUnit"(%u50r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_16()  {
          "plasma.BindUnit"(%u51r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_1:logreg__lin_layer__linear__outputs__0"()  {
          "plasma.BindUnit"(%u52r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_2:label"()  {
          "plasma.BindUnit"(%u53r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_3:logreg__criterion__crossentropyloss__outputs__0__grad"()  {
          "plasma.BindUnit"(%u54r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_4:logreg__lin_layer__linear__outputs__0__grad"()  {
          "plasma.BindUnit"(%u55r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_5:image"()  {
          "plasma.BindUnit"(%u56r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_1:logreg__lin_layer__weight__grad"()  {
          "plasma.BindUnit"(%u57r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s2() attributes {kControlBlockId = 2 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>, %arg4: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>):  // no predecessors
      %u58r, %u58s:8 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 58 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink, %arg11: !plasma.ControlSink, %arg12: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u59r, %u59s:5 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 59 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u60r, %u60s:7 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 60 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink, %arg10: !plasma.ControlSink, %arg11: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u61r, %u61s:5 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 61 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u62r, %u62s:2 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 62 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u63r, %u63s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_7", kUnitId = 63 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u64r, %u64s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_11", kUnitId = 64 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u65r, %u65s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_10", kUnitId = 65 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u66r, %u66s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor", kUnitId = 66 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u67r, %u67s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1", kUnitId = 67 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u68r, %u68s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_1", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 68 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u69r, %u69s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_2", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 69 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u70r, %u70s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_3", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 70 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u71r, %u71s = plasma.unit.Vag(%arg3) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_1", kOnChipLayout = !plasma.TL<784x64xui8:RVRM>, kUnitId = 71 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u72r, %u72s = plasma.unit.Vag(%arg4) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_2", kOnChipLayout = !plasma.TL<784x64xui8:RVRM>, kUnitId = 72 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u58s#0, %u59s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u58s#1, %u58s#6) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u58s#2, %u58s#7) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u59s#0, %u58s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u59s#1, %u60s#4) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u59s#2, %u67s#1) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#0, %u61s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u60s#1, %u60s#5) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u60s#2, %u60s#6) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u61s#0, %u58s#5) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u61s#1, %u60s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u61s#2, %u66s#1) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u62s#0, %u58s#4) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u63s#1, %u61s#4) [s2_fronting_pmu_load_group_7 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u64s#1, %u62s#1) [s2_fronting_pmu_load_group_11 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u65s#1, %u59s#4) [s2_fronting_pmu_load_group_10 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u66s#0, %u71s) [s2_backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u67s#0, %u72s) [s2_backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u68s#0, %u63s#0) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u68s#1, %u63s#2) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_7] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u69s#0, %u64s#0) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u69s#1, %u64s#2) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_11] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u70s#0, %u65s#0) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_10] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u70s#1, %u65s#2) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_10] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u58r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u59r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u60r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u61r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u62r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_7()  {
          "plasma.BindUnit"(%u63r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_11()  {
          "plasma.BindUnit"(%u64r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_10()  {
          "plasma.BindUnit"(%u65r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u66r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u67r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_1:group_7"()  {
          "plasma.BindUnit"(%u68r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_2:$OPT_dp_accum_group_543114451f3d1265bbcd7e0a69d4d88d7aba7c71"()  {
          "plasma.BindUnit"(%u69r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_3:group_10"()  {
          "plasma.BindUnit"(%u70r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_1:group_7"()  {
          "plasma.BindUnit"(%u71r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_2:group_10"()  {
          "plasma.BindUnit"(%u72r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s3() attributes {kControlBlockId = 3 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25152xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<25152xbf16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>):  // no predecessors
      %u73r, %u73s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_3_0_115_head1_neck0_data_pmu0", kUnitId = 73 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.ControlSink, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u74r, %u74s:5 = plasma.unit.Pmu() attributes {kName = "gbuf2a_3_0_116_head1_neck0_data_pmu0", kUnitId = 74 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.ControlSink, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u75r, %u75s:5 = plasma.unit.Pcu() attributes {kName = "add_3_0_86_output", kUnitId = 75 : i64}  {
      ^bb0(%arg3: !plasma.ControlSrc, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u76r, %u76s:4 = plasma.unit.Pcu() attributes {kName = "scale_3_0_87_scaling_pcu", kUnitId = 76 : i64}  {
      ^bb0(%arg3: !plasma.ControlSrc, %arg4: !plasma.VectorSrc, %arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink)
      %u77r, %u77s:4 = plasma.unit.Pmu() attributes {kName = "gbuf2a_3_0_107_head1_neck0_data_pmu0", kUnitId = 77 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.ControlSrc, %arg5: !plasma.ControlSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u78r, %u78s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s3_c0_1", kOnChipLayout = !plasma.TL<8192xbf16:RVRM:64>, kUnitId = 78 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u79r, %u79s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s3_c0_2", kOnChipLayout = !plasma.TL<8192xbf16:RVRM:64>, kUnitId = 79 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25152xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u80r, %u80s = plasma.unit.Vag(%arg2) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s3_c0_1", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 80 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<16384xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u73s#1, %u75s#3) [gbuf2a_3_0_115_head1_neck0_data_pmu0 >> add_3_0_86_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u74s#1, %u75s#4) [gbuf2a_3_0_116_head1_neck0_data_pmu0 >> add_3_0_86_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u75s#0, %u75s#2) [add_3_0_86_output >> add_3_0_86_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u75s#1, %u76s#3) [add_3_0_86_output >> scale_3_0_87_scaling_pcu] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u76s#0, %u76s#2) [scale_3_0_87_scaling_pcu >> scale_3_0_87_scaling_pcu] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u76s#1, %u77s#3) [scale_3_0_87_scaling_pcu >> gbuf2a_3_0_107_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u77s#1, %u73s#2) [gbuf2a_3_0_107_head1_neck0_data_pmu0 >> gbuf2a_3_0_115_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u77s#2, %u73s#3) [gbuf2a_3_0_107_head1_neck0_data_pmu0 >> gbuf2a_3_0_115_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u77s#1, %u74s#2) [gbuf2a_3_0_107_head1_neck0_data_pmu0 >> gbuf2a_3_0_116_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u77s#2, %u74s#3) [gbuf2a_3_0_107_head1_neck0_data_pmu0 >> gbuf2a_3_0_116_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u77s#0, %u80s) [gbuf2a_3_0_107_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s3_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u78s#0, %u73s#0) [LogicalAGCU_for_DRAM_input_s3_c0_1 >> gbuf2a_3_0_115_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u78s#1, %u73s#4) [LogicalAGCU_for_DRAM_input_s3_c0_1 >> gbuf2a_3_0_115_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u79s#0, %u74s#0) [LogicalAGCU_for_DRAM_input_s3_c0_2 >> gbuf2a_3_0_116_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u79s#1, %u74s#4) [LogicalAGCU_for_DRAM_input_s3_c0_2 >> gbuf2a_3_0_116_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf2a_3_0_115()  {
          "plasma.BindUnit"(%u73r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_3_0_116()  {
          "plasma.BindUnit"(%u74r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @add_3_0_86()  {
          "plasma.BindUnit"(%u75r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @scale_3_0_87()  {
          "plasma.BindUnit"(%u76r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf2a_3_0_107()  {
          "plasma.BindUnit"(%u77r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s3_c0_1:dummy_dp_accum_region_0"()  {
          "plasma.BindUnit"(%u78r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s3_c0_2:accum_dummy_0_reduce_buf"()  {
          "plasma.BindUnit"(%u79r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s3_c0_1:dummy_dp_accum_region_0"()  {
          "plasma.BindUnit"(%u80r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
}
