module @sections_0_2 attributes {plasma.kBitfileType = 7 : i64, plasma.kVerbose = false}  {
  plasma.Section @s0() attributes {kControlBlockId = 0 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>, %arg4: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>):  // no predecessors
      %u0r, %u0s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_79_head1_neck0_data_pmu0", kUnitId = 0 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u1r, %u1s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear WBuf 0_PCU", kUnitId = 1 : i64}  {
      ^bb0(%arg5: !plasma.ControlSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u2r, %u2s:2 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__linear WBuf 0_PMU", kUnitId = 2 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u3r, %u3s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_78_head1_neck0_data_pmu0", kUnitId = 3 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u4r, %u4s:2 = plasma.unit.Pmu() attributes {kName = "transpose_0_0_97.buffer_head1_neck0_data_pmu0", kUnitId = 4 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u5r, %u5s:2 = plasma.unit.Pmu() attributes {kName = "transpose_0_0_94.buffer_head1_neck0_data_pmu0", kUnitId = 5 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u6r, %u6s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_0_0_80_head1_neck0_data_pmu0", kUnitId = 6 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink)
      %u7r, %u7s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_81_D_0_0", kUnitId = 7 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ScalarSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u8r, %u8s:8 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_82_D_0_0", kUnitId = 8 : i64}  {
      ^bb0(%arg5: !plasma.ScalarSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink, %arg11: !plasma.ScalarSink, %arg12: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink, !plasma.VectorSink)
      %u9r, %u9s:19 = plasma.unit.Pcu() attributes {kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss.tcompute0_tcompute0", kUnitId = 9 : i64}  {
      ^bb0(%arg5: !plasma.ControlSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.VectorSrc, %arg10: !plasma.VectorSrc, %arg11: !plasma.VectorSrc, %arg12: !plasma.ScalarSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.VectorSink, %arg18: !plasma.VectorSink, %arg19: !plasma.ScalarSink, %arg20: !plasma.ScalarSink, %arg21: !plasma.ScalarSink, %arg22: !plasma.VectorSink, %arg23: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ScalarSink, !plasma.ScalarSink, !plasma.ScalarSink, !plasma.VectorSink, !plasma.VectorSink)
      %u10r, %u10s:12 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss.logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0", kUnitId = 10 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc, %arg8: !plasma.ScalarSrc, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink, %arg11: !plasma.VectorSink, %arg12: !plasma.ControlSink, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ScalarSrc, !plasma.ScalarSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u11r, %u11s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_83_D_0_0", kUnitId = 11 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSink)
      %u12r, %u12s:3 = plasma.unit.Pmu() attributes {kName = "s0.fronting_pmu_load_group_4", kUnitId = 12 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u13r, %u13s:3 = plasma.unit.Pmu() attributes {kName = "s0.backing_pmu_group_9_logreg__lin_layer__linear_t_output0_tensor", kUnitId = 13 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u14r, %u14s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_1", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 14 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u15r, %u15s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_2", kOnChipLayout = !plasma.TL<784x1xbf16:CVRM:64>, kUnitId = 15 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u16r, %u16s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s0_c0_3", kOnChipLayout = !plasma.TL<1xi16:RVRM:64>, kUnitId = 16 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u17r, %u17s = plasma.unit.Vag(%arg3) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_1", kOnChipLayout = !plasma.TL<1x64xui8:RVRM>, kUnitId = 17 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u18r, %u18s = plasma.unit.Vag(%arg4) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s0_c0_2", kOnChipLayout = !plasma.TL<1x64xui8:RVRM>, kUnitId = 18 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u0s#1, %u1s#4) [gbuf1a_0_0_79_head1_neck0_data_pmu0 >> logreg__lin_layer__linear_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u1s#0, %u1s#2) [logreg__lin_layer__linear_WBuf_0_PCU >> logreg__lin_layer__linear_WBuf_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u1s#1, %u3s#1) [logreg__lin_layer__linear_WBuf_0_PCU >> gbuf1a_0_0_78_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u2s#0, %u1s#3) [logreg__lin_layer__linear_WBuf_0_PMU >> logreg__lin_layer__linear_WBuf_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u3s#0, %u4s#1) [gbuf1a_0_0_78_head1_neck0_data_pmu0 >> transpose_0_0_97_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u5s#1) [transpose_0_0_97_buffer_head1_neck0_data_pmu0 >> transpose_0_0_94_buffer_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u4s#0, %u8s#7) [transpose_0_0_97_buffer_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u5s#0, %u6s#1) [transpose_0_0_94_buffer_head1_neck0_data_pmu0 >> gbuf1a_0_0_80_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u6s#0, %u13s#2) [gbuf1a_0_0_80_head1_neck0_data_pmu0 >> s0_backing_pmu_group_9_logreg__lin_layer__linear_t_output0_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u7s#1, %u8s#6) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_81_D_0_0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u8s#0, %u9s#16) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u8s#1, %u9s#17) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u8s#1, %u9s#18) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#0, %u9s#8) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#1, %u9s#9) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#2, %u9s#10) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#3, %u9s#11) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#4, %u10s#4) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#5, %u10s#5) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#6, %u10s#6) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u9s#7, %u11s#1) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_83_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u9s#1, %u10s#7) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#2, %u10s#8) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#3, %u10s#9) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#3, %u10s#10) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#0, %u10s#11) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#3, %u7s#2) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_81_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#3, %u8s#2) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#1, %u8s#3) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#2, %u8s#4) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u9s#0, %u8s#5) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_82_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u10s#0, %u9s#12) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#1, %u9s#13) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u10s#2, %u9s#14) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u10s#3, %u9s#15) [LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_D_0_0 >> LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tcompute0_tcompute0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u11s#0, %u18s) [LogregTorchSamba_partition_0_0__tbuf1a_0_0_83_D_0_0 >> LogicalAGCU_for_DRAM_output_s0_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u12s#1, %u2s#1) [s0_fronting_pmu_load_group_4 >> logreg__lin_layer__linear_WBuf_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u13s#1, %u6s#2) [s0_backing_pmu_group_9_logreg__lin_layer__linear_t_output0_tensor >> gbuf1a_0_0_80_head1_neck0_data_pmu0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u13s#0, %u17s) [s0_backing_pmu_group_9_logreg__lin_layer__linear_t_output0_tensor >> LogicalAGCU_for_DRAM_output_s0_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#0, %u12s#0) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> s0_fronting_pmu_load_group_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u14s#1, %u12s#2) [LogicalAGCU_for_DRAM_input_s0_c0_1 >> s0_fronting_pmu_load_group_4] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u15s#0, %u0s#0) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> gbuf1a_0_0_79_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u15s#1, %u0s#2) [LogicalAGCU_for_DRAM_input_s0_c0_2 >> gbuf1a_0_0_79_head1_neck0_data_pmu0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u16s#0, %u7s#0) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_81_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u16s#1, %u7s#3) [LogicalAGCU_for_DRAM_input_s0_c0_3 >> LogregTorchSamba_partition_0_0__tbuf1a_0_0_81_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_0_0_79()  {
          "plasma.BindUnit"(%u0r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__lin_layer__linear()  {
          "plasma.BindUnit"(%u1r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u2r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @logreg__lin_layer__linearW_Buf() {}
          plasma.SuperNode @ParGemm()  {
            plasma.SuperNode @gemm_node() {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_78()  {
          "plasma.BindUnit"(%u3r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_0_0_97()  {
          plasma.SuperNode @transpose_0_0_97.buffer()  {
            "plasma.BindUnit"(%u4r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @transpose_0_0_94()  {
          plasma.SuperNode @transpose_0_0_94.buffer()  {
            "plasma.BindUnit"(%u5r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_0_0_80()  {
          "plasma.BindUnit"(%u6r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_0_0_81()  {
          "plasma.BindUnit"(%u7r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_0_0_82()  {
          "plasma.BindUnit"(%u8r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__criterion__crossentropyloss()  {
          plasma.SuperNode @logreg__criterion__crossentropyloss_tbuf_tmp()  {
            "plasma.BindUnit"(%u10r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tcompute0()  {
            "plasma.BindUnit"(%u9r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @tcompute0() {}
          }
        }
        plasma.SuperNode @tbuf1a_0_0_83()  {
          "plasma.BindUnit"(%u11r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_4()  {
          "plasma.BindUnit"(%u12r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.backing_pmu_group_9_logreg__lin_layer__linear_t_output0_tensor()  {
          "plasma.BindUnit"(%u13r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_1:group_4"()  {
          "plasma.BindUnit"(%u14r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_2:image"()  {
          "plasma.BindUnit"(%u15r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s0_c0_3:label"()  {
          "plasma.BindUnit"(%u16r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_1:logreg__lin_layer__linear__outputs__0"()  {
          "plasma.BindUnit"(%u17r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s0_c0_2:logreg__criterion__crossentropyloss__outputs__0"()  {
          "plasma.BindUnit"(%u18r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s1() attributes {kControlBlockId = 1 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, %arg5: !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>):  // no predecessors
      %u19r, %u19s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_84_head1_neck0_data_pmu0", kUnitId = 19 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u20r, %u20s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_88_head1_neck0_data_pmu0", kUnitId = 20 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u21r, %u21s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_89_head1_neck0_data_pmu0", kUnitId = 21 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u22r, %u22s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output", kUnitId = 22 : i64}  {
      ^bb0(%arg6: !plasma.ControlSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink)
      %u23r, %u23s:3 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_90_head1_neck0_data_pmu0", kUnitId = 23 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u24r, %u24s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_91_head1_neck0_data_pmu0", kUnitId = 24 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u25r, %u25s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU", kUnitId = 25 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u26r, %u26s:2 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU", kUnitId = 26 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u27r, %u27s:5 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU", kUnitId = 27 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u28r, %u28s:2 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_92_head1_neck0_data_pmu0", kUnitId = 28 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u29r, %u29s:4 = plasma.unit.Pmu() attributes {kName = "gbuf1a_1_0_92_head1_neck0_write_fronting_pmu0", kUnitId = 29 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink)
      %u30r, %u30s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_85_D_0_0", kUnitId = 30 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u31r, %u31s:4 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_86_D_0_0", kUnitId = 31 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u32r, %u32s:5 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_87_D_0_0", kUnitId = 32 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink, %arg10: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink)
      %u33r, %u33s:20 = plasma.unit.Pcu() attributes {kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss.tcompute0_tcompute0", kUnitId = 33 : i64}  {
      ^bb0(%arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.ControlSrc, %arg10: !plasma.VectorSrc, %arg11: !plasma.VectorSrc, %arg12: !plasma.VectorSrc, %arg13: !plasma.VectorSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.VectorSink, %arg22: !plasma.VectorSink, %arg23: !plasma.VectorSink, %arg24: !plasma.VectorSink, %arg25: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink)
      %u34r, %u34s:16 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss.tbuf_tmp0_D_0_0", kUnitId = 34 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.VectorSrc, %arg9: !plasma.VectorSrc, %arg10: !plasma.VectorSink, %arg11: !plasma.VectorSink, %arg12: !plasma.VectorSink, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.ControlSink, %arg16: !plasma.ControlSink, %arg17: !plasma.ControlSink, %arg18: !plasma.ControlSink, %arg19: !plasma.ControlSink, %arg20: !plasma.ControlSink, %arg21: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u35r, %u35s:2 = plasma.unit.Pmu() attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_99_D_0_0", kUnitId = 35 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u36r, %u36s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_11", kUnitId = 36 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u37r, %u37s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_12", kUnitId = 37 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u38r, %u38s:4 = plasma.unit.Pmu() attributes {kName = "s1.fronting_pmu_load_group_13", kUnitId = 38 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u39r, %u39s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_1", kOnChipLayout = !plasma.TL<1x10xbf16:RVRM:64>, kUnitId = 39 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u40r, %u40s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_2", kOnChipLayout = !plasma.TL<1xi16:RVRM:64>, kUnitId = 40 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xi16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u41r, %u41s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_3", kOnChipLayout = !plasma.TL<1xbf16:RVRM:64>, kUnitId = 41 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u42r, %u42s:2 = plasma.unit.Vag(%arg3) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_4", kOnChipLayout = !plasma.TL<1x10xbf16:RVRM:64>, kUnitId = 42 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u43r, %u43s:2 = plasma.unit.Vag(%arg4) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s1_c0_5", kOnChipLayout = !plasma.TL<784x1xbf16:CVRM:64>, kUnitId = 43 : i64}  {
      ^bb0(%arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u44r, %u44s = plasma.unit.Vag(%arg5) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s1_c0_1", kOnChipLayout = !plasma.TL<784x64xui8:RVRM>, kUnitId = 44 : i64}  {
      ^bb0(%arg6: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u19s#0, %u32s#4) [gbuf1a_1_0_84_head1_neck0_data_pmu0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_87_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u19s#1, %u36s#2) [gbuf1a_1_0_84_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_11] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u20s#0, %u22s#3) [gbuf1a_1_0_88_head1_neck0_data_pmu0 >> logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#0, %u22s#4) [gbuf1a_1_0_89_head1_neck0_data_pmu0 >> logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u21s#1, %u37s#2) [gbuf1a_1_0_89_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_12] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u22s#0, %u22s#2) [logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output >> logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u22s#1, %u26s#1) [logreg__lin_layer__linear_t_output0_bwd_addn0ADD0_output >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#0, %u24s#1) [gbuf1a_1_0_90_head1_neck0_data_pmu0 >> gbuf1a_1_0_91_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u23s#1, %u38s#2) [gbuf1a_1_0_90_head1_neck0_data_pmu0 >> s1_fronting_pmu_load_group_13] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u24s#0, %u25s#2) [gbuf1a_1_0_91_head1_neck0_data_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u25s#0, %u29s#3) [logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU >> gbuf1a_1_0_92_head1_neck0_write_fronting_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#0, %u25s#1) [logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u26s#0, %u27s#1) [logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u28s#0, %u44s) [gbuf1a_1_0_92_head1_neck0_data_pmu0 >> LogicalAGCU_for_DRAM_output_s1_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u29s#0, %u28s#1) [gbuf1a_1_0_92_head1_neck0_write_fronting_pmu0 >> gbuf1a_1_0_92_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u29s#1, %u25s#3) [gbuf1a_1_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u29s#1, %u27s#3) [gbuf1a_1_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u29s#2, %u25s#4) [gbuf1a_1_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u29s#2, %u27s#4) [gbuf1a_1_0_92_head1_neck0_write_fronting_pmu0 >> logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u30s#1, %u33s#16) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_85_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u31s#1, %u33s#17) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_86_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u33s#18) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_87_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u32s#0, %u33s#19) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_87_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#0, %u33s#8) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#1, %u33s#9) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#2, %u33s#10) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#3, %u33s#11) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#4, %u34s#4) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#5, %u34s#5) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#6, %u34s#6) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#7, %u35s#1) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_99_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u33s#1, %u34s#7) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#0, %u34s#8) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#0, %u34s#9) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#2, %u34s#10) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#0, %u34s#11) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#2, %u34s#12) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#3, %u34s#13) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#3, %u34s#14) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#0, %u34s#15) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#3, %u30s#2) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_85_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#3, %u31s#2) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_86_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#1, %u32s#1) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_87_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#2, %u32s#2) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_87_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u33s#0, %u32s#3) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_87_D_0_0] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u34s#0, %u33s#12) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u34s#1, %u33s#13) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u34s#2, %u33s#14) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u34s#3, %u33s#15) [LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_D_0_0 >> LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tcompute0_tcompute0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u35s#0, %u20s#1) [LogregTorchSamba_partition_1_0__tbuf1a_1_0_99_D_0_0 >> gbuf1a_1_0_88_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u36s#1, %u19s#2) [s1_fronting_pmu_load_group_11 >> gbuf1a_1_0_84_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u37s#1, %u21s#2) [s1_fronting_pmu_load_group_12 >> gbuf1a_1_0_89_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u38s#1, %u23s#2) [s1_fronting_pmu_load_group_13 >> gbuf1a_1_0_90_head1_neck0_data_pmu0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u39s#0, %u36s#0) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_11] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u39s#1, %u36s#3) [LogicalAGCU_for_DRAM_input_s1_c0_1 >> s1_fronting_pmu_load_group_11] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u40s#0, %u30s#0) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_85_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u40s#1, %u30s#3) [LogicalAGCU_for_DRAM_input_s1_c0_2 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_85_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u41s#0, %u31s#0) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_86_D_0_0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u41s#1, %u31s#3) [LogicalAGCU_for_DRAM_input_s1_c0_3 >> LogregTorchSamba_partition_1_0__tbuf1a_1_0_86_D_0_0] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u42s#0, %u37s#0) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_12] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u42s#1, %u37s#3) [LogicalAGCU_for_DRAM_input_s1_c0_4 >> s1_fronting_pmu_load_group_12] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u43s#0, %u38s#0) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_13] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u43s#1, %u38s#3) [LogicalAGCU_for_DRAM_input_s1_c0_5 >> s1_fronting_pmu_load_group_13] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @gbuf1a_1_0_84()  {
          "plasma.BindUnit"(%u19r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_88()  {
          "plasma.BindUnit"(%u20r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_89()  {
          "plasma.BindUnit"(%u21r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__lin_layer__linear_t_output0_bwd_addn0()  {
          plasma.SuperNode @logreg__lin_layer__linear_t_output0_bwd_addn0ADD0()  {
            "plasma.BindUnit"(%u22r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_1_0_90()  {
          "plasma.BindUnit"(%u23r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_91()  {
          "plasma.BindUnit"(%u24r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__lin_layer__linear_bwd_weight_grad_a()  {
          "plasma.BindUnit"(%u25r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u26r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u27r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf() {}
          plasma.SuperNode @logreg__lin_layer__linear_bwd_weight_grad_a_rowcolpargemm_0()  {
            plasma.SuperNode @gemm() {}
            plasma.SuperNode @gemm() {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_92()  {
          "plasma.BindUnit"(%u28r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u29r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_85()  {
          "plasma.BindUnit"(%u30r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_86()  {
          "plasma.BindUnit"(%u31r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_87()  {
          "plasma.BindUnit"(%u32r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__criterion__crossentropyloss_bwd_loss()  {
          plasma.SuperNode @tbuf_tmp0()  {
            "plasma.BindUnit"(%u34r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tcompute0()  {
            "plasma.BindUnit"(%u33r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @tcompute0() {}
          }
        }
        plasma.SuperNode @tbuf1a_1_0_99()  {
          "plasma.BindUnit"(%u35r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_11()  {
          "plasma.BindUnit"(%u36r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_12()  {
          "plasma.BindUnit"(%u37r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_13()  {
          "plasma.BindUnit"(%u38r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_1:logreg__lin_layer__linear__outputs__0"()  {
          "plasma.BindUnit"(%u39r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_2:label"()  {
          "plasma.BindUnit"(%u40r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_3:logreg__criterion__crossentropyloss__outputs__0__grad"()  {
          "plasma.BindUnit"(%u41r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_4:logreg__lin_layer__linear__outputs__0__grad"()  {
          "plasma.BindUnit"(%u42r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s1_c0_5:image"()  {
          "plasma.BindUnit"(%u43r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s1_c0_1:logreg__lin_layer__weight__grad"()  {
          "plasma.BindUnit"(%u44r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
  plasma.Section @s2() attributes {kControlBlockId = 2 : i64}  {
    plasma.Chip @c0() attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>, %arg4: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>):  // no predecessors
      %u45r, %u45s:8 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 45 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink, %arg11: !plasma.ControlSink, %arg12: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u46r, %u46s:5 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 46 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u47r, %u47s:7 = plasma.unit.Pcu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 47 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink, %arg10: !plasma.ControlSink, %arg11: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.ControlSink)
      %u48r, %u48s:5 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 48 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSrc, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSink)
      %u49r, %u49s:2 = plasma.unit.Pmu() attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 49 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u50r, %u50s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_4", kUnitId = 50 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u51r, %u51s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_8", kUnitId = 51 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u52r, %u52s:3 = plasma.unit.Pmu() attributes {kName = "s2.fronting_pmu_load_group_7", kUnitId = 52 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ScalarSink)
      %u53r, %u53s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_4_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor", kUnitId = 53 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u54r, %u54s:2 = plasma.unit.Pmu() attributes {kName = "s2.backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1", kUnitId = 54 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u55r, %u55s:2 = plasma.unit.Vag(%arg0) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_1", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 55 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u56r, %u56s:2 = plasma.unit.Vag(%arg1) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_2", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 56 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u57r, %u57s:2 = plasma.unit.Vag(%arg2) attributes {kIsLoad = true, kName = "LogicalAGCU for DRAM input_s2_c0_3", kOnChipLayout = !plasma.TL<256x64xui8:RVRM>, kUnitId = 57 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.ScalarSrc):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.ScalarSrc)
      %u58r, %u58s = plasma.unit.Vag(%arg3) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_1", kOnChipLayout = !plasma.TL<784x64xui8:RVRM>, kUnitId = 58 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      %u59r, %u59s = plasma.unit.Vag(%arg4) attributes {kIsLoad = false, kName = "LogicalAGCU for DRAM output_s2_c0_2", kOnChipLayout = !plasma.TL<784x64xui8:RVRM>, kUnitId = 59 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink):  // no predecessors
      } : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,W>) -> (!plasma.Unitref, !plasma.VectorSink)
      plasma.Connection(%u45s#0, %u46s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u45s#1, %u45s#6) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u45s#2, %u45s#7) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u46s#0, %u45s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#1, %u47s#4) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u46s#2, %u54s#1) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU >> s2_backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#0, %u48s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u47s#1, %u47s#5) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u47s#2, %u47s#6) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      plasma.Connection(%u48s#0, %u45s#5) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u48s#1, %u47s#3) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u48s#2, %u53s#1) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU >> s2_backing_pmu_group_4_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u49s#0, %u45s#4) [logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_dw0 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u50s#1, %u48s#4) [s2_fronting_pmu_load_group_4 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u51s#1, %u49s#1) [s2_fronting_pmu_load_group_8 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_dw0] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u52s#1, %u46s#4) [s2_fronting_pmu_load_group_7 >> logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u53s#0, %u58s) [s2_backing_pmu_group_4_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor >> LogicalAGCU_for_DRAM_output_s2_c0_1] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u54s#0, %u59s) [s2_backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1 >> LogicalAGCU_for_DRAM_output_s2_c0_2] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u55s#0, %u50s#0) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_4] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u55s#1, %u50s#2) [LogicalAGCU_for_DRAM_input_s2_c0_1 >> s2_fronting_pmu_load_group_4] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u56s#0, %u51s#0) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_8] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u56s#1, %u51s#2) [LogicalAGCU_for_DRAM_input_s2_c0_2 >> s2_fronting_pmu_load_group_8] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.Connection(%u57s#0, %u52s#0) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_7] : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.Connection(%u57s#1, %u52s#2) [LogicalAGCU_for_DRAM_input_s2_c0_3 >> s2_fronting_pmu_load_group_7] : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      plasma.view.TemplateHierarchy()  {
        plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt()  {
          "plasma.BindUnit"(%u45r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u46r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u47r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u48r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u49r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_W_Buf() {}
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_DW_Buf() {}
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_MW_Buf() {}
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_4()  {
          "plasma.BindUnit"(%u50r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_8()  {
          "plasma.BindUnit"(%u51r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_7()  {
          "plasma.BindUnit"(%u52r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_4_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor()  {
          "plasma.BindUnit"(%u53r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1()  {
          "plasma.BindUnit"(%u54r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_1:group_4"()  {
          "plasma.BindUnit"(%u55r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_2:group_8"()  {
          "plasma.BindUnit"(%u56r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramInputNode:s2_c0_3:group_7"()  {
          "plasma.BindUnit"(%u57r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_1:group_4"()  {
          "plasma.BindUnit"(%u58r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @"DramOutputNode:s2_c0_2:group_7"()  {
          "plasma.BindUnit"(%u59r) : (!plasma.Unitref) -> ()
        }
      }
    }
  }
}
